; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57282 () Bool)

(assert start!57282)

(declare-fun b!633699 () Bool)

(declare-datatypes ((Unit!21346 0))(
  ( (Unit!21347) )
))
(declare-fun e!362358 () Unit!21346)

(declare-fun Unit!21348 () Unit!21346)

(assert (=> b!633699 (= e!362358 Unit!21348)))

(assert (=> b!633699 false))

(declare-fun b!633700 () Bool)

(declare-fun res!409980 () Bool)

(declare-fun e!362364 () Bool)

(assert (=> b!633700 (=> (not res!409980) (not e!362364))))

(declare-datatypes ((array!38148 0))(
  ( (array!38149 (arr!18300 (Array (_ BitVec 32) (_ BitVec 64))) (size!18664 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38148)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633700 (= res!409980 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!409976 () Bool)

(assert (=> start!57282 (=> (not res!409976) (not e!362364))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57282 (= res!409976 (validMask!0 mask!3053))))

(assert (=> start!57282 e!362364))

(assert (=> start!57282 true))

(declare-fun array_inv!14074 (array!38148) Bool)

(assert (=> start!57282 (array_inv!14074 a!2986)))

(declare-fun b!633701 () Bool)

(declare-fun res!409979 () Bool)

(assert (=> b!633701 (=> (not res!409979) (not e!362364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633701 (= res!409979 (validKeyInArray!0 k!1786))))

(declare-fun b!633702 () Bool)

(declare-fun res!409975 () Bool)

(assert (=> b!633702 (=> (not res!409975) (not e!362364))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633702 (= res!409975 (and (= (size!18664 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18664 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18664 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633703 () Bool)

(declare-fun res!409986 () Bool)

(declare-fun e!362356 () Bool)

(assert (=> b!633703 (=> (not res!409986) (not e!362356))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633703 (= res!409986 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18300 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633704 () Bool)

(declare-fun e!362360 () Bool)

(assert (=> b!633704 (= e!362356 e!362360)))

(declare-fun res!409974 () Bool)

(assert (=> b!633704 (=> (not res!409974) (not e!362360))))

(assert (=> b!633704 (= res!409974 (= (select (store (arr!18300 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292975 () array!38148)

(assert (=> b!633704 (= lt!292975 (array!38149 (store (arr!18300 a!2986) i!1108 k!1786) (size!18664 a!2986)))))

(declare-fun b!633705 () Bool)

(declare-fun Unit!21349 () Unit!21346)

(assert (=> b!633705 (= e!362358 Unit!21349)))

(declare-fun b!633706 () Bool)

(declare-fun e!362361 () Bool)

(declare-fun e!362355 () Bool)

(assert (=> b!633706 (= e!362361 e!362355)))

(declare-fun res!409987 () Bool)

(assert (=> b!633706 (=> res!409987 e!362355)))

(declare-fun lt!292974 () (_ BitVec 64))

(declare-fun lt!292973 () (_ BitVec 64))

(assert (=> b!633706 (= res!409987 (or (not (= (select (arr!18300 a!2986) j!136) lt!292973)) (not (= (select (arr!18300 a!2986) j!136) lt!292974)) (bvsge j!136 index!984)))))

(declare-fun b!633707 () Bool)

(declare-fun e!362365 () Bool)

(assert (=> b!633707 (= e!362365 (arrayContainsKey!0 lt!292975 (select (arr!18300 a!2986) j!136) index!984))))

(declare-fun b!633708 () Bool)

(declare-fun res!409978 () Bool)

(assert (=> b!633708 (=> (not res!409978) (not e!362356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38148 (_ BitVec 32)) Bool)

(assert (=> b!633708 (= res!409978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633709 () Bool)

(declare-fun e!362359 () Bool)

(declare-datatypes ((SeekEntryResult!6747 0))(
  ( (MissingZero!6747 (index!29286 (_ BitVec 32))) (Found!6747 (index!29287 (_ BitVec 32))) (Intermediate!6747 (undefined!7559 Bool) (index!29288 (_ BitVec 32)) (x!58057 (_ BitVec 32))) (Undefined!6747) (MissingVacant!6747 (index!29289 (_ BitVec 32))) )
))
(declare-fun lt!292976 () SeekEntryResult!6747)

(declare-fun lt!292971 () SeekEntryResult!6747)

(assert (=> b!633709 (= e!362359 (= lt!292976 lt!292971))))

(declare-fun b!633710 () Bool)

(assert (=> b!633710 (= e!362364 e!362356)))

(declare-fun res!409983 () Bool)

(assert (=> b!633710 (=> (not res!409983) (not e!362356))))

(declare-fun lt!292977 () SeekEntryResult!6747)

(assert (=> b!633710 (= res!409983 (or (= lt!292977 (MissingZero!6747 i!1108)) (= lt!292977 (MissingVacant!6747 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38148 (_ BitVec 32)) SeekEntryResult!6747)

(assert (=> b!633710 (= lt!292977 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633711 () Bool)

(assert (=> b!633711 (= e!362355 e!362365)))

(declare-fun res!409977 () Bool)

(assert (=> b!633711 (=> (not res!409977) (not e!362365))))

(assert (=> b!633711 (= res!409977 (arrayContainsKey!0 lt!292975 (select (arr!18300 a!2986) j!136) j!136))))

(declare-fun b!633712 () Bool)

(declare-fun e!362363 () Bool)

(assert (=> b!633712 (= e!362363 true)))

(assert (=> b!633712 e!362361))

(declare-fun res!409973 () Bool)

(assert (=> b!633712 (=> (not res!409973) (not e!362361))))

(assert (=> b!633712 (= res!409973 (= lt!292974 (select (arr!18300 a!2986) j!136)))))

(assert (=> b!633712 (= lt!292974 (select (store (arr!18300 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633713 () Bool)

(declare-fun res!409982 () Bool)

(assert (=> b!633713 (=> (not res!409982) (not e!362364))))

(assert (=> b!633713 (= res!409982 (validKeyInArray!0 (select (arr!18300 a!2986) j!136)))))

(declare-fun b!633714 () Bool)

(declare-fun e!362362 () Bool)

(assert (=> b!633714 (= e!362360 e!362362)))

(declare-fun res!409981 () Bool)

(assert (=> b!633714 (=> (not res!409981) (not e!362362))))

(assert (=> b!633714 (= res!409981 (and (= lt!292976 (Found!6747 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18300 a!2986) index!984) (select (arr!18300 a!2986) j!136))) (not (= (select (arr!18300 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38148 (_ BitVec 32)) SeekEntryResult!6747)

(assert (=> b!633714 (= lt!292976 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18300 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633715 () Bool)

(assert (=> b!633715 (= e!362362 (not e!362363))))

(declare-fun res!409984 () Bool)

(assert (=> b!633715 (=> res!409984 e!362363)))

(declare-fun lt!292979 () SeekEntryResult!6747)

(assert (=> b!633715 (= res!409984 (not (= lt!292979 (Found!6747 index!984))))))

(declare-fun lt!292980 () Unit!21346)

(assert (=> b!633715 (= lt!292980 e!362358)))

(declare-fun c!72230 () Bool)

(assert (=> b!633715 (= c!72230 (= lt!292979 Undefined!6747))))

(assert (=> b!633715 (= lt!292979 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292973 lt!292975 mask!3053))))

(assert (=> b!633715 e!362359))

(declare-fun res!409985 () Bool)

(assert (=> b!633715 (=> (not res!409985) (not e!362359))))

(declare-fun lt!292978 () (_ BitVec 32))

(assert (=> b!633715 (= res!409985 (= lt!292971 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292978 vacantSpotIndex!68 lt!292973 lt!292975 mask!3053)))))

(assert (=> b!633715 (= lt!292971 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292978 vacantSpotIndex!68 (select (arr!18300 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633715 (= lt!292973 (select (store (arr!18300 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292972 () Unit!21346)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21346)

(assert (=> b!633715 (= lt!292972 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292978 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633715 (= lt!292978 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633716 () Bool)

(declare-fun res!409988 () Bool)

(assert (=> b!633716 (=> (not res!409988) (not e!362356))))

(declare-datatypes ((List!12394 0))(
  ( (Nil!12391) (Cons!12390 (h!13435 (_ BitVec 64)) (t!18630 List!12394)) )
))
(declare-fun arrayNoDuplicates!0 (array!38148 (_ BitVec 32) List!12394) Bool)

(assert (=> b!633716 (= res!409988 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12391))))

(assert (= (and start!57282 res!409976) b!633702))

(assert (= (and b!633702 res!409975) b!633713))

(assert (= (and b!633713 res!409982) b!633701))

(assert (= (and b!633701 res!409979) b!633700))

(assert (= (and b!633700 res!409980) b!633710))

(assert (= (and b!633710 res!409983) b!633708))

(assert (= (and b!633708 res!409978) b!633716))

(assert (= (and b!633716 res!409988) b!633703))

(assert (= (and b!633703 res!409986) b!633704))

(assert (= (and b!633704 res!409974) b!633714))

(assert (= (and b!633714 res!409981) b!633715))

(assert (= (and b!633715 res!409985) b!633709))

(assert (= (and b!633715 c!72230) b!633699))

(assert (= (and b!633715 (not c!72230)) b!633705))

(assert (= (and b!633715 (not res!409984)) b!633712))

(assert (= (and b!633712 res!409973) b!633706))

(assert (= (and b!633706 (not res!409987)) b!633711))

(assert (= (and b!633711 res!409977) b!633707))

(declare-fun m!608355 () Bool)

(assert (=> b!633708 m!608355))

(declare-fun m!608357 () Bool)

(assert (=> b!633706 m!608357))

(declare-fun m!608359 () Bool)

(assert (=> b!633716 m!608359))

(declare-fun m!608361 () Bool)

(assert (=> b!633715 m!608361))

(assert (=> b!633715 m!608357))

(declare-fun m!608363 () Bool)

(assert (=> b!633715 m!608363))

(declare-fun m!608365 () Bool)

(assert (=> b!633715 m!608365))

(declare-fun m!608367 () Bool)

(assert (=> b!633715 m!608367))

(assert (=> b!633715 m!608357))

(declare-fun m!608369 () Bool)

(assert (=> b!633715 m!608369))

(declare-fun m!608371 () Bool)

(assert (=> b!633715 m!608371))

(declare-fun m!608373 () Bool)

(assert (=> b!633715 m!608373))

(declare-fun m!608375 () Bool)

(assert (=> start!57282 m!608375))

(declare-fun m!608377 () Bool)

(assert (=> start!57282 m!608377))

(assert (=> b!633712 m!608357))

(assert (=> b!633712 m!608363))

(declare-fun m!608379 () Bool)

(assert (=> b!633712 m!608379))

(declare-fun m!608381 () Bool)

(assert (=> b!633714 m!608381))

(assert (=> b!633714 m!608357))

(assert (=> b!633714 m!608357))

(declare-fun m!608383 () Bool)

(assert (=> b!633714 m!608383))

(declare-fun m!608385 () Bool)

(assert (=> b!633703 m!608385))

(assert (=> b!633713 m!608357))

(assert (=> b!633713 m!608357))

(declare-fun m!608387 () Bool)

(assert (=> b!633713 m!608387))

(assert (=> b!633707 m!608357))

(assert (=> b!633707 m!608357))

(declare-fun m!608389 () Bool)

(assert (=> b!633707 m!608389))

(declare-fun m!608391 () Bool)

(assert (=> b!633700 m!608391))

(declare-fun m!608393 () Bool)

(assert (=> b!633701 m!608393))

(declare-fun m!608395 () Bool)

(assert (=> b!633710 m!608395))

(assert (=> b!633704 m!608363))

(declare-fun m!608397 () Bool)

(assert (=> b!633704 m!608397))

(assert (=> b!633711 m!608357))

(assert (=> b!633711 m!608357))

(declare-fun m!608399 () Bool)

(assert (=> b!633711 m!608399))

(push 1)

