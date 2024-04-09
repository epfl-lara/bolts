; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54068 () Bool)

(assert start!54068)

(declare-fun b!590134 () Bool)

(declare-fun res!377557 () Bool)

(declare-fun e!336921 () Bool)

(assert (=> b!590134 (=> (not res!377557) (not e!336921))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36818 0))(
  ( (array!36819 (arr!17677 (Array (_ BitVec 32) (_ BitVec 64))) (size!18041 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36818)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590134 (= res!377557 (and (= (size!18041 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18041 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18041 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590135 () Bool)

(declare-fun res!377544 () Bool)

(assert (=> b!590135 (=> (not res!377544) (not e!336921))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590135 (= res!377544 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590136 () Bool)

(declare-fun res!377547 () Bool)

(assert (=> b!590136 (=> (not res!377547) (not e!336921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590136 (= res!377547 (validKeyInArray!0 (select (arr!17677 a!2986) j!136)))))

(declare-fun b!590137 () Bool)

(declare-fun res!377552 () Bool)

(declare-fun e!336922 () Bool)

(assert (=> b!590137 (=> (not res!377552) (not e!336922))))

(declare-datatypes ((List!11771 0))(
  ( (Nil!11768) (Cons!11767 (h!12812 (_ BitVec 64)) (t!18007 List!11771)) )
))
(declare-fun arrayNoDuplicates!0 (array!36818 (_ BitVec 32) List!11771) Bool)

(assert (=> b!590137 (= res!377552 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11768))))

(declare-fun e!336917 () Bool)

(declare-fun lt!267771 () array!36818)

(declare-fun b!590138 () Bool)

(assert (=> b!590138 (= e!336917 (arrayContainsKey!0 lt!267771 (select (arr!17677 a!2986) j!136) j!136))))

(declare-fun b!590139 () Bool)

(declare-datatypes ((Unit!18440 0))(
  ( (Unit!18441) )
))
(declare-fun e!336920 () Unit!18440)

(declare-fun Unit!18442 () Unit!18440)

(assert (=> b!590139 (= e!336920 Unit!18442)))

(declare-fun b!590140 () Bool)

(declare-fun e!336916 () Bool)

(assert (=> b!590140 (= e!336916 e!336917)))

(declare-fun res!377554 () Bool)

(assert (=> b!590140 (=> res!377554 e!336917)))

(declare-fun lt!267768 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590140 (= res!377554 (or (not (= (select (arr!17677 a!2986) j!136) lt!267768)) (not (= (select (arr!17677 a!2986) j!136) (select (store (arr!17677 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590141 () Bool)

(declare-fun res!377556 () Bool)

(assert (=> b!590141 (=> (not res!377556) (not e!336921))))

(assert (=> b!590141 (= res!377556 (validKeyInArray!0 k0!1786))))

(declare-fun b!590142 () Bool)

(declare-fun e!336918 () Bool)

(assert (=> b!590142 (= e!336918 true)))

(assert (=> b!590142 e!336916))

(declare-fun res!377550 () Bool)

(assert (=> b!590142 (=> (not res!377550) (not e!336916))))

(assert (=> b!590142 (= res!377550 (= (select (store (arr!17677 a!2986) i!1108 k0!1786) index!984) (select (arr!17677 a!2986) j!136)))))

(declare-fun b!590143 () Bool)

(declare-fun e!336914 () Bool)

(declare-datatypes ((SeekEntryResult!6124 0))(
  ( (MissingZero!6124 (index!26728 (_ BitVec 32))) (Found!6124 (index!26729 (_ BitVec 32))) (Intermediate!6124 (undefined!6936 Bool) (index!26730 (_ BitVec 32)) (x!55548 (_ BitVec 32))) (Undefined!6124) (MissingVacant!6124 (index!26731 (_ BitVec 32))) )
))
(declare-fun lt!267769 () SeekEntryResult!6124)

(declare-fun lt!267766 () SeekEntryResult!6124)

(assert (=> b!590143 (= e!336914 (= lt!267769 lt!267766))))

(declare-fun res!377558 () Bool)

(assert (=> start!54068 (=> (not res!377558) (not e!336921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54068 (= res!377558 (validMask!0 mask!3053))))

(assert (=> start!54068 e!336921))

(assert (=> start!54068 true))

(declare-fun array_inv!13451 (array!36818) Bool)

(assert (=> start!54068 (array_inv!13451 a!2986)))

(declare-fun b!590144 () Bool)

(declare-fun e!336919 () Bool)

(declare-fun e!336913 () Bool)

(assert (=> b!590144 (= e!336919 e!336913)))

(declare-fun res!377555 () Bool)

(assert (=> b!590144 (=> (not res!377555) (not e!336913))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!590144 (= res!377555 (and (= lt!267769 (Found!6124 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17677 a!2986) index!984) (select (arr!17677 a!2986) j!136))) (not (= (select (arr!17677 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36818 (_ BitVec 32)) SeekEntryResult!6124)

(assert (=> b!590144 (= lt!267769 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17677 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590145 () Bool)

(declare-fun Unit!18443 () Unit!18440)

(assert (=> b!590145 (= e!336920 Unit!18443)))

(assert (=> b!590145 false))

(declare-fun b!590146 () Bool)

(declare-fun res!377545 () Bool)

(assert (=> b!590146 (=> (not res!377545) (not e!336922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36818 (_ BitVec 32)) Bool)

(assert (=> b!590146 (= res!377545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590147 () Bool)

(assert (=> b!590147 (= e!336913 (not e!336918))))

(declare-fun res!377548 () Bool)

(assert (=> b!590147 (=> res!377548 e!336918)))

(declare-fun lt!267770 () SeekEntryResult!6124)

(assert (=> b!590147 (= res!377548 (not (= lt!267770 (Found!6124 index!984))))))

(declare-fun lt!267767 () Unit!18440)

(assert (=> b!590147 (= lt!267767 e!336920)))

(declare-fun c!66662 () Bool)

(assert (=> b!590147 (= c!66662 (= lt!267770 Undefined!6124))))

(assert (=> b!590147 (= lt!267770 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267768 lt!267771 mask!3053))))

(assert (=> b!590147 e!336914))

(declare-fun res!377549 () Bool)

(assert (=> b!590147 (=> (not res!377549) (not e!336914))))

(declare-fun lt!267773 () (_ BitVec 32))

(assert (=> b!590147 (= res!377549 (= lt!267766 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267773 vacantSpotIndex!68 lt!267768 lt!267771 mask!3053)))))

(assert (=> b!590147 (= lt!267766 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267773 vacantSpotIndex!68 (select (arr!17677 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590147 (= lt!267768 (select (store (arr!17677 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267774 () Unit!18440)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36818 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18440)

(assert (=> b!590147 (= lt!267774 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267773 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590147 (= lt!267773 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590148 () Bool)

(declare-fun res!377551 () Bool)

(assert (=> b!590148 (=> (not res!377551) (not e!336922))))

(assert (=> b!590148 (= res!377551 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17677 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590149 () Bool)

(assert (=> b!590149 (= e!336921 e!336922)))

(declare-fun res!377553 () Bool)

(assert (=> b!590149 (=> (not res!377553) (not e!336922))))

(declare-fun lt!267772 () SeekEntryResult!6124)

(assert (=> b!590149 (= res!377553 (or (= lt!267772 (MissingZero!6124 i!1108)) (= lt!267772 (MissingVacant!6124 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36818 (_ BitVec 32)) SeekEntryResult!6124)

(assert (=> b!590149 (= lt!267772 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!590150 () Bool)

(assert (=> b!590150 (= e!336922 e!336919)))

(declare-fun res!377546 () Bool)

(assert (=> b!590150 (=> (not res!377546) (not e!336919))))

(assert (=> b!590150 (= res!377546 (= (select (store (arr!17677 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590150 (= lt!267771 (array!36819 (store (arr!17677 a!2986) i!1108 k0!1786) (size!18041 a!2986)))))

(assert (= (and start!54068 res!377558) b!590134))

(assert (= (and b!590134 res!377557) b!590136))

(assert (= (and b!590136 res!377547) b!590141))

(assert (= (and b!590141 res!377556) b!590135))

(assert (= (and b!590135 res!377544) b!590149))

(assert (= (and b!590149 res!377553) b!590146))

(assert (= (and b!590146 res!377545) b!590137))

(assert (= (and b!590137 res!377552) b!590148))

(assert (= (and b!590148 res!377551) b!590150))

(assert (= (and b!590150 res!377546) b!590144))

(assert (= (and b!590144 res!377555) b!590147))

(assert (= (and b!590147 res!377549) b!590143))

(assert (= (and b!590147 c!66662) b!590145))

(assert (= (and b!590147 (not c!66662)) b!590139))

(assert (= (and b!590147 (not res!377548)) b!590142))

(assert (= (and b!590142 res!377550) b!590140))

(assert (= (and b!590140 (not res!377554)) b!590138))

(declare-fun m!568589 () Bool)

(assert (=> b!590137 m!568589))

(declare-fun m!568591 () Bool)

(assert (=> b!590150 m!568591))

(declare-fun m!568593 () Bool)

(assert (=> b!590150 m!568593))

(assert (=> b!590142 m!568591))

(declare-fun m!568595 () Bool)

(assert (=> b!590142 m!568595))

(declare-fun m!568597 () Bool)

(assert (=> b!590142 m!568597))

(declare-fun m!568599 () Bool)

(assert (=> b!590148 m!568599))

(declare-fun m!568601 () Bool)

(assert (=> b!590135 m!568601))

(assert (=> b!590136 m!568597))

(assert (=> b!590136 m!568597))

(declare-fun m!568603 () Bool)

(assert (=> b!590136 m!568603))

(declare-fun m!568605 () Bool)

(assert (=> b!590141 m!568605))

(assert (=> b!590138 m!568597))

(assert (=> b!590138 m!568597))

(declare-fun m!568607 () Bool)

(assert (=> b!590138 m!568607))

(assert (=> b!590140 m!568597))

(assert (=> b!590140 m!568591))

(assert (=> b!590140 m!568595))

(declare-fun m!568609 () Bool)

(assert (=> b!590146 m!568609))

(declare-fun m!568611 () Bool)

(assert (=> start!54068 m!568611))

(declare-fun m!568613 () Bool)

(assert (=> start!54068 m!568613))

(declare-fun m!568615 () Bool)

(assert (=> b!590144 m!568615))

(assert (=> b!590144 m!568597))

(assert (=> b!590144 m!568597))

(declare-fun m!568617 () Bool)

(assert (=> b!590144 m!568617))

(declare-fun m!568619 () Bool)

(assert (=> b!590147 m!568619))

(declare-fun m!568621 () Bool)

(assert (=> b!590147 m!568621))

(declare-fun m!568623 () Bool)

(assert (=> b!590147 m!568623))

(assert (=> b!590147 m!568597))

(assert (=> b!590147 m!568591))

(declare-fun m!568625 () Bool)

(assert (=> b!590147 m!568625))

(declare-fun m!568627 () Bool)

(assert (=> b!590147 m!568627))

(assert (=> b!590147 m!568597))

(declare-fun m!568629 () Bool)

(assert (=> b!590147 m!568629))

(declare-fun m!568631 () Bool)

(assert (=> b!590149 m!568631))

(check-sat (not b!590147) (not b!590138) (not b!590137) (not start!54068) (not b!590149) (not b!590146) (not b!590135) (not b!590136) (not b!590144) (not b!590141))
(check-sat)
