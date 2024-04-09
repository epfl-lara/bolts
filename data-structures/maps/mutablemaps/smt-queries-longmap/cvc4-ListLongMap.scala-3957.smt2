; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53774 () Bool)

(assert start!53774)

(declare-fun b!586243 () Bool)

(declare-fun res!374209 () Bool)

(declare-fun e!335157 () Bool)

(assert (=> b!586243 (=> (not res!374209) (not e!335157))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36629 0))(
  ( (array!36630 (arr!17585 (Array (_ BitVec 32) (_ BitVec 64))) (size!17949 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36629)

(assert (=> b!586243 (= res!374209 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17585 a!2986) index!984) (select (arr!17585 a!2986) j!136))) (not (= (select (arr!17585 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374213 () Bool)

(declare-fun e!335158 () Bool)

(assert (=> start!53774 (=> (not res!374213) (not e!335158))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53774 (= res!374213 (validMask!0 mask!3053))))

(assert (=> start!53774 e!335158))

(assert (=> start!53774 true))

(declare-fun array_inv!13359 (array!36629) Bool)

(assert (=> start!53774 (array_inv!13359 a!2986)))

(declare-fun b!586244 () Bool)

(declare-fun res!374211 () Bool)

(assert (=> b!586244 (=> (not res!374211) (not e!335157))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6032 0))(
  ( (MissingZero!6032 (index!26355 (_ BitVec 32))) (Found!6032 (index!26356 (_ BitVec 32))) (Intermediate!6032 (undefined!6844 Bool) (index!26357 (_ BitVec 32)) (x!55192 (_ BitVec 32))) (Undefined!6032) (MissingVacant!6032 (index!26358 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36629 (_ BitVec 32)) SeekEntryResult!6032)

(assert (=> b!586244 (= res!374211 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17585 a!2986) j!136) a!2986 mask!3053) (Found!6032 j!136)))))

(declare-fun b!586245 () Bool)

(declare-fun res!374212 () Bool)

(assert (=> b!586245 (=> (not res!374212) (not e!335157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36629 (_ BitVec 32)) Bool)

(assert (=> b!586245 (= res!374212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586246 () Bool)

(assert (=> b!586246 (= e!335158 e!335157)))

(declare-fun res!374216 () Bool)

(assert (=> b!586246 (=> (not res!374216) (not e!335157))))

(declare-fun lt!266055 () SeekEntryResult!6032)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586246 (= res!374216 (or (= lt!266055 (MissingZero!6032 i!1108)) (= lt!266055 (MissingVacant!6032 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36629 (_ BitVec 32)) SeekEntryResult!6032)

(assert (=> b!586246 (= lt!266055 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586247 () Bool)

(declare-fun res!374219 () Bool)

(assert (=> b!586247 (=> (not res!374219) (not e!335158))))

(declare-fun arrayContainsKey!0 (array!36629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586247 (= res!374219 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586248 () Bool)

(declare-fun res!374214 () Bool)

(assert (=> b!586248 (=> (not res!374214) (not e!335158))))

(assert (=> b!586248 (= res!374214 (and (= (size!17949 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17949 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17949 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586249 () Bool)

(declare-fun res!374215 () Bool)

(assert (=> b!586249 (=> (not res!374215) (not e!335157))))

(assert (=> b!586249 (= res!374215 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17585 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17585 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586250 () Bool)

(declare-fun res!374210 () Bool)

(assert (=> b!586250 (=> (not res!374210) (not e!335158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586250 (= res!374210 (validKeyInArray!0 k!1786))))

(declare-fun b!586251 () Bool)

(declare-fun res!374218 () Bool)

(assert (=> b!586251 (=> (not res!374218) (not e!335157))))

(declare-datatypes ((List!11679 0))(
  ( (Nil!11676) (Cons!11675 (h!12720 (_ BitVec 64)) (t!17915 List!11679)) )
))
(declare-fun arrayNoDuplicates!0 (array!36629 (_ BitVec 32) List!11679) Bool)

(assert (=> b!586251 (= res!374218 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11676))))

(declare-fun b!586252 () Bool)

(assert (=> b!586252 (= e!335157 (not true))))

(declare-fun lt!266057 () (_ BitVec 32))

(assert (=> b!586252 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266057 vacantSpotIndex!68 (select (arr!17585 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266057 vacantSpotIndex!68 (select (store (arr!17585 a!2986) i!1108 k!1786) j!136) (array!36630 (store (arr!17585 a!2986) i!1108 k!1786) (size!17949 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18188 0))(
  ( (Unit!18189) )
))
(declare-fun lt!266056 () Unit!18188)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18188)

(assert (=> b!586252 (= lt!266056 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266057 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586252 (= lt!266057 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586253 () Bool)

(declare-fun res!374217 () Bool)

(assert (=> b!586253 (=> (not res!374217) (not e!335158))))

(assert (=> b!586253 (= res!374217 (validKeyInArray!0 (select (arr!17585 a!2986) j!136)))))

(assert (= (and start!53774 res!374213) b!586248))

(assert (= (and b!586248 res!374214) b!586253))

(assert (= (and b!586253 res!374217) b!586250))

(assert (= (and b!586250 res!374210) b!586247))

(assert (= (and b!586247 res!374219) b!586246))

(assert (= (and b!586246 res!374216) b!586245))

(assert (= (and b!586245 res!374212) b!586251))

(assert (= (and b!586251 res!374218) b!586249))

(assert (= (and b!586249 res!374215) b!586244))

(assert (= (and b!586244 res!374211) b!586243))

(assert (= (and b!586243 res!374209) b!586252))

(declare-fun m!564653 () Bool)

(assert (=> b!586253 m!564653))

(assert (=> b!586253 m!564653))

(declare-fun m!564655 () Bool)

(assert (=> b!586253 m!564655))

(assert (=> b!586244 m!564653))

(assert (=> b!586244 m!564653))

(declare-fun m!564657 () Bool)

(assert (=> b!586244 m!564657))

(declare-fun m!564659 () Bool)

(assert (=> b!586251 m!564659))

(declare-fun m!564661 () Bool)

(assert (=> b!586246 m!564661))

(declare-fun m!564663 () Bool)

(assert (=> b!586245 m!564663))

(declare-fun m!564665 () Bool)

(assert (=> b!586250 m!564665))

(declare-fun m!564667 () Bool)

(assert (=> b!586243 m!564667))

(assert (=> b!586243 m!564653))

(declare-fun m!564669 () Bool)

(assert (=> b!586247 m!564669))

(declare-fun m!564671 () Bool)

(assert (=> start!53774 m!564671))

(declare-fun m!564673 () Bool)

(assert (=> start!53774 m!564673))

(declare-fun m!564675 () Bool)

(assert (=> b!586252 m!564675))

(declare-fun m!564677 () Bool)

(assert (=> b!586252 m!564677))

(assert (=> b!586252 m!564653))

(declare-fun m!564679 () Bool)

(assert (=> b!586252 m!564679))

(declare-fun m!564681 () Bool)

(assert (=> b!586252 m!564681))

(assert (=> b!586252 m!564677))

(declare-fun m!564683 () Bool)

(assert (=> b!586252 m!564683))

(assert (=> b!586252 m!564653))

(declare-fun m!564685 () Bool)

(assert (=> b!586252 m!564685))

(declare-fun m!564687 () Bool)

(assert (=> b!586249 m!564687))

(assert (=> b!586249 m!564679))

(declare-fun m!564689 () Bool)

(assert (=> b!586249 m!564689))

(push 1)

