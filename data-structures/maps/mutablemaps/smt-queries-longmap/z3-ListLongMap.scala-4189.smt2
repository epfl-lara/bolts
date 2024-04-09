; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57122 () Bool)

(assert start!57122)

(declare-fun b!632118 () Bool)

(declare-fun res!408919 () Bool)

(declare-fun e!361399 () Bool)

(assert (=> b!632118 (=> (not res!408919) (not e!361399))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38102 0))(
  ( (array!38103 (arr!18280 (Array (_ BitVec 32) (_ BitVec 64))) (size!18644 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38102)

(assert (=> b!632118 (= res!408919 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18280 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632119 () Bool)

(declare-fun res!408910 () Bool)

(assert (=> b!632119 (=> (not res!408910) (not e!361399))))

(declare-datatypes ((List!12374 0))(
  ( (Nil!12371) (Cons!12370 (h!13415 (_ BitVec 64)) (t!18610 List!12374)) )
))
(declare-fun arrayNoDuplicates!0 (array!38102 (_ BitVec 32) List!12374) Bool)

(assert (=> b!632119 (= res!408910 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12371))))

(declare-fun b!632120 () Bool)

(declare-datatypes ((Unit!21266 0))(
  ( (Unit!21267) )
))
(declare-fun e!361395 () Unit!21266)

(declare-fun Unit!21268 () Unit!21266)

(assert (=> b!632120 (= e!361395 Unit!21268)))

(assert (=> b!632120 false))

(declare-fun b!632121 () Bool)

(declare-fun res!408909 () Bool)

(assert (=> b!632121 (=> (not res!408909) (not e!361399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38102 (_ BitVec 32)) Bool)

(assert (=> b!632121 (= res!408909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632122 () Bool)

(declare-fun e!361392 () Bool)

(assert (=> b!632122 (= e!361392 true)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!632122 (= (select (store (arr!18280 a!2986) i!1108 k0!1786) index!984) (select (arr!18280 a!2986) j!136))))

(declare-fun b!632123 () Bool)

(declare-fun res!408913 () Bool)

(declare-fun e!361394 () Bool)

(assert (=> b!632123 (=> (not res!408913) (not e!361394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632123 (= res!408913 (validKeyInArray!0 (select (arr!18280 a!2986) j!136)))))

(declare-fun b!632124 () Bool)

(declare-fun res!408916 () Bool)

(assert (=> b!632124 (=> (not res!408916) (not e!361394))))

(assert (=> b!632124 (= res!408916 (validKeyInArray!0 k0!1786))))

(declare-fun b!632125 () Bool)

(declare-fun Unit!21269 () Unit!21266)

(assert (=> b!632125 (= e!361395 Unit!21269)))

(declare-fun b!632126 () Bool)

(assert (=> b!632126 (= e!361394 e!361399)))

(declare-fun res!408908 () Bool)

(assert (=> b!632126 (=> (not res!408908) (not e!361399))))

(declare-datatypes ((SeekEntryResult!6727 0))(
  ( (MissingZero!6727 (index!29200 (_ BitVec 32))) (Found!6727 (index!29201 (_ BitVec 32))) (Intermediate!6727 (undefined!7539 Bool) (index!29202 (_ BitVec 32)) (x!57963 (_ BitVec 32))) (Undefined!6727) (MissingVacant!6727 (index!29203 (_ BitVec 32))) )
))
(declare-fun lt!292178 () SeekEntryResult!6727)

(assert (=> b!632126 (= res!408908 (or (= lt!292178 (MissingZero!6727 i!1108)) (= lt!292178 (MissingVacant!6727 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38102 (_ BitVec 32)) SeekEntryResult!6727)

(assert (=> b!632126 (= lt!292178 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!408914 () Bool)

(assert (=> start!57122 (=> (not res!408914) (not e!361394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57122 (= res!408914 (validMask!0 mask!3053))))

(assert (=> start!57122 e!361394))

(assert (=> start!57122 true))

(declare-fun array_inv!14054 (array!38102) Bool)

(assert (=> start!57122 (array_inv!14054 a!2986)))

(declare-fun b!632127 () Bool)

(declare-fun e!361396 () Bool)

(assert (=> b!632127 (= e!361399 e!361396)))

(declare-fun res!408920 () Bool)

(assert (=> b!632127 (=> (not res!408920) (not e!361396))))

(assert (=> b!632127 (= res!408920 (= (select (store (arr!18280 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292183 () array!38102)

(assert (=> b!632127 (= lt!292183 (array!38103 (store (arr!18280 a!2986) i!1108 k0!1786) (size!18644 a!2986)))))

(declare-fun b!632128 () Bool)

(declare-fun res!408912 () Bool)

(assert (=> b!632128 (=> (not res!408912) (not e!361394))))

(declare-fun arrayContainsKey!0 (array!38102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632128 (= res!408912 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632129 () Bool)

(declare-fun res!408917 () Bool)

(assert (=> b!632129 (=> (not res!408917) (not e!361394))))

(assert (=> b!632129 (= res!408917 (and (= (size!18644 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18644 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18644 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632130 () Bool)

(declare-fun e!361397 () Bool)

(declare-fun lt!292179 () SeekEntryResult!6727)

(declare-fun lt!292184 () SeekEntryResult!6727)

(assert (=> b!632130 (= e!361397 (= lt!292179 lt!292184))))

(declare-fun b!632131 () Bool)

(declare-fun e!361393 () Bool)

(assert (=> b!632131 (= e!361396 e!361393)))

(declare-fun res!408911 () Bool)

(assert (=> b!632131 (=> (not res!408911) (not e!361393))))

(assert (=> b!632131 (= res!408911 (and (= lt!292179 (Found!6727 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18280 a!2986) index!984) (select (arr!18280 a!2986) j!136))) (not (= (select (arr!18280 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38102 (_ BitVec 32)) SeekEntryResult!6727)

(assert (=> b!632131 (= lt!292179 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18280 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632132 () Bool)

(assert (=> b!632132 (= e!361393 (not e!361392))))

(declare-fun res!408915 () Bool)

(assert (=> b!632132 (=> res!408915 e!361392)))

(declare-fun lt!292185 () SeekEntryResult!6727)

(assert (=> b!632132 (= res!408915 (not (= lt!292185 (Found!6727 index!984))))))

(declare-fun lt!292177 () Unit!21266)

(assert (=> b!632132 (= lt!292177 e!361395)))

(declare-fun c!71972 () Bool)

(assert (=> b!632132 (= c!71972 (= lt!292185 Undefined!6727))))

(declare-fun lt!292181 () (_ BitVec 64))

(assert (=> b!632132 (= lt!292185 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292181 lt!292183 mask!3053))))

(assert (=> b!632132 e!361397))

(declare-fun res!408918 () Bool)

(assert (=> b!632132 (=> (not res!408918) (not e!361397))))

(declare-fun lt!292182 () (_ BitVec 32))

(assert (=> b!632132 (= res!408918 (= lt!292184 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292182 vacantSpotIndex!68 lt!292181 lt!292183 mask!3053)))))

(assert (=> b!632132 (= lt!292184 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292182 vacantSpotIndex!68 (select (arr!18280 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632132 (= lt!292181 (select (store (arr!18280 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292180 () Unit!21266)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38102 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21266)

(assert (=> b!632132 (= lt!292180 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292182 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632132 (= lt!292182 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57122 res!408914) b!632129))

(assert (= (and b!632129 res!408917) b!632123))

(assert (= (and b!632123 res!408913) b!632124))

(assert (= (and b!632124 res!408916) b!632128))

(assert (= (and b!632128 res!408912) b!632126))

(assert (= (and b!632126 res!408908) b!632121))

(assert (= (and b!632121 res!408909) b!632119))

(assert (= (and b!632119 res!408910) b!632118))

(assert (= (and b!632118 res!408919) b!632127))

(assert (= (and b!632127 res!408920) b!632131))

(assert (= (and b!632131 res!408911) b!632132))

(assert (= (and b!632132 res!408918) b!632130))

(assert (= (and b!632132 c!71972) b!632120))

(assert (= (and b!632132 (not c!71972)) b!632125))

(assert (= (and b!632132 (not res!408915)) b!632122))

(declare-fun m!607011 () Bool)

(assert (=> b!632122 m!607011))

(declare-fun m!607013 () Bool)

(assert (=> b!632122 m!607013))

(declare-fun m!607015 () Bool)

(assert (=> b!632122 m!607015))

(declare-fun m!607017 () Bool)

(assert (=> b!632118 m!607017))

(declare-fun m!607019 () Bool)

(assert (=> b!632126 m!607019))

(declare-fun m!607021 () Bool)

(assert (=> b!632128 m!607021))

(assert (=> b!632127 m!607011))

(declare-fun m!607023 () Bool)

(assert (=> b!632127 m!607023))

(declare-fun m!607025 () Bool)

(assert (=> b!632132 m!607025))

(declare-fun m!607027 () Bool)

(assert (=> b!632132 m!607027))

(declare-fun m!607029 () Bool)

(assert (=> b!632132 m!607029))

(assert (=> b!632132 m!607015))

(declare-fun m!607031 () Bool)

(assert (=> b!632132 m!607031))

(declare-fun m!607033 () Bool)

(assert (=> b!632132 m!607033))

(assert (=> b!632132 m!607015))

(declare-fun m!607035 () Bool)

(assert (=> b!632132 m!607035))

(assert (=> b!632132 m!607011))

(declare-fun m!607037 () Bool)

(assert (=> b!632124 m!607037))

(assert (=> b!632123 m!607015))

(assert (=> b!632123 m!607015))

(declare-fun m!607039 () Bool)

(assert (=> b!632123 m!607039))

(declare-fun m!607041 () Bool)

(assert (=> start!57122 m!607041))

(declare-fun m!607043 () Bool)

(assert (=> start!57122 m!607043))

(declare-fun m!607045 () Bool)

(assert (=> b!632119 m!607045))

(declare-fun m!607047 () Bool)

(assert (=> b!632131 m!607047))

(assert (=> b!632131 m!607015))

(assert (=> b!632131 m!607015))

(declare-fun m!607049 () Bool)

(assert (=> b!632131 m!607049))

(declare-fun m!607051 () Bool)

(assert (=> b!632121 m!607051))

(check-sat (not b!632128) (not b!632123) (not b!632121) (not b!632131) (not b!632124) (not b!632119) (not b!632126) (not b!632132) (not start!57122))
(check-sat)
