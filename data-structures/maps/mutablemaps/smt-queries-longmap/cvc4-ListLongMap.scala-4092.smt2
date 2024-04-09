; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56062 () Bool)

(assert start!56062)

(declare-fun b!617114 () Bool)

(declare-fun res!397651 () Bool)

(declare-fun e!353873 () Bool)

(assert (=> b!617114 (=> (not res!397651) (not e!353873))))

(declare-datatypes ((array!37495 0))(
  ( (array!37496 (arr!17990 (Array (_ BitVec 32) (_ BitVec 64))) (size!18354 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37495)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617114 (= res!397651 (validKeyInArray!0 (select (arr!17990 a!2986) j!136)))))

(declare-fun b!617115 () Bool)

(declare-datatypes ((Unit!20190 0))(
  ( (Unit!20191) )
))
(declare-fun e!353881 () Unit!20190)

(declare-fun Unit!20192 () Unit!20190)

(assert (=> b!617115 (= e!353881 Unit!20192)))

(declare-fun res!397654 () Bool)

(assert (=> start!56062 (=> (not res!397654) (not e!353873))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56062 (= res!397654 (validMask!0 mask!3053))))

(assert (=> start!56062 e!353873))

(assert (=> start!56062 true))

(declare-fun array_inv!13764 (array!37495) Bool)

(assert (=> start!56062 (array_inv!13764 a!2986)))

(declare-fun b!617116 () Bool)

(declare-fun e!353877 () Unit!20190)

(declare-fun Unit!20193 () Unit!20190)

(assert (=> b!617116 (= e!353877 Unit!20193)))

(declare-fun b!617117 () Bool)

(declare-fun e!353870 () Unit!20190)

(declare-fun Unit!20194 () Unit!20190)

(assert (=> b!617117 (= e!353870 Unit!20194)))

(declare-fun b!617118 () Bool)

(declare-fun e!353878 () Bool)

(assert (=> b!617118 (= e!353873 e!353878)))

(declare-fun res!397655 () Bool)

(assert (=> b!617118 (=> (not res!397655) (not e!353878))))

(declare-datatypes ((SeekEntryResult!6437 0))(
  ( (MissingZero!6437 (index!28031 (_ BitVec 32))) (Found!6437 (index!28032 (_ BitVec 32))) (Intermediate!6437 (undefined!7249 Bool) (index!28033 (_ BitVec 32)) (x!56846 (_ BitVec 32))) (Undefined!6437) (MissingVacant!6437 (index!28034 (_ BitVec 32))) )
))
(declare-fun lt!284178 () SeekEntryResult!6437)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617118 (= res!397655 (or (= lt!284178 (MissingZero!6437 i!1108)) (= lt!284178 (MissingVacant!6437 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37495 (_ BitVec 32)) SeekEntryResult!6437)

(assert (=> b!617118 (= lt!284178 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617119 () Bool)

(declare-fun res!397653 () Bool)

(assert (=> b!617119 (=> (not res!397653) (not e!353878))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!617119 (= res!397653 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17990 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617120 () Bool)

(declare-fun e!353879 () Unit!20190)

(declare-fun Unit!20195 () Unit!20190)

(assert (=> b!617120 (= e!353879 Unit!20195)))

(declare-fun b!617121 () Bool)

(declare-fun e!353875 () Bool)

(declare-fun e!353876 () Bool)

(assert (=> b!617121 (= e!353875 e!353876)))

(declare-fun res!397662 () Bool)

(assert (=> b!617121 (=> (not res!397662) (not e!353876))))

(declare-fun lt!284187 () SeekEntryResult!6437)

(assert (=> b!617121 (= res!397662 (and (= lt!284187 (Found!6437 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17990 a!2986) index!984) (select (arr!17990 a!2986) j!136))) (not (= (select (arr!17990 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37495 (_ BitVec 32)) SeekEntryResult!6437)

(assert (=> b!617121 (= lt!284187 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17990 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617122 () Bool)

(declare-fun res!397652 () Bool)

(assert (=> b!617122 (=> (not res!397652) (not e!353878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37495 (_ BitVec 32)) Bool)

(assert (=> b!617122 (= res!397652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617123 () Bool)

(declare-fun e!353867 () Bool)

(assert (=> b!617123 (= e!353876 (not e!353867))))

(declare-fun res!397659 () Bool)

(assert (=> b!617123 (=> res!397659 e!353867)))

(declare-fun lt!284196 () SeekEntryResult!6437)

(assert (=> b!617123 (= res!397659 (not (= lt!284196 (MissingVacant!6437 vacantSpotIndex!68))))))

(declare-fun lt!284190 () Unit!20190)

(assert (=> b!617123 (= lt!284190 e!353877)))

(declare-fun c!70102 () Bool)

(assert (=> b!617123 (= c!70102 (= lt!284196 (Found!6437 index!984)))))

(declare-fun lt!284180 () Unit!20190)

(assert (=> b!617123 (= lt!284180 e!353881)))

(declare-fun c!70100 () Bool)

(assert (=> b!617123 (= c!70100 (= lt!284196 Undefined!6437))))

(declare-fun lt!284182 () (_ BitVec 64))

(declare-fun lt!284194 () array!37495)

(assert (=> b!617123 (= lt!284196 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284182 lt!284194 mask!3053))))

(declare-fun e!353872 () Bool)

(assert (=> b!617123 e!353872))

(declare-fun res!397661 () Bool)

(assert (=> b!617123 (=> (not res!397661) (not e!353872))))

(declare-fun lt!284184 () (_ BitVec 32))

(declare-fun lt!284189 () SeekEntryResult!6437)

(assert (=> b!617123 (= res!397661 (= lt!284189 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284184 vacantSpotIndex!68 lt!284182 lt!284194 mask!3053)))))

(assert (=> b!617123 (= lt!284189 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284184 vacantSpotIndex!68 (select (arr!17990 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617123 (= lt!284182 (select (store (arr!17990 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284195 () Unit!20190)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37495 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20190)

(assert (=> b!617123 (= lt!284195 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284184 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617123 (= lt!284184 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617124 () Bool)

(declare-fun res!397663 () Bool)

(assert (=> b!617124 (=> (not res!397663) (not e!353873))))

(assert (=> b!617124 (= res!397663 (validKeyInArray!0 k!1786))))

(declare-fun b!617125 () Bool)

(declare-fun res!397649 () Bool)

(assert (=> b!617125 (= res!397649 (bvsge j!136 index!984))))

(declare-fun e!353869 () Bool)

(assert (=> b!617125 (=> res!397649 e!353869)))

(declare-fun e!353868 () Bool)

(assert (=> b!617125 (= e!353868 e!353869)))

(declare-fun b!617126 () Bool)

(declare-fun Unit!20196 () Unit!20190)

(assert (=> b!617126 (= e!353881 Unit!20196)))

(assert (=> b!617126 false))

(declare-fun b!617127 () Bool)

(assert (=> b!617127 false))

(declare-fun lt!284193 () Unit!20190)

(declare-datatypes ((List!12084 0))(
  ( (Nil!12081) (Cons!12080 (h!13125 (_ BitVec 64)) (t!18320 List!12084)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37495 (_ BitVec 64) (_ BitVec 32) List!12084) Unit!20190)

(assert (=> b!617127 (= lt!284193 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284194 (select (arr!17990 a!2986) j!136) index!984 Nil!12081))))

(declare-fun arrayNoDuplicates!0 (array!37495 (_ BitVec 32) List!12084) Bool)

(assert (=> b!617127 (arrayNoDuplicates!0 lt!284194 index!984 Nil!12081)))

(declare-fun lt!284183 () Unit!20190)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37495 (_ BitVec 32) (_ BitVec 32)) Unit!20190)

(assert (=> b!617127 (= lt!284183 (lemmaNoDuplicateFromThenFromBigger!0 lt!284194 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617127 (arrayNoDuplicates!0 lt!284194 #b00000000000000000000000000000000 Nil!12081)))

(declare-fun lt!284177 () Unit!20190)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37495 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12084) Unit!20190)

(assert (=> b!617127 (= lt!284177 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12081))))

(declare-fun arrayContainsKey!0 (array!37495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617127 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284185 () Unit!20190)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37495 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20190)

(assert (=> b!617127 (= lt!284185 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284194 (select (arr!17990 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353874 () Bool)

(assert (=> b!617127 e!353874))

(declare-fun res!397660 () Bool)

(assert (=> b!617127 (=> (not res!397660) (not e!353874))))

(assert (=> b!617127 (= res!397660 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) j!136))))

(declare-fun Unit!20197 () Unit!20190)

(assert (=> b!617127 (= e!353879 Unit!20197)))

(declare-fun b!617128 () Bool)

(assert (=> b!617128 (= e!353878 e!353875)))

(declare-fun res!397664 () Bool)

(assert (=> b!617128 (=> (not res!397664) (not e!353875))))

(assert (=> b!617128 (= res!397664 (= (select (store (arr!17990 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617128 (= lt!284194 (array!37496 (store (arr!17990 a!2986) i!1108 k!1786) (size!18354 a!2986)))))

(declare-fun b!617129 () Bool)

(declare-fun e!353871 () Bool)

(assert (=> b!617129 (= e!353871 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) index!984))))

(declare-fun b!617130 () Bool)

(assert (=> b!617130 (= e!353867 true)))

(assert (=> b!617130 (= (select (store (arr!17990 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617131 () Bool)

(declare-fun res!397656 () Bool)

(assert (=> b!617131 (=> (not res!397656) (not e!353873))))

(assert (=> b!617131 (= res!397656 (and (= (size!18354 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18354 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18354 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!397648 () Bool)

(declare-fun b!617132 () Bool)

(assert (=> b!617132 (= res!397648 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) j!136))))

(assert (=> b!617132 (=> (not res!397648) (not e!353871))))

(assert (=> b!617132 (= e!353869 e!353871)))

(declare-fun b!617133 () Bool)

(assert (=> b!617133 false))

(declare-fun lt!284179 () Unit!20190)

(assert (=> b!617133 (= lt!284179 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284194 (select (arr!17990 a!2986) j!136) j!136 Nil!12081))))

(assert (=> b!617133 (arrayNoDuplicates!0 lt!284194 j!136 Nil!12081)))

(declare-fun lt!284192 () Unit!20190)

(assert (=> b!617133 (= lt!284192 (lemmaNoDuplicateFromThenFromBigger!0 lt!284194 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617133 (arrayNoDuplicates!0 lt!284194 #b00000000000000000000000000000000 Nil!12081)))

(declare-fun lt!284188 () Unit!20190)

(assert (=> b!617133 (= lt!284188 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12081))))

(assert (=> b!617133 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284181 () Unit!20190)

(assert (=> b!617133 (= lt!284181 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284194 (select (arr!17990 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20198 () Unit!20190)

(assert (=> b!617133 (= e!353870 Unit!20198)))

(declare-fun b!617134 () Bool)

(declare-fun res!397650 () Bool)

(assert (=> b!617134 (=> (not res!397650) (not e!353873))))

(assert (=> b!617134 (= res!397650 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617135 () Bool)

(declare-fun res!397658 () Bool)

(assert (=> b!617135 (=> (not res!397658) (not e!353878))))

(assert (=> b!617135 (= res!397658 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12081))))

(declare-fun b!617136 () Bool)

(declare-fun Unit!20199 () Unit!20190)

(assert (=> b!617136 (= e!353877 Unit!20199)))

(declare-fun res!397657 () Bool)

(assert (=> b!617136 (= res!397657 (= (select (store (arr!17990 a!2986) i!1108 k!1786) index!984) (select (arr!17990 a!2986) j!136)))))

(assert (=> b!617136 (=> (not res!397657) (not e!353868))))

(assert (=> b!617136 e!353868))

(declare-fun c!70103 () Bool)

(assert (=> b!617136 (= c!70103 (bvslt j!136 index!984))))

(declare-fun lt!284186 () Unit!20190)

(assert (=> b!617136 (= lt!284186 e!353870)))

(declare-fun c!70101 () Bool)

(assert (=> b!617136 (= c!70101 (bvslt index!984 j!136))))

(declare-fun lt!284191 () Unit!20190)

(assert (=> b!617136 (= lt!284191 e!353879)))

(assert (=> b!617136 false))

(declare-fun b!617137 () Bool)

(assert (=> b!617137 (= e!353872 (= lt!284187 lt!284189))))

(declare-fun b!617138 () Bool)

(assert (=> b!617138 (= e!353874 (arrayContainsKey!0 lt!284194 (select (arr!17990 a!2986) j!136) index!984))))

(assert (= (and start!56062 res!397654) b!617131))

(assert (= (and b!617131 res!397656) b!617114))

(assert (= (and b!617114 res!397651) b!617124))

(assert (= (and b!617124 res!397663) b!617134))

(assert (= (and b!617134 res!397650) b!617118))

(assert (= (and b!617118 res!397655) b!617122))

(assert (= (and b!617122 res!397652) b!617135))

(assert (= (and b!617135 res!397658) b!617119))

(assert (= (and b!617119 res!397653) b!617128))

(assert (= (and b!617128 res!397664) b!617121))

(assert (= (and b!617121 res!397662) b!617123))

(assert (= (and b!617123 res!397661) b!617137))

(assert (= (and b!617123 c!70100) b!617126))

(assert (= (and b!617123 (not c!70100)) b!617115))

(assert (= (and b!617123 c!70102) b!617136))

(assert (= (and b!617123 (not c!70102)) b!617116))

(assert (= (and b!617136 res!397657) b!617125))

(assert (= (and b!617125 (not res!397649)) b!617132))

(assert (= (and b!617132 res!397648) b!617129))

(assert (= (and b!617136 c!70103) b!617133))

(assert (= (and b!617136 (not c!70103)) b!617117))

(assert (= (and b!617136 c!70101) b!617127))

(assert (= (and b!617136 (not c!70101)) b!617120))

(assert (= (and b!617127 res!397660) b!617138))

(assert (= (and b!617123 (not res!397659)) b!617130))

(declare-fun m!593279 () Bool)

(assert (=> b!617134 m!593279))

(declare-fun m!593281 () Bool)

(assert (=> b!617129 m!593281))

(assert (=> b!617129 m!593281))

(declare-fun m!593283 () Bool)

(assert (=> b!617129 m!593283))

(declare-fun m!593285 () Bool)

(assert (=> b!617119 m!593285))

(assert (=> b!617127 m!593281))

(declare-fun m!593287 () Bool)

(assert (=> b!617127 m!593287))

(assert (=> b!617127 m!593281))

(declare-fun m!593289 () Bool)

(assert (=> b!617127 m!593289))

(assert (=> b!617127 m!593281))

(declare-fun m!593291 () Bool)

(assert (=> b!617127 m!593291))

(assert (=> b!617127 m!593281))

(declare-fun m!593293 () Bool)

(assert (=> b!617127 m!593293))

(assert (=> b!617127 m!593281))

(declare-fun m!593295 () Bool)

(assert (=> b!617127 m!593295))

(declare-fun m!593297 () Bool)

(assert (=> b!617127 m!593297))

(declare-fun m!593299 () Bool)

(assert (=> b!617127 m!593299))

(declare-fun m!593301 () Bool)

(assert (=> b!617127 m!593301))

(declare-fun m!593303 () Bool)

(assert (=> start!56062 m!593303))

(declare-fun m!593305 () Bool)

(assert (=> start!56062 m!593305))

(assert (=> b!617132 m!593281))

(assert (=> b!617132 m!593281))

(assert (=> b!617132 m!593287))

(declare-fun m!593307 () Bool)

(assert (=> b!617130 m!593307))

(declare-fun m!593309 () Bool)

(assert (=> b!617130 m!593309))

(declare-fun m!593311 () Bool)

(assert (=> b!617118 m!593311))

(assert (=> b!617133 m!593281))

(assert (=> b!617133 m!593299))

(declare-fun m!593313 () Bool)

(assert (=> b!617133 m!593313))

(assert (=> b!617133 m!593281))

(declare-fun m!593315 () Bool)

(assert (=> b!617133 m!593315))

(assert (=> b!617133 m!593281))

(declare-fun m!593317 () Bool)

(assert (=> b!617133 m!593317))

(assert (=> b!617133 m!593297))

(assert (=> b!617133 m!593281))

(declare-fun m!593319 () Bool)

(assert (=> b!617133 m!593319))

(declare-fun m!593321 () Bool)

(assert (=> b!617133 m!593321))

(declare-fun m!593323 () Bool)

(assert (=> b!617124 m!593323))

(assert (=> b!617128 m!593307))

(declare-fun m!593325 () Bool)

(assert (=> b!617128 m!593325))

(declare-fun m!593327 () Bool)

(assert (=> b!617121 m!593327))

(assert (=> b!617121 m!593281))

(assert (=> b!617121 m!593281))

(declare-fun m!593329 () Bool)

(assert (=> b!617121 m!593329))

(assert (=> b!617138 m!593281))

(assert (=> b!617138 m!593281))

(assert (=> b!617138 m!593283))

(declare-fun m!593331 () Bool)

(assert (=> b!617135 m!593331))

(declare-fun m!593333 () Bool)

(assert (=> b!617123 m!593333))

(declare-fun m!593335 () Bool)

(assert (=> b!617123 m!593335))

(assert (=> b!617123 m!593281))

(declare-fun m!593337 () Bool)

(assert (=> b!617123 m!593337))

(declare-fun m!593339 () Bool)

(assert (=> b!617123 m!593339))

(assert (=> b!617123 m!593281))

(declare-fun m!593341 () Bool)

(assert (=> b!617123 m!593341))

(declare-fun m!593343 () Bool)

(assert (=> b!617123 m!593343))

(assert (=> b!617123 m!593307))

(assert (=> b!617136 m!593307))

(assert (=> b!617136 m!593309))

(assert (=> b!617136 m!593281))

(declare-fun m!593345 () Bool)

(assert (=> b!617122 m!593345))

(assert (=> b!617114 m!593281))

(assert (=> b!617114 m!593281))

(declare-fun m!593347 () Bool)

(assert (=> b!617114 m!593347))

(push 1)

