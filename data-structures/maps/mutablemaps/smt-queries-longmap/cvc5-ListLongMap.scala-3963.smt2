; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53806 () Bool)

(assert start!53806)

(declare-fun b!586771 () Bool)

(declare-fun res!374737 () Bool)

(declare-fun e!335302 () Bool)

(assert (=> b!586771 (=> (not res!374737) (not e!335302))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36661 0))(
  ( (array!36662 (arr!17601 (Array (_ BitVec 32) (_ BitVec 64))) (size!17965 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36661)

(assert (=> b!586771 (= res!374737 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17601 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17601 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586772 () Bool)

(declare-fun res!374747 () Bool)

(declare-fun e!335301 () Bool)

(assert (=> b!586772 (=> (not res!374747) (not e!335301))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586772 (= res!374747 (validKeyInArray!0 (select (arr!17601 a!2986) j!136)))))

(declare-fun b!586773 () Bool)

(assert (=> b!586773 (= e!335301 e!335302)))

(declare-fun res!374745 () Bool)

(assert (=> b!586773 (=> (not res!374745) (not e!335302))))

(declare-datatypes ((SeekEntryResult!6048 0))(
  ( (MissingZero!6048 (index!26419 (_ BitVec 32))) (Found!6048 (index!26420 (_ BitVec 32))) (Intermediate!6048 (undefined!6860 Bool) (index!26421 (_ BitVec 32)) (x!55256 (_ BitVec 32))) (Undefined!6048) (MissingVacant!6048 (index!26422 (_ BitVec 32))) )
))
(declare-fun lt!266200 () SeekEntryResult!6048)

(assert (=> b!586773 (= res!374745 (or (= lt!266200 (MissingZero!6048 i!1108)) (= lt!266200 (MissingVacant!6048 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36661 (_ BitVec 32)) SeekEntryResult!6048)

(assert (=> b!586773 (= lt!266200 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!374740 () Bool)

(assert (=> start!53806 (=> (not res!374740) (not e!335301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53806 (= res!374740 (validMask!0 mask!3053))))

(assert (=> start!53806 e!335301))

(assert (=> start!53806 true))

(declare-fun array_inv!13375 (array!36661) Bool)

(assert (=> start!53806 (array_inv!13375 a!2986)))

(declare-fun b!586774 () Bool)

(declare-fun res!374741 () Bool)

(assert (=> b!586774 (=> (not res!374741) (not e!335302))))

(assert (=> b!586774 (= res!374741 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17601 a!2986) index!984) (select (arr!17601 a!2986) j!136))) (not (= (select (arr!17601 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586775 () Bool)

(assert (=> b!586775 (= e!335302 (not true))))

(declare-fun lt!266201 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36661 (_ BitVec 32)) SeekEntryResult!6048)

(assert (=> b!586775 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266201 vacantSpotIndex!68 (select (arr!17601 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266201 vacantSpotIndex!68 (select (store (arr!17601 a!2986) i!1108 k!1786) j!136) (array!36662 (store (arr!17601 a!2986) i!1108 k!1786) (size!17965 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18220 0))(
  ( (Unit!18221) )
))
(declare-fun lt!266199 () Unit!18220)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18220)

(assert (=> b!586775 (= lt!266199 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266201 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586775 (= lt!266201 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586776 () Bool)

(declare-fun res!374739 () Bool)

(assert (=> b!586776 (=> (not res!374739) (not e!335301))))

(declare-fun arrayContainsKey!0 (array!36661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586776 (= res!374739 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586777 () Bool)

(declare-fun res!374743 () Bool)

(assert (=> b!586777 (=> (not res!374743) (not e!335302))))

(assert (=> b!586777 (= res!374743 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17601 a!2986) j!136) a!2986 mask!3053) (Found!6048 j!136)))))

(declare-fun b!586778 () Bool)

(declare-fun res!374738 () Bool)

(assert (=> b!586778 (=> (not res!374738) (not e!335302))))

(declare-datatypes ((List!11695 0))(
  ( (Nil!11692) (Cons!11691 (h!12736 (_ BitVec 64)) (t!17931 List!11695)) )
))
(declare-fun arrayNoDuplicates!0 (array!36661 (_ BitVec 32) List!11695) Bool)

(assert (=> b!586778 (= res!374738 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11692))))

(declare-fun b!586779 () Bool)

(declare-fun res!374744 () Bool)

(assert (=> b!586779 (=> (not res!374744) (not e!335301))))

(assert (=> b!586779 (= res!374744 (and (= (size!17965 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17965 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17965 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586780 () Bool)

(declare-fun res!374742 () Bool)

(assert (=> b!586780 (=> (not res!374742) (not e!335301))))

(assert (=> b!586780 (= res!374742 (validKeyInArray!0 k!1786))))

(declare-fun b!586781 () Bool)

(declare-fun res!374746 () Bool)

(assert (=> b!586781 (=> (not res!374746) (not e!335302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36661 (_ BitVec 32)) Bool)

(assert (=> b!586781 (= res!374746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53806 res!374740) b!586779))

(assert (= (and b!586779 res!374744) b!586772))

(assert (= (and b!586772 res!374747) b!586780))

(assert (= (and b!586780 res!374742) b!586776))

(assert (= (and b!586776 res!374739) b!586773))

(assert (= (and b!586773 res!374745) b!586781))

(assert (= (and b!586781 res!374746) b!586778))

(assert (= (and b!586778 res!374738) b!586771))

(assert (= (and b!586771 res!374737) b!586777))

(assert (= (and b!586777 res!374743) b!586774))

(assert (= (and b!586774 res!374741) b!586775))

(declare-fun m!565261 () Bool)

(assert (=> b!586781 m!565261))

(declare-fun m!565263 () Bool)

(assert (=> b!586778 m!565263))

(declare-fun m!565265 () Bool)

(assert (=> b!586776 m!565265))

(declare-fun m!565267 () Bool)

(assert (=> b!586773 m!565267))

(declare-fun m!565269 () Bool)

(assert (=> b!586775 m!565269))

(declare-fun m!565271 () Bool)

(assert (=> b!586775 m!565271))

(declare-fun m!565273 () Bool)

(assert (=> b!586775 m!565273))

(declare-fun m!565275 () Bool)

(assert (=> b!586775 m!565275))

(assert (=> b!586775 m!565269))

(declare-fun m!565277 () Bool)

(assert (=> b!586775 m!565277))

(assert (=> b!586775 m!565273))

(declare-fun m!565279 () Bool)

(assert (=> b!586775 m!565279))

(declare-fun m!565281 () Bool)

(assert (=> b!586775 m!565281))

(declare-fun m!565283 () Bool)

(assert (=> b!586780 m!565283))

(declare-fun m!565285 () Bool)

(assert (=> b!586774 m!565285))

(assert (=> b!586774 m!565273))

(declare-fun m!565287 () Bool)

(assert (=> start!53806 m!565287))

(declare-fun m!565289 () Bool)

(assert (=> start!53806 m!565289))

(assert (=> b!586772 m!565273))

(assert (=> b!586772 m!565273))

(declare-fun m!565291 () Bool)

(assert (=> b!586772 m!565291))

(declare-fun m!565293 () Bool)

(assert (=> b!586771 m!565293))

(assert (=> b!586771 m!565275))

(declare-fun m!565295 () Bool)

(assert (=> b!586771 m!565295))

(assert (=> b!586777 m!565273))

(assert (=> b!586777 m!565273))

(declare-fun m!565297 () Bool)

(assert (=> b!586777 m!565297))

(push 1)

