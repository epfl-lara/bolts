; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55142 () Bool)

(assert start!55142)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37178 0))(
  ( (array!37179 (arr!17842 (Array (_ BitVec 32) (_ BitVec 64))) (size!18206 (_ BitVec 32))) )
))
(declare-fun lt!275193 () array!37178)

(declare-fun e!345323 () Bool)

(declare-fun b!603589 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37178)

(declare-fun arrayContainsKey!0 (array!37178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603589 (= e!345323 (arrayContainsKey!0 lt!275193 (select (arr!17842 a!2986) j!136) index!984))))

(declare-fun b!603590 () Bool)

(declare-fun e!345334 () Bool)

(declare-datatypes ((SeekEntryResult!6289 0))(
  ( (MissingZero!6289 (index!27418 (_ BitVec 32))) (Found!6289 (index!27419 (_ BitVec 32))) (Intermediate!6289 (undefined!7101 Bool) (index!27420 (_ BitVec 32)) (x!56243 (_ BitVec 32))) (Undefined!6289) (MissingVacant!6289 (index!27421 (_ BitVec 32))) )
))
(declare-fun lt!275194 () SeekEntryResult!6289)

(declare-fun lt!275185 () SeekEntryResult!6289)

(assert (=> b!603590 (= e!345334 (= lt!275194 lt!275185))))

(declare-fun b!603591 () Bool)

(declare-datatypes ((Unit!19162 0))(
  ( (Unit!19163) )
))
(declare-fun e!345327 () Unit!19162)

(declare-fun Unit!19164 () Unit!19162)

(assert (=> b!603591 (= e!345327 Unit!19164)))

(declare-fun b!603592 () Bool)

(declare-fun e!345324 () Bool)

(declare-fun e!345322 () Bool)

(assert (=> b!603592 (= e!345324 e!345322)))

(declare-fun res!387809 () Bool)

(assert (=> b!603592 (=> (not res!387809) (not e!345322))))

