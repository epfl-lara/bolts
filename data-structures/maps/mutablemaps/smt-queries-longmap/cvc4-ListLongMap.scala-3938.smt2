; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53660 () Bool)

(assert start!53660)

(declare-fun b!584271 () Bool)

(declare-fun res!372239 () Bool)

(declare-fun e!334553 () Bool)

(assert (=> b!584271 (=> (not res!372239) (not e!334553))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36515 0))(
  ( (array!36516 (arr!17528 (Array (_ BitVec 32) (_ BitVec 64))) (size!17892 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36515)

(assert (=> b!584271 (= res!372239 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17528 a!2986) index!984) (select (arr!17528 a!2986) j!136))) (not (= (select (arr!17528 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584272 () Bool)

(declare-fun res!372237 () Bool)

(declare-fun e!334555 () Bool)

(assert (=> b!584272 (=> (not res!372237) (not e!334555))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584272 (= res!372237 (validKeyInArray!0 k!1786))))

(declare-fun b!584273 () Bool)

(declare-fun res!372244 () Bool)

(assert (=> b!584273 (=> (not res!372244) (not e!334555))))

(assert (=> b!584273 (= res!372244 (validKeyInArray!0 (select (arr!17528 a!2986) j!136)))))

(declare-fun b!584274 () Bool)

(declare-fun res!372246 () Bool)

(assert (=> b!584274 (=> (not res!372246) (not e!334553))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36515 (_ BitVec 32)) Bool)

(assert (=> b!584274 (= res!372246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584275 () Bool)

(declare-fun res!372238 () Bool)

(assert (=> b!584275 (=> (not res!372238) (not e!334553))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!584275 (= res!372238 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17528 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17528 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584277 () Bool)

(declare-fun e!334554 () Bool)

(assert (=> b!584277 (= e!334553 e!334554)))

(declare-fun res!372247 () Bool)

(assert (=> b!584277 (=> (not res!372247) (not e!334554))))

(declare-fun lt!265544 () (_ BitVec 32))

(assert (=> b!584277 (= res!372247 (and (bvsge lt!265544 #b00000000000000000000000000000000) (bvslt lt!265544 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584277 (= lt!265544 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584278 () Bool)

(declare-fun res!372243 () Bool)

(assert (=> b!584278 (=> (not res!372243) (not e!334555))))

(declare-fun arrayContainsKey!0 (array!36515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584278 (= res!372243 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584276 () Bool)

(declare-fun res!372248 () Bool)

(assert (=> b!584276 (=> (not res!372248) (not e!334553))))

(declare-datatypes ((SeekEntryResult!5975 0))(
  ( (MissingZero!5975 (index!26127 (_ BitVec 32))) (Found!5975 (index!26128 (_ BitVec 32))) (Intermediate!5975 (undefined!6787 Bool) (index!26129 (_ BitVec 32)) (x!54983 (_ BitVec 32))) (Undefined!5975) (MissingVacant!5975 (index!26130 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36515 (_ BitVec 32)) SeekEntryResult!5975)

(assert (=> b!584276 (= res!372248 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17528 a!2986) j!136) a!2986 mask!3053) (Found!5975 j!136)))))

(declare-fun res!372240 () Bool)

(assert (=> start!53660 (=> (not res!372240) (not e!334555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53660 (= res!372240 (validMask!0 mask!3053))))

(assert (=> start!53660 e!334555))

(assert (=> start!53660 true))

(declare-fun array_inv!13302 (array!36515) Bool)

(assert (=> start!53660 (array_inv!13302 a!2986)))

(declare-fun b!584279 () Bool)

(declare-fun res!372242 () Bool)

(assert (=> b!584279 (=> (not res!372242) (not e!334555))))

(assert (=> b!584279 (= res!372242 (and (= (size!17892 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17892 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17892 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584280 () Bool)

(declare-fun res!372241 () Bool)

(assert (=> b!584280 (=> (not res!372241) (not e!334553))))

(declare-datatypes ((List!11622 0))(
  ( (Nil!11619) (Cons!11618 (h!12663 (_ BitVec 64)) (t!17858 List!11622)) )
))
(declare-fun arrayNoDuplicates!0 (array!36515 (_ BitVec 32) List!11622) Bool)

(assert (=> b!584280 (= res!372241 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11619))))

(declare-fun b!584281 () Bool)

(assert (=> b!584281 (= e!334555 e!334553)))

(declare-fun res!372245 () Bool)

(assert (=> b!584281 (=> (not res!372245) (not e!334553))))

(declare-fun lt!265542 () SeekEntryResult!5975)

(assert (=> b!584281 (= res!372245 (or (= lt!265542 (MissingZero!5975 i!1108)) (= lt!265542 (MissingVacant!5975 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36515 (_ BitVec 32)) SeekEntryResult!5975)

(assert (=> b!584281 (= lt!265542 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584282 () Bool)

(assert (=> b!584282 (= e!334554 false)))

(declare-fun lt!265543 () SeekEntryResult!5975)

(assert (=> b!584282 (= lt!265543 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265544 vacantSpotIndex!68 (select (arr!17528 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53660 res!372240) b!584279))

(assert (= (and b!584279 res!372242) b!584273))

(assert (= (and b!584273 res!372244) b!584272))

(assert (= (and b!584272 res!372237) b!584278))

(assert (= (and b!584278 res!372243) b!584281))

(assert (= (and b!584281 res!372245) b!584274))

(assert (= (and b!584274 res!372246) b!584280))

(assert (= (and b!584280 res!372241) b!584275))

(assert (= (and b!584275 res!372238) b!584276))

(assert (= (and b!584276 res!372248) b!584271))

(assert (= (and b!584271 res!372239) b!584277))

(assert (= (and b!584277 res!372247) b!584282))

(declare-fun m!562673 () Bool)

(assert (=> b!584274 m!562673))

(declare-fun m!562675 () Bool)

(assert (=> b!584273 m!562675))

(assert (=> b!584273 m!562675))

(declare-fun m!562677 () Bool)

(assert (=> b!584273 m!562677))

(declare-fun m!562679 () Bool)

(assert (=> b!584275 m!562679))

(declare-fun m!562681 () Bool)

(assert (=> b!584275 m!562681))

(declare-fun m!562683 () Bool)

(assert (=> b!584275 m!562683))

(declare-fun m!562685 () Bool)

(assert (=> b!584272 m!562685))

(assert (=> b!584276 m!562675))

(assert (=> b!584276 m!562675))

(declare-fun m!562687 () Bool)

(assert (=> b!584276 m!562687))

(assert (=> b!584282 m!562675))

(assert (=> b!584282 m!562675))

(declare-fun m!562689 () Bool)

(assert (=> b!584282 m!562689))

(declare-fun m!562691 () Bool)

(assert (=> b!584277 m!562691))

(declare-fun m!562693 () Bool)

(assert (=> b!584278 m!562693))

(declare-fun m!562695 () Bool)

(assert (=> b!584281 m!562695))

(declare-fun m!562697 () Bool)

(assert (=> b!584271 m!562697))

(assert (=> b!584271 m!562675))

(declare-fun m!562699 () Bool)

(assert (=> b!584280 m!562699))

(declare-fun m!562701 () Bool)

(assert (=> start!53660 m!562701))

(declare-fun m!562703 () Bool)

(assert (=> start!53660 m!562703))

(push 1)

(assert (not b!584278))

(assert (not b!584280))

(assert (not b!584276))

(assert (not start!53660))

