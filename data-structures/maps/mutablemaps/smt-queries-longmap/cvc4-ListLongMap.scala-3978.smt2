; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53960 () Bool)

(assert start!53960)

(declare-fun b!588634 () Bool)

(declare-datatypes ((Unit!18324 0))(
  ( (Unit!18325) )
))
(declare-fun e!336110 () Unit!18324)

(declare-fun Unit!18326 () Unit!18324)

(assert (=> b!588634 (= e!336110 Unit!18326)))

(assert (=> b!588634 false))

(declare-fun b!588635 () Bool)

(declare-fun Unit!18327 () Unit!18324)

(assert (=> b!588635 (= e!336110 Unit!18327)))

(declare-fun b!588636 () Bool)

(declare-fun res!376394 () Bool)

(declare-fun e!336108 () Bool)

(assert (=> b!588636 (=> (not res!376394) (not e!336108))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588636 (= res!376394 (validKeyInArray!0 k!1786))))

(declare-fun b!588637 () Bool)

(declare-fun e!336111 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!588637 (= e!336111 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266955 () Unit!18324)

(assert (=> b!588637 (= lt!266955 e!336110)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun c!66491 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36758 0))(
  ( (array!36759 (arr!17648 (Array (_ BitVec 32) (_ BitVec 64))) (size!18012 (_ BitVec 32))) )
))
(declare-fun lt!266959 () array!36758)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!266960 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!6095 0))(
  ( (MissingZero!6095 (index!26610 (_ BitVec 32))) (Found!6095 (index!26611 (_ BitVec 32))) (Intermediate!6095 (undefined!6907 Bool) (index!26612 (_ BitVec 32)) (x!55432 (_ BitVec 32))) (Undefined!6095) (MissingVacant!6095 (index!26613 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36758 (_ BitVec 32)) SeekEntryResult!6095)

(assert (=> b!588637 (= c!66491 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266960 lt!266959 mask!3053) Undefined!6095))))

(declare-fun e!336106 () Bool)

(assert (=> b!588637 e!336106))

(declare-fun res!376387 () Bool)

(assert (=> b!588637 (=> (not res!376387) (not e!336106))))

(declare-fun lt!266958 () SeekEntryResult!6095)

(declare-fun lt!266954 () (_ BitVec 32))

