; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53962 () Bool)

(assert start!53962)

(declare-fun b!588676 () Bool)

(declare-datatypes ((Unit!18328 0))(
  ( (Unit!18329) )
))
(declare-fun e!336131 () Unit!18328)

(declare-fun Unit!18330 () Unit!18328)

(assert (=> b!588676 (= e!336131 Unit!18330)))

(declare-fun b!588677 () Bool)

(declare-fun res!376429 () Bool)

(declare-fun e!336128 () Bool)

(assert (=> b!588677 (=> (not res!376429) (not e!336128))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36760 0))(
  ( (array!36761 (arr!17649 (Array (_ BitVec 32) (_ BitVec 64))) (size!18013 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36760)

(assert (=> b!588677 (= res!376429 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17649 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588678 () Bool)

(declare-fun e!336130 () Bool)

(declare-fun e!336127 () Bool)

(assert (=> b!588678 (= e!336130 e!336127)))

(declare-fun res!376428 () Bool)

(assert (=> b!588678 (=> (not res!376428) (not e!336127))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6096 0))(
  ( (MissingZero!6096 (index!26614 (_ BitVec 32))) (Found!6096 (index!26615 (_ BitVec 32))) (Intermediate!6096 (undefined!6908 Bool) (index!26616 (_ BitVec 32)) (x!55441 (_ BitVec 32))) (Undefined!6096) (MissingVacant!6096 (index!26617 (_ BitVec 32))) )
))
(declare-fun lt!266984 () SeekEntryResult!6096)

(assert (=> b!588678 (= res!376428 (and (= lt!266984 (Found!6096 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17649 a!2986) index!984) (select (arr!17649 a!2986) j!136))) (not (= (select (arr!17649 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36760 (_ BitVec 32)) SeekEntryResult!6096)

(assert (=> b!588678 (= lt!266984 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17649 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588679 () Bool)

(declare-fun res!376425 () Bool)

(declare-fun e!336133 () Bool)

(assert (=> b!588679 (=> (not res!376425) (not e!336133))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588679 (= res!376425 (validKeyInArray!0 k!1786))))

(declare-fun b!588680 () Bool)

(declare-fun res!376426 () Bool)

(assert (=> b!588680 (=> (not res!376426) (not e!336133))))

(assert (=> b!588680 (= res!376426 (validKeyInArray!0 (select (arr!17649 a!2986) j!136)))))

(declare-fun res!376423 () Bool)

(assert (=> start!53962 (=> (not res!376423) (not e!336133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53962 (= res!376423 (validMask!0 mask!3053))))

(assert (=> start!53962 e!336133))

(assert (=> start!53962 true))

(declare-fun array_inv!13423 (array!36760) Bool)

(assert (=> start!53962 (array_inv!13423 a!2986)))

(declare-fun b!588681 () Bool)

(declare-fun res!376432 () Bool)

(assert (=> b!588681 (=> (not res!376432) (not e!336133))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588681 (= res!376432 (and (= (size!18013 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18013 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18013 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588682 () Bool)

(assert (=> b!588682 (= e!336133 e!336128)))

(declare-fun res!376433 () Bool)

(assert (=> b!588682 (=> (not res!376433) (not e!336128))))

(declare-fun lt!266979 () SeekEntryResult!6096)

(assert (=> b!588682 (= res!376433 (or (= lt!266979 (MissingZero!6096 i!1108)) (= lt!266979 (MissingVacant!6096 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36760 (_ BitVec 32)) SeekEntryResult!6096)

(assert (=> b!588682 (= lt!266979 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588683 () Bool)

(declare-fun e!336129 () Bool)

(declare-fun lt!266977 () SeekEntryResult!6096)

(assert (=> b!588683 (= e!336129 (= lt!266984 lt!266977))))

(declare-fun b!588684 () Bool)

(declare-fun res!376424 () Bool)

(assert (=> b!588684 (=> (not res!376424) (not e!336128))))

(declare-datatypes ((List!11743 0))(
  ( (Nil!11740) (Cons!11739 (h!12784 (_ BitVec 64)) (t!17979 List!11743)) )
))
(declare-fun arrayNoDuplicates!0 (array!36760 (_ BitVec 32) List!11743) Bool)

(assert (=> b!588684 (= res!376424 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11740))))

(declare-fun b!588685 () Bool)

(declare-fun res!376427 () Bool)

(assert (=> b!588685 (=> (not res!376427) (not e!336128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36760 (_ BitVec 32)) Bool)

(assert (=> b!588685 (= res!376427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588686 () Bool)

(declare-fun Unit!18331 () Unit!18328)

(assert (=> b!588686 (= e!336131 Unit!18331)))

(assert (=> b!588686 false))

(declare-fun b!588687 () Bool)

(assert (=> b!588687 (= e!336128 e!336130)))

(declare-fun res!376430 () Bool)

(assert (=> b!588687 (=> (not res!376430) (not e!336130))))

(assert (=> b!588687 (= res!376430 (= (select (store (arr!17649 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!266978 () array!36760)

(assert (=> b!588687 (= lt!266978 (array!36761 (store (arr!17649 a!2986) i!1108 k!1786) (size!18013 a!2986)))))

(declare-fun b!588688 () Bool)

(declare-fun res!376422 () Bool)

(assert (=> b!588688 (=> (not res!376422) (not e!336133))))

(declare-fun arrayContainsKey!0 (array!36760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588688 (= res!376422 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588689 () Bool)

(assert (=> b!588689 (= e!336127 (not true))))

(declare-fun lt!266982 () Unit!18328)

(assert (=> b!588689 (= lt!266982 e!336131)))

(declare-fun lt!266983 () (_ BitVec 64))

(declare-fun c!66494 () Bool)

(assert (=> b!588689 (= c!66494 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266983 lt!266978 mask!3053) Undefined!6096))))

(assert (=> b!588689 e!336129))

(declare-fun res!376431 () Bool)

(assert (=> b!588689 (=> (not res!376431) (not e!336129))))

(declare-fun lt!266981 () (_ BitVec 32))

(assert (=> b!588689 (= res!376431 (= lt!266977 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266981 vacantSpotIndex!68 lt!266983 lt!266978 mask!3053)))))

(assert (=> b!588689 (= lt!266977 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266981 vacantSpotIndex!68 (select (arr!17649 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588689 (= lt!266983 (select (store (arr!17649 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!266980 () Unit!18328)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36760 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18328)

(assert (=> b!588689 (= lt!266980 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266981 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588689 (= lt!266981 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53962 res!376423) b!588681))

(assert (= (and b!588681 res!376432) b!588680))

(assert (= (and b!588680 res!376426) b!588679))

(assert (= (and b!588679 res!376425) b!588688))

(assert (= (and b!588688 res!376422) b!588682))

(assert (= (and b!588682 res!376433) b!588685))

(assert (= (and b!588685 res!376427) b!588684))

(assert (= (and b!588684 res!376424) b!588677))

(assert (= (and b!588677 res!376429) b!588687))

(assert (= (and b!588687 res!376430) b!588678))

(assert (= (and b!588678 res!376428) b!588689))

(assert (= (and b!588689 res!376431) b!588683))

(assert (= (and b!588689 c!66494) b!588686))

(assert (= (and b!588689 (not c!66494)) b!588676))

(declare-fun m!567283 () Bool)

(assert (=> b!588682 m!567283))

(declare-fun m!567285 () Bool)

(assert (=> b!588678 m!567285))

(declare-fun m!567287 () Bool)

(assert (=> b!588678 m!567287))

(assert (=> b!588678 m!567287))

(declare-fun m!567289 () Bool)

(assert (=> b!588678 m!567289))

(declare-fun m!567291 () Bool)

(assert (=> start!53962 m!567291))

(declare-fun m!567293 () Bool)

(assert (=> start!53962 m!567293))

(declare-fun m!567295 () Bool)

(assert (=> b!588677 m!567295))

(declare-fun m!567297 () Bool)

(assert (=> b!588687 m!567297))

(declare-fun m!567299 () Bool)

(assert (=> b!588687 m!567299))

(declare-fun m!567301 () Bool)

(assert (=> b!588679 m!567301))

(declare-fun m!567303 () Bool)

(assert (=> b!588688 m!567303))

(declare-fun m!567305 () Bool)

(assert (=> b!588685 m!567305))

(assert (=> b!588680 m!567287))

(assert (=> b!588680 m!567287))

(declare-fun m!567307 () Bool)

(assert (=> b!588680 m!567307))

(declare-fun m!567309 () Bool)

(assert (=> b!588689 m!567309))

(declare-fun m!567311 () Bool)

(assert (=> b!588689 m!567311))

(assert (=> b!588689 m!567297))

(declare-fun m!567313 () Bool)

(assert (=> b!588689 m!567313))

(declare-fun m!567315 () Bool)

(assert (=> b!588689 m!567315))

(declare-fun m!567317 () Bool)

(assert (=> b!588689 m!567317))

(assert (=> b!588689 m!567287))

(assert (=> b!588689 m!567287))

(declare-fun m!567319 () Bool)

(assert (=> b!588689 m!567319))

(declare-fun m!567321 () Bool)

(assert (=> b!588684 m!567321))

(push 1)

