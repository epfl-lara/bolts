; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53716 () Bool)

(assert start!53716)

(declare-fun b!585279 () Bool)

(declare-fun res!373249 () Bool)

(declare-fun e!334890 () Bool)

(assert (=> b!585279 (=> (not res!373249) (not e!334890))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36571 0))(
  ( (array!36572 (arr!17556 (Array (_ BitVec 32) (_ BitVec 64))) (size!17920 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36571)

(assert (=> b!585279 (= res!373249 (and (= (size!17920 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17920 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17920 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585280 () Bool)

(declare-fun e!334888 () Bool)

(assert (=> b!585280 (= e!334890 e!334888)))

(declare-fun res!373253 () Bool)

(assert (=> b!585280 (=> (not res!373253) (not e!334888))))

(declare-datatypes ((SeekEntryResult!6003 0))(
  ( (MissingZero!6003 (index!26239 (_ BitVec 32))) (Found!6003 (index!26240 (_ BitVec 32))) (Intermediate!6003 (undefined!6815 Bool) (index!26241 (_ BitVec 32)) (x!55091 (_ BitVec 32))) (Undefined!6003) (MissingVacant!6003 (index!26242 (_ BitVec 32))) )
))
(declare-fun lt!265796 () SeekEntryResult!6003)

(assert (=> b!585280 (= res!373253 (or (= lt!265796 (MissingZero!6003 i!1108)) (= lt!265796 (MissingVacant!6003 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36571 (_ BitVec 32)) SeekEntryResult!6003)

(assert (=> b!585280 (= lt!265796 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585281 () Bool)

(declare-fun res!373251 () Bool)

(assert (=> b!585281 (=> (not res!373251) (not e!334888))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585281 (= res!373251 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17556 a!2986) index!984) (select (arr!17556 a!2986) j!136))) (not (= (select (arr!17556 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585282 () Bool)

(declare-fun e!334891 () Bool)

(assert (=> b!585282 (= e!334888 e!334891)))

(declare-fun res!373254 () Bool)

(assert (=> b!585282 (=> (not res!373254) (not e!334891))))

(declare-fun lt!265794 () (_ BitVec 32))

(assert (=> b!585282 (= res!373254 (and (bvsge lt!265794 #b00000000000000000000000000000000) (bvslt lt!265794 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585282 (= lt!265794 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585283 () Bool)

(declare-fun res!373256 () Bool)

(assert (=> b!585283 (=> (not res!373256) (not e!334888))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36571 (_ BitVec 32)) SeekEntryResult!6003)

(assert (=> b!585283 (= res!373256 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17556 a!2986) j!136) a!2986 mask!3053) (Found!6003 j!136)))))

(declare-fun b!585284 () Bool)

(declare-fun res!373255 () Bool)

(assert (=> b!585284 (=> (not res!373255) (not e!334890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585284 (= res!373255 (validKeyInArray!0 (select (arr!17556 a!2986) j!136)))))

(declare-fun b!585285 () Bool)

(declare-fun res!373250 () Bool)

(assert (=> b!585285 (=> (not res!373250) (not e!334888))))

(declare-datatypes ((List!11650 0))(
  ( (Nil!11647) (Cons!11646 (h!12691 (_ BitVec 64)) (t!17886 List!11650)) )
))
(declare-fun arrayNoDuplicates!0 (array!36571 (_ BitVec 32) List!11650) Bool)

(assert (=> b!585285 (= res!373250 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11647))))

(declare-fun b!585286 () Bool)

(declare-fun res!373252 () Bool)

(assert (=> b!585286 (=> (not res!373252) (not e!334890))))

(declare-fun arrayContainsKey!0 (array!36571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585286 (= res!373252 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585287 () Bool)

(assert (=> b!585287 (= e!334891 false)))

(declare-fun lt!265795 () SeekEntryResult!6003)

(assert (=> b!585287 (= lt!265795 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265794 vacantSpotIndex!68 (select (arr!17556 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585288 () Bool)

(declare-fun res!373248 () Bool)

(assert (=> b!585288 (=> (not res!373248) (not e!334888))))

(assert (=> b!585288 (= res!373248 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17556 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17556 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!373246 () Bool)

(assert (=> start!53716 (=> (not res!373246) (not e!334890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53716 (= res!373246 (validMask!0 mask!3053))))

(assert (=> start!53716 e!334890))

(assert (=> start!53716 true))

(declare-fun array_inv!13330 (array!36571) Bool)

(assert (=> start!53716 (array_inv!13330 a!2986)))

(declare-fun b!585289 () Bool)

(declare-fun res!373247 () Bool)

(assert (=> b!585289 (=> (not res!373247) (not e!334888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36571 (_ BitVec 32)) Bool)

(assert (=> b!585289 (= res!373247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585290 () Bool)

(declare-fun res!373245 () Bool)

(assert (=> b!585290 (=> (not res!373245) (not e!334890))))

(assert (=> b!585290 (= res!373245 (validKeyInArray!0 k!1786))))

(assert (= (and start!53716 res!373246) b!585279))

(assert (= (and b!585279 res!373249) b!585284))

(assert (= (and b!585284 res!373255) b!585290))

(assert (= (and b!585290 res!373245) b!585286))

(assert (= (and b!585286 res!373252) b!585280))

(assert (= (and b!585280 res!373253) b!585289))

(assert (= (and b!585289 res!373247) b!585285))

(assert (= (and b!585285 res!373250) b!585288))

(assert (= (and b!585288 res!373248) b!585283))

(assert (= (and b!585283 res!373256) b!585281))

(assert (= (and b!585281 res!373251) b!585282))

(assert (= (and b!585282 res!373254) b!585287))

(declare-fun m!563569 () Bool)

(assert (=> b!585290 m!563569))

(declare-fun m!563571 () Bool)

(assert (=> b!585286 m!563571))

(declare-fun m!563573 () Bool)

(assert (=> b!585289 m!563573))

(declare-fun m!563575 () Bool)

(assert (=> b!585284 m!563575))

(assert (=> b!585284 m!563575))

(declare-fun m!563577 () Bool)

(assert (=> b!585284 m!563577))

(declare-fun m!563579 () Bool)

(assert (=> b!585285 m!563579))

(assert (=> b!585287 m!563575))

(assert (=> b!585287 m!563575))

(declare-fun m!563581 () Bool)

(assert (=> b!585287 m!563581))

(declare-fun m!563583 () Bool)

(assert (=> b!585288 m!563583))

(declare-fun m!563585 () Bool)

(assert (=> b!585288 m!563585))

(declare-fun m!563587 () Bool)

(assert (=> b!585288 m!563587))

(assert (=> b!585283 m!563575))

(assert (=> b!585283 m!563575))

(declare-fun m!563589 () Bool)

(assert (=> b!585283 m!563589))

(declare-fun m!563591 () Bool)

(assert (=> b!585280 m!563591))

(declare-fun m!563593 () Bool)

(assert (=> b!585282 m!563593))

(declare-fun m!563595 () Bool)

(assert (=> start!53716 m!563595))

(declare-fun m!563597 () Bool)

(assert (=> start!53716 m!563597))

(declare-fun m!563599 () Bool)

(assert (=> b!585281 m!563599))

(assert (=> b!585281 m!563575))

(push 1)