(declare-fun lt!275191 () SeekEntryResult!6289)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603592 (= res!387809 (or (= lt!275191 (MissingZero!6289 i!1108)) (= lt!275191 (MissingVacant!6289 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37178 (_ BitVec 32)) SeekEntryResult!6289)

(assert (=> b!603592 (= lt!275191 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!603593 () Bool)

(declare-fun res!387808 () Bool)

(assert (=> b!603593 (=> (not res!387808) (not e!345324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603593 (= res!387808 (validKeyInArray!0 (select (arr!17842 a!2986) j!136)))))

(declare-fun res!387800 () Bool)

(assert (=> start!55142 (=> (not res!387800) (not e!345324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55142 (= res!387800 (validMask!0 mask!3053))))

(assert (=> start!55142 e!345324))

(assert (=> start!55142 true))

(declare-fun array_inv!13616 (array!37178) Bool)

(assert (=> start!55142 (array_inv!13616 a!2986)))

(declare-fun b!603594 () Bool)

(declare-fun e!345320 () Bool)

(assert (=> b!603594 (= e!345320 true)))

(declare-fun e!345325 () Bool)

(assert (=> b!603594 e!345325))

(declare-fun res!387810 () Bool)

(assert (=> b!603594 (=> (not res!387810) (not e!345325))))

(assert (=> b!603594 (= res!387810 (arrayContainsKey!0 lt!275193 (select (arr!17842 a!2986) j!136) j!136))))

(declare-fun b!603595 () Bool)

(declare-fun e!345332 () Bool)

(declare-fun e!345331 () Bool)

(assert (=> b!603595 (= e!345332 e!345331)))

(declare-fun res!387815 () Bool)

(assert (=> b!603595 (=> res!387815 e!345331)))

(declare-fun lt!275183 () (_ BitVec 64))

(declare-fun lt!275190 () (_ BitVec 64))

(assert (=> b!603595 (= res!387815 (or (not (= (select (arr!17842 a!2986) j!136) lt!275190)) (not (= (select (arr!17842 a!2986) j!136) lt!275183)) (bvsge j!136 index!984)))))

(declare-fun b!603596 () Bool)

(declare-fun e!345326 () Bool)

(assert (=> b!603596 (= e!345322 e!345326)))

(declare-fun res!387803 () Bool)

(assert (=> b!603596 (=> (not res!387803) (not e!345326))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!603596 (= res!387803 (= (select (store (arr!17842 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603596 (= lt!275193 (array!37179 (store (arr!17842 a!2986) i!1108 k0!1786) (size!18206 a!2986)))))

(declare-fun b!603597 () Bool)

(declare-fun e!345328 () Bool)

(declare-fun e!345329 () Bool)

(assert (=> b!603597 (= e!345328 (not e!345329))))

(declare-fun res!387807 () Bool)

(assert (=> b!603597 (=> res!387807 e!345329)))

(declare-fun lt!275182 () SeekEntryResult!6289)

(assert (=> b!603597 (= res!387807 (not (= lt!275182 (Found!6289 index!984))))))

(declare-fun lt!275189 () Unit!19162)

(declare-fun e!345333 () Unit!19162)

(assert (=> b!603597 (= lt!275189 e!345333)))

(declare-fun c!68263 () Bool)

(assert (=> b!603597 (= c!68263 (= lt!275182 Undefined!6289))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37178 (_ BitVec 32)) SeekEntryResult!6289)

(assert (=> b!603597 (= lt!275182 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275190 lt!275193 mask!3053))))

(assert (=> b!603597 e!345334))

(declare-fun res!387799 () Bool)

(assert (=> b!603597 (=> (not res!387799) (not e!345334))))

(declare-fun lt!275184 () (_ BitVec 32))

(assert (=> b!603597 (= res!387799 (= lt!275185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275184 vacantSpotIndex!68 lt!275190 lt!275193 mask!3053)))))

(assert (=> b!603597 (= lt!275185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275184 vacantSpotIndex!68 (select (arr!17842 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603597 (= lt!275190 (select (store (arr!17842 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275186 () Unit!19162)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37178 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19162)

(assert (=> b!603597 (= lt!275186 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275184 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603597 (= lt!275184 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603598 () Bool)

(declare-fun res!387797 () Bool)

(assert (=> b!603598 (=> (not res!387797) (not e!345322))))

(assert (=> b!603598 (= res!387797 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17842 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603599 () Bool)

(assert (=> b!603599 (= e!345325 (arrayContainsKey!0 lt!275193 (select (arr!17842 a!2986) j!136) index!984))))

(declare-fun b!603600 () Bool)

(assert (=> b!603600 (= e!345331 e!345323)))

(declare-fun res!387811 () Bool)

(assert (=> b!603600 (=> (not res!387811) (not e!345323))))

(assert (=> b!603600 (= res!387811 (arrayContainsKey!0 lt!275193 (select (arr!17842 a!2986) j!136) j!136))))

(declare-fun b!603601 () Bool)

(declare-fun res!387801 () Bool)

(assert (=> b!603601 (=> (not res!387801) (not e!345324))))

(assert (=> b!603601 (= res!387801 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603602 () Bool)

(declare-fun Unit!19165 () Unit!19162)

(assert (=> b!603602 (= e!345327 Unit!19165)))

(declare-fun lt!275196 () Unit!19162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37178 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19162)

(assert (=> b!603602 (= lt!275196 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275193 (select (arr!17842 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603602 (arrayContainsKey!0 lt!275193 (select (arr!17842 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275195 () Unit!19162)

(declare-datatypes ((List!11936 0))(
  ( (Nil!11933) (Cons!11932 (h!12977 (_ BitVec 64)) (t!18172 List!11936)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37178 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11936) Unit!19162)

(assert (=> b!603602 (= lt!275195 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11933))))

(declare-fun arrayNoDuplicates!0 (array!37178 (_ BitVec 32) List!11936) Bool)

(assert (=> b!603602 (arrayNoDuplicates!0 lt!275193 #b00000000000000000000000000000000 Nil!11933)))

(declare-fun lt!275187 () Unit!19162)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37178 (_ BitVec 32) (_ BitVec 32)) Unit!19162)

(assert (=> b!603602 (= lt!275187 (lemmaNoDuplicateFromThenFromBigger!0 lt!275193 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603602 (arrayNoDuplicates!0 lt!275193 j!136 Nil!11933)))

(declare-fun lt!275188 () Unit!19162)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37178 (_ BitVec 64) (_ BitVec 32) List!11936) Unit!19162)

(assert (=> b!603602 (= lt!275188 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275193 (select (arr!17842 a!2986) j!136) j!136 Nil!11933))))

(assert (=> b!603602 false))

(declare-fun b!603603 () Bool)

(assert (=> b!603603 (= e!345326 e!345328)))

(declare-fun res!387805 () Bool)

(assert (=> b!603603 (=> (not res!387805) (not e!345328))))

(assert (=> b!603603 (= res!387805 (and (= lt!275194 (Found!6289 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17842 a!2986) index!984) (select (arr!17842 a!2986) j!136))) (not (= (select (arr!17842 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!603603 (= lt!275194 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17842 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603604 () Bool)

(declare-fun res!387798 () Bool)

(assert (=> b!603604 (=> (not res!387798) (not e!345322))))

(assert (=> b!603604 (= res!387798 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11933))))

(declare-fun b!603605 () Bool)

(declare-fun Unit!19166 () Unit!19162)

(assert (=> b!603605 (= e!345333 Unit!19166)))

(declare-fun b!603606 () Bool)

(declare-fun res!387812 () Bool)

(assert (=> b!603606 (=> (not res!387812) (not e!345324))))

(assert (=> b!603606 (= res!387812 (validKeyInArray!0 k0!1786))))

(declare-fun b!603607 () Bool)

(declare-fun Unit!19167 () Unit!19162)

(assert (=> b!603607 (= e!345333 Unit!19167)))

(assert (=> b!603607 false))

(declare-fun b!603608 () Bool)

(declare-fun e!345321 () Bool)

(assert (=> b!603608 (= e!345329 e!345321)))

(declare-fun res!387802 () Bool)

(assert (=> b!603608 (=> res!387802 e!345321)))

(assert (=> b!603608 (= res!387802 (or (not (= (select (arr!17842 a!2986) j!136) lt!275190)) (not (= (select (arr!17842 a!2986) j!136) lt!275183))))))

(assert (=> b!603608 e!345332))

(declare-fun res!387814 () Bool)

(assert (=> b!603608 (=> (not res!387814) (not e!345332))))

(assert (=> b!603608 (= res!387814 (= lt!275183 (select (arr!17842 a!2986) j!136)))))

(assert (=> b!603608 (= lt!275183 (select (store (arr!17842 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!603609 () Bool)

(declare-fun res!387806 () Bool)

(assert (=> b!603609 (=> (not res!387806) (not e!345322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37178 (_ BitVec 32)) Bool)

(assert (=> b!603609 (= res!387806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603610 () Bool)

(assert (=> b!603610 (= e!345321 e!345320)))

(declare-fun res!387813 () Bool)

(assert (=> b!603610 (=> res!387813 e!345320)))

(assert (=> b!603610 (= res!387813 (bvsge index!984 j!136))))

(declare-fun lt!275192 () Unit!19162)

(assert (=> b!603610 (= lt!275192 e!345327)))

(declare-fun c!68264 () Bool)

(assert (=> b!603610 (= c!68264 (bvslt j!136 index!984))))

(declare-fun b!603611 () Bool)

(declare-fun res!387804 () Bool)

(assert (=> b!603611 (=> (not res!387804) (not e!345324))))

(assert (=> b!603611 (= res!387804 (and (= (size!18206 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18206 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18206 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55142 res!387800) b!603611))

(assert (= (and b!603611 res!387804) b!603593))

(assert (= (and b!603593 res!387808) b!603606))

(assert (= (and b!603606 res!387812) b!603601))

(assert (= (and b!603601 res!387801) b!603592))

(assert (= (and b!603592 res!387809) b!603609))

(assert (= (and b!603609 res!387806) b!603604))

(assert (= (and b!603604 res!387798) b!603598))

(assert (= (and b!603598 res!387797) b!603596))

(assert (= (and b!603596 res!387803) b!603603))

(assert (= (and b!603603 res!387805) b!603597))

(assert (= (and b!603597 res!387799) b!603590))

(assert (= (and b!603597 c!68263) b!603607))

(assert (= (and b!603597 (not c!68263)) b!603605))

(assert (= (and b!603597 (not res!387807)) b!603608))

(assert (= (and b!603608 res!387814) b!603595))

(assert (= (and b!603595 (not res!387815)) b!603600))

(assert (= (and b!603600 res!387811) b!603589))

(assert (= (and b!603608 (not res!387802)) b!603610))

(assert (= (and b!603610 c!68264) b!603602))

(assert (= (and b!603610 (not c!68264)) b!603591))

(assert (= (and b!603610 (not res!387813)) b!603594))

(assert (= (and b!603594 res!387810) b!603599))

(declare-fun m!580611 () Bool)

(assert (=> b!603600 m!580611))

(assert (=> b!603600 m!580611))

(declare-fun m!580613 () Bool)

(assert (=> b!603600 m!580613))

(assert (=> b!603608 m!580611))

(declare-fun m!580615 () Bool)

(assert (=> b!603608 m!580615))

(declare-fun m!580617 () Bool)

(assert (=> b!603608 m!580617))

(assert (=> b!603596 m!580615))

(declare-fun m!580619 () Bool)

(assert (=> b!603596 m!580619))

(assert (=> b!603589 m!580611))

(assert (=> b!603589 m!580611))

(declare-fun m!580621 () Bool)

(assert (=> b!603589 m!580621))

(declare-fun m!580623 () Bool)

(assert (=> b!603598 m!580623))

(declare-fun m!580625 () Bool)

(assert (=> b!603602 m!580625))

(declare-fun m!580627 () Bool)

(assert (=> b!603602 m!580627))

(assert (=> b!603602 m!580611))

(declare-fun m!580629 () Bool)

(assert (=> b!603602 m!580629))

(assert (=> b!603602 m!580611))

(declare-fun m!580631 () Bool)

(assert (=> b!603602 m!580631))

(assert (=> b!603602 m!580611))

(declare-fun m!580633 () Bool)

(assert (=> b!603602 m!580633))

(assert (=> b!603602 m!580611))

(declare-fun m!580635 () Bool)

(assert (=> b!603602 m!580635))

(declare-fun m!580637 () Bool)

(assert (=> b!603602 m!580637))

(assert (=> b!603599 m!580611))

(assert (=> b!603599 m!580611))

(assert (=> b!603599 m!580621))

(declare-fun m!580639 () Bool)

(assert (=> b!603601 m!580639))

(declare-fun m!580641 () Bool)

(assert (=> b!603604 m!580641))

(assert (=> b!603593 m!580611))

(assert (=> b!603593 m!580611))

(declare-fun m!580643 () Bool)

(assert (=> b!603593 m!580643))

(declare-fun m!580645 () Bool)

(assert (=> b!603606 m!580645))

(declare-fun m!580647 () Bool)

(assert (=> b!603592 m!580647))

(assert (=> b!603595 m!580611))

(declare-fun m!580649 () Bool)

(assert (=> b!603609 m!580649))

(declare-fun m!580651 () Bool)

(assert (=> start!55142 m!580651))

(declare-fun m!580653 () Bool)

(assert (=> start!55142 m!580653))

(assert (=> b!603594 m!580611))

(assert (=> b!603594 m!580611))

(assert (=> b!603594 m!580613))

(declare-fun m!580655 () Bool)

(assert (=> b!603603 m!580655))

(assert (=> b!603603 m!580611))

(assert (=> b!603603 m!580611))

(declare-fun m!580657 () Bool)

(assert (=> b!603603 m!580657))

(declare-fun m!580659 () Bool)

(assert (=> b!603597 m!580659))

(declare-fun m!580661 () Bool)

(assert (=> b!603597 m!580661))

(assert (=> b!603597 m!580611))

(assert (=> b!603597 m!580615))

(declare-fun m!580663 () Bool)

(assert (=> b!603597 m!580663))

(assert (=> b!603597 m!580611))

(declare-fun m!580665 () Bool)

(assert (=> b!603597 m!580665))

(declare-fun m!580667 () Bool)

(assert (=> b!603597 m!580667))

(declare-fun m!580669 () Bool)

(assert (=> b!603597 m!580669))

(check-sat (not b!603592) (not b!603589) (not b!603599) (not b!603600) (not b!603602) (not b!603593) (not b!603594) (not b!603603) (not b!603609) (not b!603597) (not b!603604) (not b!603601) (not b!603606) (not start!55142))
(check-sat)
