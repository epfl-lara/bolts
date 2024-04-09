; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54004 () Bool)

(assert start!54004)

(declare-fun b!589578 () Bool)

(declare-fun e!336594 () Bool)

(declare-fun e!336590 () Bool)

(assert (=> b!589578 (= e!336594 e!336590)))

(declare-fun res!377203 () Bool)

(assert (=> b!589578 (=> (not res!377203) (not e!336590))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6117 0))(
  ( (MissingZero!6117 (index!26698 (_ BitVec 32))) (Found!6117 (index!26699 (_ BitVec 32))) (Intermediate!6117 (undefined!6929 Bool) (index!26700 (_ BitVec 32)) (x!55518 (_ BitVec 32))) (Undefined!6117) (MissingVacant!6117 (index!26701 (_ BitVec 32))) )
))
(declare-fun lt!267494 () SeekEntryResult!6117)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36802 0))(
  ( (array!36803 (arr!17670 (Array (_ BitVec 32) (_ BitVec 64))) (size!18034 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36802)

(assert (=> b!589578 (= res!377203 (and (= lt!267494 (Found!6117 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17670 a!2986) index!984) (select (arr!17670 a!2986) j!136))) (not (= (select (arr!17670 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36802 (_ BitVec 32)) SeekEntryResult!6117)

(assert (=> b!589578 (= lt!267494 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17670 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589579 () Bool)

(declare-fun res!377207 () Bool)

(declare-fun e!336595 () Bool)

(assert (=> b!589579 (=> (not res!377207) (not e!336595))))

(declare-datatypes ((List!11764 0))(
  ( (Nil!11761) (Cons!11760 (h!12805 (_ BitVec 64)) (t!18000 List!11764)) )
))
(declare-fun arrayNoDuplicates!0 (array!36802 (_ BitVec 32) List!11764) Bool)

(assert (=> b!589579 (= res!377207 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11761))))

(declare-fun b!589580 () Bool)

(declare-fun res!377198 () Bool)

(declare-fun e!336592 () Bool)

(assert (=> b!589580 (=> (not res!377198) (not e!336592))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589580 (= res!377198 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589581 () Bool)

(declare-fun res!377206 () Bool)

(assert (=> b!589581 (=> (not res!377206) (not e!336592))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589581 (= res!377206 (and (= (size!18034 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18034 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18034 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!377205 () Bool)

(assert (=> start!54004 (=> (not res!377205) (not e!336592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54004 (= res!377205 (validMask!0 mask!3053))))

(assert (=> start!54004 e!336592))

(assert (=> start!54004 true))

(declare-fun array_inv!13444 (array!36802) Bool)

(assert (=> start!54004 (array_inv!13444 a!2986)))

(declare-fun b!589582 () Bool)

(assert (=> b!589582 (= e!336592 e!336595)))

(declare-fun res!377210 () Bool)

(assert (=> b!589582 (=> (not res!377210) (not e!336595))))

(declare-fun lt!267495 () SeekEntryResult!6117)

(assert (=> b!589582 (= res!377210 (or (= lt!267495 (MissingZero!6117 i!1108)) (= lt!267495 (MissingVacant!6117 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36802 (_ BitVec 32)) SeekEntryResult!6117)

(assert (=> b!589582 (= lt!267495 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589583 () Bool)

(declare-fun e!336588 () Bool)

(assert (=> b!589583 (= e!336590 (not e!336588))))

(declare-fun res!377201 () Bool)

(assert (=> b!589583 (=> res!377201 e!336588)))

(declare-fun lt!267496 () SeekEntryResult!6117)

(assert (=> b!589583 (= res!377201 (not (= lt!267496 (Found!6117 index!984))))))

(declare-datatypes ((Unit!18412 0))(
  ( (Unit!18413) )
))
(declare-fun lt!267500 () Unit!18412)

(declare-fun e!336589 () Unit!18412)

(assert (=> b!589583 (= lt!267500 e!336589)))

(declare-fun c!66557 () Bool)

(assert (=> b!589583 (= c!66557 (= lt!267496 Undefined!6117))))

(declare-fun lt!267499 () (_ BitVec 64))

(declare-fun lt!267497 () array!36802)

(assert (=> b!589583 (= lt!267496 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267499 lt!267497 mask!3053))))

(declare-fun e!336591 () Bool)

(assert (=> b!589583 e!336591))

(declare-fun res!377200 () Bool)

(assert (=> b!589583 (=> (not res!377200) (not e!336591))))

(declare-fun lt!267498 () SeekEntryResult!6117)

(declare-fun lt!267492 () (_ BitVec 32))

(assert (=> b!589583 (= res!377200 (= lt!267498 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267492 vacantSpotIndex!68 lt!267499 lt!267497 mask!3053)))))

(assert (=> b!589583 (= lt!267498 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267492 vacantSpotIndex!68 (select (arr!17670 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589583 (= lt!267499 (select (store (arr!17670 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267493 () Unit!18412)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36802 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18412)

(assert (=> b!589583 (= lt!267493 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267492 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589583 (= lt!267492 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589584 () Bool)

(assert (=> b!589584 (= e!336591 (= lt!267494 lt!267498))))

(declare-fun b!589585 () Bool)

(declare-fun res!377204 () Bool)

(assert (=> b!589585 (=> (not res!377204) (not e!336592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589585 (= res!377204 (validKeyInArray!0 (select (arr!17670 a!2986) j!136)))))

(declare-fun b!589586 () Bool)

(assert (=> b!589586 (= e!336595 e!336594)))

(declare-fun res!377202 () Bool)

(assert (=> b!589586 (=> (not res!377202) (not e!336594))))

(assert (=> b!589586 (= res!377202 (= (select (store (arr!17670 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589586 (= lt!267497 (array!36803 (store (arr!17670 a!2986) i!1108 k!1786) (size!18034 a!2986)))))

(declare-fun b!589587 () Bool)

(declare-fun Unit!18414 () Unit!18412)

(assert (=> b!589587 (= e!336589 Unit!18414)))

(declare-fun b!589588 () Bool)

(assert (=> b!589588 (= e!336588 true)))

(assert (=> b!589588 (= (select (store (arr!17670 a!2986) i!1108 k!1786) index!984) (select (arr!17670 a!2986) j!136))))

(declare-fun b!589589 () Bool)

(declare-fun res!377199 () Bool)

(assert (=> b!589589 (=> (not res!377199) (not e!336595))))

(assert (=> b!589589 (= res!377199 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17670 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589590 () Bool)

(declare-fun res!377208 () Bool)

(assert (=> b!589590 (=> (not res!377208) (not e!336595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36802 (_ BitVec 32)) Bool)

(assert (=> b!589590 (= res!377208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589591 () Bool)

(declare-fun Unit!18415 () Unit!18412)

(assert (=> b!589591 (= e!336589 Unit!18415)))

(assert (=> b!589591 false))

(declare-fun b!589592 () Bool)

(declare-fun res!377209 () Bool)

(assert (=> b!589592 (=> (not res!377209) (not e!336592))))

(assert (=> b!589592 (= res!377209 (validKeyInArray!0 k!1786))))

(assert (= (and start!54004 res!377205) b!589581))

(assert (= (and b!589581 res!377206) b!589585))

(assert (= (and b!589585 res!377204) b!589592))

(assert (= (and b!589592 res!377209) b!589580))

(assert (= (and b!589580 res!377198) b!589582))

(assert (= (and b!589582 res!377210) b!589590))

(assert (= (and b!589590 res!377208) b!589579))

(assert (= (and b!589579 res!377207) b!589589))

(assert (= (and b!589589 res!377199) b!589586))

(assert (= (and b!589586 res!377202) b!589578))

(assert (= (and b!589578 res!377203) b!589583))

(assert (= (and b!589583 res!377200) b!589584))

(assert (= (and b!589583 c!66557) b!589591))

(assert (= (and b!589583 (not c!66557)) b!589587))

(assert (= (and b!589583 (not res!377201)) b!589588))

(declare-fun m!568135 () Bool)

(assert (=> b!589583 m!568135))

(declare-fun m!568137 () Bool)

(assert (=> b!589583 m!568137))

(declare-fun m!568139 () Bool)

(assert (=> b!589583 m!568139))

(declare-fun m!568141 () Bool)

(assert (=> b!589583 m!568141))

(assert (=> b!589583 m!568139))

(declare-fun m!568143 () Bool)

(assert (=> b!589583 m!568143))

(declare-fun m!568145 () Bool)

(assert (=> b!589583 m!568145))

(declare-fun m!568147 () Bool)

(assert (=> b!589583 m!568147))

(declare-fun m!568149 () Bool)

(assert (=> b!589583 m!568149))

(declare-fun m!568151 () Bool)

(assert (=> b!589582 m!568151))

(declare-fun m!568153 () Bool)

(assert (=> start!54004 m!568153))

(declare-fun m!568155 () Bool)

(assert (=> start!54004 m!568155))

(assert (=> b!589585 m!568139))

(assert (=> b!589585 m!568139))

(declare-fun m!568157 () Bool)

(assert (=> b!589585 m!568157))

(declare-fun m!568159 () Bool)

(assert (=> b!589590 m!568159))

(assert (=> b!589586 m!568143))

(declare-fun m!568161 () Bool)

(assert (=> b!589586 m!568161))

(assert (=> b!589588 m!568143))

(declare-fun m!568163 () Bool)

(assert (=> b!589588 m!568163))

(assert (=> b!589588 m!568139))

(declare-fun m!568165 () Bool)

(assert (=> b!589578 m!568165))

(assert (=> b!589578 m!568139))

(assert (=> b!589578 m!568139))

(declare-fun m!568167 () Bool)

(assert (=> b!589578 m!568167))

(declare-fun m!568169 () Bool)

(assert (=> b!589589 m!568169))

(declare-fun m!568171 () Bool)

(assert (=> b!589580 m!568171))

(declare-fun m!568173 () Bool)

(assert (=> b!589579 m!568173))

(declare-fun m!568175 () Bool)

(assert (=> b!589592 m!568175))

(push 1)

