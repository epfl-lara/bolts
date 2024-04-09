; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53664 () Bool)

(assert start!53664)

(declare-fun b!584343 () Bool)

(declare-fun e!334576 () Bool)

(assert (=> b!584343 (= e!334576 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36519 0))(
  ( (array!36520 (arr!17530 (Array (_ BitVec 32) (_ BitVec 64))) (size!17894 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36519)

(declare-datatypes ((SeekEntryResult!5977 0))(
  ( (MissingZero!5977 (index!26135 (_ BitVec 32))) (Found!5977 (index!26136 (_ BitVec 32))) (Intermediate!5977 (undefined!6789 Bool) (index!26137 (_ BitVec 32)) (x!54993 (_ BitVec 32))) (Undefined!5977) (MissingVacant!5977 (index!26138 (_ BitVec 32))) )
))
(declare-fun lt!265561 () SeekEntryResult!5977)

(declare-fun lt!265560 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36519 (_ BitVec 32)) SeekEntryResult!5977)

(assert (=> b!584343 (= lt!265561 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265560 vacantSpotIndex!68 (select (arr!17530 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372313 () Bool)

(declare-fun e!334577 () Bool)

(assert (=> start!53664 (=> (not res!372313) (not e!334577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53664 (= res!372313 (validMask!0 mask!3053))))

(assert (=> start!53664 e!334577))

(assert (=> start!53664 true))

(declare-fun array_inv!13304 (array!36519) Bool)

(assert (=> start!53664 (array_inv!13304 a!2986)))

(declare-fun b!584344 () Bool)

(declare-fun res!372319 () Bool)

(assert (=> b!584344 (=> (not res!372319) (not e!334577))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584344 (= res!372319 (and (= (size!17894 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17894 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17894 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584345 () Bool)

(declare-fun res!372320 () Bool)

(assert (=> b!584345 (=> (not res!372320) (not e!334577))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584345 (= res!372320 (validKeyInArray!0 k0!1786))))

(declare-fun b!584346 () Bool)

(declare-fun e!334578 () Bool)

(assert (=> b!584346 (= e!334578 e!334576)))

(declare-fun res!372311 () Bool)

(assert (=> b!584346 (=> (not res!372311) (not e!334576))))

(assert (=> b!584346 (= res!372311 (and (bvsge lt!265560 #b00000000000000000000000000000000) (bvslt lt!265560 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584346 (= lt!265560 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584347 () Bool)

(declare-fun res!372310 () Bool)

(assert (=> b!584347 (=> (not res!372310) (not e!334577))))

(declare-fun arrayContainsKey!0 (array!36519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584347 (= res!372310 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584348 () Bool)

(declare-fun res!372316 () Bool)

(assert (=> b!584348 (=> (not res!372316) (not e!334578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36519 (_ BitVec 32)) Bool)

(assert (=> b!584348 (= res!372316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584349 () Bool)

(declare-fun res!372318 () Bool)

(assert (=> b!584349 (=> (not res!372318) (not e!334578))))

(declare-datatypes ((List!11624 0))(
  ( (Nil!11621) (Cons!11620 (h!12665 (_ BitVec 64)) (t!17860 List!11624)) )
))
(declare-fun arrayNoDuplicates!0 (array!36519 (_ BitVec 32) List!11624) Bool)

(assert (=> b!584349 (= res!372318 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11621))))

(declare-fun b!584350 () Bool)

(assert (=> b!584350 (= e!334577 e!334578)))

(declare-fun res!372317 () Bool)

(assert (=> b!584350 (=> (not res!372317) (not e!334578))))

(declare-fun lt!265562 () SeekEntryResult!5977)

(assert (=> b!584350 (= res!372317 (or (= lt!265562 (MissingZero!5977 i!1108)) (= lt!265562 (MissingVacant!5977 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36519 (_ BitVec 32)) SeekEntryResult!5977)

(assert (=> b!584350 (= lt!265562 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584351 () Bool)

(declare-fun res!372315 () Bool)

(assert (=> b!584351 (=> (not res!372315) (not e!334578))))

(assert (=> b!584351 (= res!372315 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17530 a!2986) index!984) (select (arr!17530 a!2986) j!136))) (not (= (select (arr!17530 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584352 () Bool)

(declare-fun res!372314 () Bool)

(assert (=> b!584352 (=> (not res!372314) (not e!334577))))

(assert (=> b!584352 (= res!372314 (validKeyInArray!0 (select (arr!17530 a!2986) j!136)))))

(declare-fun b!584353 () Bool)

(declare-fun res!372312 () Bool)

(assert (=> b!584353 (=> (not res!372312) (not e!334578))))

(assert (=> b!584353 (= res!372312 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17530 a!2986) j!136) a!2986 mask!3053) (Found!5977 j!136)))))

(declare-fun b!584354 () Bool)

(declare-fun res!372309 () Bool)

(assert (=> b!584354 (=> (not res!372309) (not e!334578))))

(assert (=> b!584354 (= res!372309 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17530 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17530 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53664 res!372313) b!584344))

(assert (= (and b!584344 res!372319) b!584352))

(assert (= (and b!584352 res!372314) b!584345))

(assert (= (and b!584345 res!372320) b!584347))

(assert (= (and b!584347 res!372310) b!584350))

(assert (= (and b!584350 res!372317) b!584348))

(assert (= (and b!584348 res!372316) b!584349))

(assert (= (and b!584349 res!372318) b!584354))

(assert (= (and b!584354 res!372309) b!584353))

(assert (= (and b!584353 res!372312) b!584351))

(assert (= (and b!584351 res!372315) b!584346))

(assert (= (and b!584346 res!372311) b!584343))

(declare-fun m!562737 () Bool)

(assert (=> b!584347 m!562737))

(declare-fun m!562739 () Bool)

(assert (=> b!584354 m!562739))

(declare-fun m!562741 () Bool)

(assert (=> b!584354 m!562741))

(declare-fun m!562743 () Bool)

(assert (=> b!584354 m!562743))

(declare-fun m!562745 () Bool)

(assert (=> start!53664 m!562745))

(declare-fun m!562747 () Bool)

(assert (=> start!53664 m!562747))

(declare-fun m!562749 () Bool)

(assert (=> b!584346 m!562749))

(declare-fun m!562751 () Bool)

(assert (=> b!584351 m!562751))

(declare-fun m!562753 () Bool)

(assert (=> b!584351 m!562753))

(declare-fun m!562755 () Bool)

(assert (=> b!584350 m!562755))

(assert (=> b!584352 m!562753))

(assert (=> b!584352 m!562753))

(declare-fun m!562757 () Bool)

(assert (=> b!584352 m!562757))

(declare-fun m!562759 () Bool)

(assert (=> b!584349 m!562759))

(declare-fun m!562761 () Bool)

(assert (=> b!584348 m!562761))

(assert (=> b!584353 m!562753))

(assert (=> b!584353 m!562753))

(declare-fun m!562763 () Bool)

(assert (=> b!584353 m!562763))

(assert (=> b!584343 m!562753))

(assert (=> b!584343 m!562753))

(declare-fun m!562765 () Bool)

(assert (=> b!584343 m!562765))

(declare-fun m!562767 () Bool)

(assert (=> b!584345 m!562767))

(check-sat (not b!584345) (not start!53664) (not b!584343) (not b!584349) (not b!584350) (not b!584353) (not b!584347) (not b!584352) (not b!584346) (not b!584348))
(check-sat)