(assert (=> b!588637 (= res!376387 (= lt!266958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266954 vacantSpotIndex!68 lt!266960 lt!266959 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36758)

(assert (=> b!588637 (= lt!266958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266954 vacantSpotIndex!68 (select (arr!17648 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588637 (= lt!266960 (select (store (arr!17648 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!266957 () Unit!18324)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36758 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18324)

(assert (=> b!588637 (= lt!266957 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266954 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588637 (= lt!266954 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588638 () Bool)

(declare-fun e!336109 () Bool)

(assert (=> b!588638 (= e!336109 e!336111)))

(declare-fun res!376390 () Bool)

(assert (=> b!588638 (=> (not res!376390) (not e!336111))))

(declare-fun lt!266953 () SeekEntryResult!6095)

(assert (=> b!588638 (= res!376390 (and (= lt!266953 (Found!6095 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17648 a!2986) index!984) (select (arr!17648 a!2986) j!136))) (not (= (select (arr!17648 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588638 (= lt!266953 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17648 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588639 () Bool)

(declare-fun res!376396 () Bool)

(declare-fun e!336112 () Bool)

(assert (=> b!588639 (=> (not res!376396) (not e!336112))))

(assert (=> b!588639 (= res!376396 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17648 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588640 () Bool)

(assert (=> b!588640 (= e!336112 e!336109)))

(declare-fun res!376386 () Bool)

(assert (=> b!588640 (=> (not res!376386) (not e!336109))))

(assert (=> b!588640 (= res!376386 (= (select (store (arr!17648 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588640 (= lt!266959 (array!36759 (store (arr!17648 a!2986) i!1108 k!1786) (size!18012 a!2986)))))

(declare-fun b!588642 () Bool)

(assert (=> b!588642 (= e!336106 (= lt!266953 lt!266958))))

(declare-fun b!588643 () Bool)

(declare-fun res!376391 () Bool)

(assert (=> b!588643 (=> (not res!376391) (not e!336112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36758 (_ BitVec 32)) Bool)

(assert (=> b!588643 (= res!376391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588644 () Bool)

(assert (=> b!588644 (= e!336108 e!336112)))

(declare-fun res!376389 () Bool)

(assert (=> b!588644 (=> (not res!376389) (not e!336112))))

(declare-fun lt!266956 () SeekEntryResult!6095)

(assert (=> b!588644 (= res!376389 (or (= lt!266956 (MissingZero!6095 i!1108)) (= lt!266956 (MissingVacant!6095 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36758 (_ BitVec 32)) SeekEntryResult!6095)

(assert (=> b!588644 (= lt!266956 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588645 () Bool)

(declare-fun res!376392 () Bool)

(assert (=> b!588645 (=> (not res!376392) (not e!336108))))

(declare-fun arrayContainsKey!0 (array!36758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588645 (= res!376392 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588646 () Bool)

(declare-fun res!376397 () Bool)

(assert (=> b!588646 (=> (not res!376397) (not e!336112))))

(declare-datatypes ((List!11742 0))(
  ( (Nil!11739) (Cons!11738 (h!12783 (_ BitVec 64)) (t!17978 List!11742)) )
))
(declare-fun arrayNoDuplicates!0 (array!36758 (_ BitVec 32) List!11742) Bool)

(assert (=> b!588646 (= res!376397 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11739))))

(declare-fun b!588647 () Bool)

(declare-fun res!376388 () Bool)

(assert (=> b!588647 (=> (not res!376388) (not e!336108))))

(assert (=> b!588647 (= res!376388 (and (= (size!18012 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18012 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18012 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!376395 () Bool)

(assert (=> start!53960 (=> (not res!376395) (not e!336108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53960 (= res!376395 (validMask!0 mask!3053))))

(assert (=> start!53960 e!336108))

(assert (=> start!53960 true))

(declare-fun array_inv!13422 (array!36758) Bool)

(assert (=> start!53960 (array_inv!13422 a!2986)))

(declare-fun b!588641 () Bool)

(declare-fun res!376393 () Bool)

(assert (=> b!588641 (=> (not res!376393) (not e!336108))))

(assert (=> b!588641 (= res!376393 (validKeyInArray!0 (select (arr!17648 a!2986) j!136)))))

(assert (= (and start!53960 res!376395) b!588647))

(assert (= (and b!588647 res!376388) b!588641))

(assert (= (and b!588641 res!376393) b!588636))

(assert (= (and b!588636 res!376394) b!588645))

(assert (= (and b!588645 res!376392) b!588644))

(assert (= (and b!588644 res!376389) b!588643))

(assert (= (and b!588643 res!376391) b!588646))

(assert (= (and b!588646 res!376397) b!588639))

(assert (= (and b!588639 res!376396) b!588640))

(assert (= (and b!588640 res!376386) b!588638))

(assert (= (and b!588638 res!376390) b!588637))

(assert (= (and b!588637 res!376387) b!588642))

(assert (= (and b!588637 c!66491) b!588634))

(assert (= (and b!588637 (not c!66491)) b!588635))

(declare-fun m!567243 () Bool)

(assert (=> start!53960 m!567243))

(declare-fun m!567245 () Bool)

(assert (=> start!53960 m!567245))

(declare-fun m!567247 () Bool)

(assert (=> b!588638 m!567247))

(declare-fun m!567249 () Bool)

(assert (=> b!588638 m!567249))

(assert (=> b!588638 m!567249))

(declare-fun m!567251 () Bool)

(assert (=> b!588638 m!567251))

(declare-fun m!567253 () Bool)

(assert (=> b!588637 m!567253))

(assert (=> b!588637 m!567249))

(declare-fun m!567255 () Bool)

(assert (=> b!588637 m!567255))

(assert (=> b!588637 m!567249))

(declare-fun m!567257 () Bool)

(assert (=> b!588637 m!567257))

(declare-fun m!567259 () Bool)

(assert (=> b!588637 m!567259))

(declare-fun m!567261 () Bool)

(assert (=> b!588637 m!567261))

(declare-fun m!567263 () Bool)

(assert (=> b!588637 m!567263))

(declare-fun m!567265 () Bool)

(assert (=> b!588637 m!567265))

(assert (=> b!588641 m!567249))

(assert (=> b!588641 m!567249))

(declare-fun m!567267 () Bool)

(assert (=> b!588641 m!567267))

(declare-fun m!567269 () Bool)

(assert (=> b!588645 m!567269))

(declare-fun m!567271 () Bool)

(assert (=> b!588643 m!567271))

(declare-fun m!567273 () Bool)

(assert (=> b!588636 m!567273))

(declare-fun m!567275 () Bool)

(assert (=> b!588646 m!567275))

(declare-fun m!567277 () Bool)

(assert (=> b!588644 m!567277))

(assert (=> b!588640 m!567257))

(declare-fun m!567279 () Bool)

(assert (=> b!588640 m!567279))

(declare-fun m!567281 () Bool)

(assert (=> b!588639 m!567281))

(push 1)

