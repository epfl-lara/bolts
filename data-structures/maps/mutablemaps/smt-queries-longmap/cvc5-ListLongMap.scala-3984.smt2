; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53992 () Bool)

(assert start!53992)

(declare-fun b!589308 () Bool)

(declare-fun res!376969 () Bool)

(declare-fun e!336450 () Bool)

(assert (=> b!589308 (=> (not res!376969) (not e!336450))))

(declare-datatypes ((array!36790 0))(
  ( (array!36791 (arr!17664 (Array (_ BitVec 32) (_ BitVec 64))) (size!18028 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36790)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36790 (_ BitVec 32)) Bool)

(assert (=> b!589308 (= res!376969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589309 () Bool)

(declare-fun e!336445 () Bool)

(declare-fun e!336444 () Bool)

(assert (=> b!589309 (= e!336445 e!336444)))

(declare-fun res!376970 () Bool)

(assert (=> b!589309 (=> (not res!376970) (not e!336444))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6111 0))(
  ( (MissingZero!6111 (index!26674 (_ BitVec 32))) (Found!6111 (index!26675 (_ BitVec 32))) (Intermediate!6111 (undefined!6923 Bool) (index!26676 (_ BitVec 32)) (x!55496 (_ BitVec 32))) (Undefined!6111) (MissingVacant!6111 (index!26677 (_ BitVec 32))) )
))
(declare-fun lt!267338 () SeekEntryResult!6111)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589309 (= res!376970 (and (= lt!267338 (Found!6111 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17664 a!2986) index!984) (select (arr!17664 a!2986) j!136))) (not (= (select (arr!17664 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36790 (_ BitVec 32)) SeekEntryResult!6111)

(assert (=> b!589309 (= lt!267338 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17664 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589310 () Bool)

(declare-fun e!336448 () Bool)

(assert (=> b!589310 (= e!336448 e!336450)))

(declare-fun res!376973 () Bool)

(assert (=> b!589310 (=> (not res!376973) (not e!336450))))

(declare-fun lt!267343 () SeekEntryResult!6111)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589310 (= res!376973 (or (= lt!267343 (MissingZero!6111 i!1108)) (= lt!267343 (MissingVacant!6111 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36790 (_ BitVec 32)) SeekEntryResult!6111)

(assert (=> b!589310 (= lt!267343 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589311 () Bool)

(declare-datatypes ((Unit!18388 0))(
  ( (Unit!18389) )
))
(declare-fun e!336451 () Unit!18388)

(declare-fun Unit!18390 () Unit!18388)

(assert (=> b!589311 (= e!336451 Unit!18390)))

(assert (=> b!589311 false))

(declare-fun b!589312 () Bool)

(declare-fun res!376968 () Bool)

(assert (=> b!589312 (=> (not res!376968) (not e!336448))))

(assert (=> b!589312 (= res!376968 (and (= (size!18028 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18028 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18028 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!376971 () Bool)

(assert (=> start!53992 (=> (not res!376971) (not e!336448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53992 (= res!376971 (validMask!0 mask!3053))))

(assert (=> start!53992 e!336448))

(assert (=> start!53992 true))

(declare-fun array_inv!13438 (array!36790) Bool)

(assert (=> start!53992 (array_inv!13438 a!2986)))

(declare-fun b!589313 () Bool)

(declare-fun res!376964 () Bool)

(assert (=> b!589313 (=> (not res!376964) (not e!336450))))

(assert (=> b!589313 (= res!376964 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17664 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589314 () Bool)

(declare-fun e!336449 () Bool)

(assert (=> b!589314 (= e!336444 (not e!336449))))

(declare-fun res!376972 () Bool)

(assert (=> b!589314 (=> res!376972 e!336449)))

(assert (=> b!589314 (= res!376972 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!267344 () Unit!18388)

(assert (=> b!589314 (= lt!267344 e!336451)))

(declare-fun c!66539 () Bool)

(declare-fun lt!267339 () array!36790)

(declare-fun lt!267341 () (_ BitVec 64))

(assert (=> b!589314 (= c!66539 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267341 lt!267339 mask!3053) Undefined!6111))))

(declare-fun e!336447 () Bool)

(assert (=> b!589314 e!336447))

(declare-fun res!376965 () Bool)

(assert (=> b!589314 (=> (not res!376965) (not e!336447))))

(declare-fun lt!267340 () (_ BitVec 32))

(declare-fun lt!267342 () SeekEntryResult!6111)

(assert (=> b!589314 (= res!376965 (= lt!267342 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267340 vacantSpotIndex!68 lt!267341 lt!267339 mask!3053)))))

(assert (=> b!589314 (= lt!267342 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267340 vacantSpotIndex!68 (select (arr!17664 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589314 (= lt!267341 (select (store (arr!17664 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267337 () Unit!18388)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36790 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18388)

(assert (=> b!589314 (= lt!267337 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267340 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589314 (= lt!267340 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589315 () Bool)

(declare-fun res!376967 () Bool)

(assert (=> b!589315 (=> (not res!376967) (not e!336448))))

(declare-fun arrayContainsKey!0 (array!36790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589315 (= res!376967 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589316 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589316 (= e!336449 (validKeyInArray!0 lt!267341))))

(declare-fun b!589317 () Bool)

(declare-fun res!376974 () Bool)

(assert (=> b!589317 (=> (not res!376974) (not e!336448))))

(assert (=> b!589317 (= res!376974 (validKeyInArray!0 (select (arr!17664 a!2986) j!136)))))

(declare-fun b!589318 () Bool)

(declare-fun res!376966 () Bool)

(assert (=> b!589318 (=> (not res!376966) (not e!336450))))

(declare-datatypes ((List!11758 0))(
  ( (Nil!11755) (Cons!11754 (h!12799 (_ BitVec 64)) (t!17994 List!11758)) )
))
(declare-fun arrayNoDuplicates!0 (array!36790 (_ BitVec 32) List!11758) Bool)

(assert (=> b!589318 (= res!376966 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11755))))

(declare-fun b!589319 () Bool)

(declare-fun res!376976 () Bool)

(assert (=> b!589319 (=> (not res!376976) (not e!336448))))

(assert (=> b!589319 (= res!376976 (validKeyInArray!0 k!1786))))

(declare-fun b!589320 () Bool)

(assert (=> b!589320 (= e!336450 e!336445)))

(declare-fun res!376975 () Bool)

(assert (=> b!589320 (=> (not res!376975) (not e!336445))))

(assert (=> b!589320 (= res!376975 (= (select (store (arr!17664 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589320 (= lt!267339 (array!36791 (store (arr!17664 a!2986) i!1108 k!1786) (size!18028 a!2986)))))

(declare-fun b!589321 () Bool)

(declare-fun Unit!18391 () Unit!18388)

(assert (=> b!589321 (= e!336451 Unit!18391)))

(declare-fun b!589322 () Bool)

(assert (=> b!589322 (= e!336447 (= lt!267338 lt!267342))))

(assert (= (and start!53992 res!376971) b!589312))

(assert (= (and b!589312 res!376968) b!589317))

(assert (= (and b!589317 res!376974) b!589319))

(assert (= (and b!589319 res!376976) b!589315))

(assert (= (and b!589315 res!376967) b!589310))

(assert (= (and b!589310 res!376973) b!589308))

(assert (= (and b!589308 res!376969) b!589318))

(assert (= (and b!589318 res!376966) b!589313))

(assert (= (and b!589313 res!376964) b!589320))

(assert (= (and b!589320 res!376975) b!589309))

(assert (= (and b!589309 res!376970) b!589314))

(assert (= (and b!589314 res!376965) b!589322))

(assert (= (and b!589314 c!66539) b!589311))

(assert (= (and b!589314 (not c!66539)) b!589321))

(assert (= (and b!589314 (not res!376972)) b!589316))

(declare-fun m!567883 () Bool)

(assert (=> b!589319 m!567883))

(declare-fun m!567885 () Bool)

(assert (=> b!589314 m!567885))

(declare-fun m!567887 () Bool)

(assert (=> b!589314 m!567887))

(declare-fun m!567889 () Bool)

(assert (=> b!589314 m!567889))

(declare-fun m!567891 () Bool)

(assert (=> b!589314 m!567891))

(declare-fun m!567893 () Bool)

(assert (=> b!589314 m!567893))

(declare-fun m!567895 () Bool)

(assert (=> b!589314 m!567895))

(assert (=> b!589314 m!567889))

(declare-fun m!567897 () Bool)

(assert (=> b!589314 m!567897))

(declare-fun m!567899 () Bool)

(assert (=> b!589314 m!567899))

(declare-fun m!567901 () Bool)

(assert (=> b!589313 m!567901))

(assert (=> b!589320 m!567891))

(declare-fun m!567903 () Bool)

(assert (=> b!589320 m!567903))

(declare-fun m!567905 () Bool)

(assert (=> b!589308 m!567905))

(declare-fun m!567907 () Bool)

(assert (=> b!589309 m!567907))

(assert (=> b!589309 m!567889))

(assert (=> b!589309 m!567889))

(declare-fun m!567909 () Bool)

(assert (=> b!589309 m!567909))

(assert (=> b!589317 m!567889))

(assert (=> b!589317 m!567889))

(declare-fun m!567911 () Bool)

(assert (=> b!589317 m!567911))

(declare-fun m!567913 () Bool)

(assert (=> b!589318 m!567913))

(declare-fun m!567915 () Bool)

(assert (=> b!589310 m!567915))

(declare-fun m!567917 () Bool)

(assert (=> start!53992 m!567917))

(declare-fun m!567919 () Bool)

(assert (=> start!53992 m!567919))

(declare-fun m!567921 () Bool)

(assert (=> b!589316 m!567921))

(declare-fun m!567923 () Bool)

(assert (=> b!589315 m!567923))

(push 1)

