; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54156 () Bool)

(assert start!54156)

(declare-fun b!591144 () Bool)

(declare-fun res!378283 () Bool)

(declare-fun e!337535 () Bool)

(assert (=> b!591144 (=> (not res!378283) (not e!337535))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36849 0))(
  ( (array!36850 (arr!17691 (Array (_ BitVec 32) (_ BitVec 64))) (size!18055 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36849)

(assert (=> b!591144 (= res!378283 (and (= (size!18055 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18055 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18055 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591145 () Bool)

(declare-fun e!337538 () Bool)

(declare-fun e!337532 () Bool)

(assert (=> b!591145 (= e!337538 e!337532)))

(declare-fun res!378279 () Bool)

(assert (=> b!591145 (=> (not res!378279) (not e!337532))))

(declare-datatypes ((SeekEntryResult!6138 0))(
  ( (MissingZero!6138 (index!26787 (_ BitVec 32))) (Found!6138 (index!26788 (_ BitVec 32))) (Intermediate!6138 (undefined!6950 Bool) (index!26789 (_ BitVec 32)) (x!55611 (_ BitVec 32))) (Undefined!6138) (MissingVacant!6138 (index!26790 (_ BitVec 32))) )
))
(declare-fun lt!268281 () SeekEntryResult!6138)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591145 (= res!378279 (and (= lt!268281 (Found!6138 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17691 a!2986) index!984) (select (arr!17691 a!2986) j!136))) (not (= (select (arr!17691 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36849 (_ BitVec 32)) SeekEntryResult!6138)

(assert (=> b!591145 (= lt!268281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17691 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591146 () Bool)

(declare-fun e!337539 () Bool)

(assert (=> b!591146 (= e!337532 (not e!337539))))

(declare-fun res!378278 () Bool)

(assert (=> b!591146 (=> res!378278 e!337539)))

(declare-fun lt!268279 () SeekEntryResult!6138)

(assert (=> b!591146 (= res!378278 (not (= lt!268279 (Found!6138 index!984))))))

(declare-datatypes ((Unit!18496 0))(
  ( (Unit!18497) )
))
(declare-fun lt!268277 () Unit!18496)

(declare-fun e!337540 () Unit!18496)

(assert (=> b!591146 (= lt!268277 e!337540)))

(declare-fun c!66803 () Bool)

(assert (=> b!591146 (= c!66803 (= lt!268279 Undefined!6138))))

(declare-fun lt!268272 () array!36849)

(declare-fun lt!268275 () (_ BitVec 64))

(assert (=> b!591146 (= lt!268279 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268275 lt!268272 mask!3053))))

(declare-fun e!337536 () Bool)

(assert (=> b!591146 e!337536))

(declare-fun res!378276 () Bool)

(assert (=> b!591146 (=> (not res!378276) (not e!337536))))

(declare-fun lt!268278 () SeekEntryResult!6138)

(declare-fun lt!268276 () (_ BitVec 32))

(assert (=> b!591146 (= res!378276 (= lt!268278 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268276 vacantSpotIndex!68 lt!268275 lt!268272 mask!3053)))))

(assert (=> b!591146 (= lt!268278 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268276 vacantSpotIndex!68 (select (arr!17691 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!591146 (= lt!268275 (select (store (arr!17691 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268280 () Unit!18496)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36849 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18496)

(assert (=> b!591146 (= lt!268280 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268276 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591146 (= lt!268276 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591147 () Bool)

(declare-fun res!378282 () Bool)

(assert (=> b!591147 (=> (not res!378282) (not e!337535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591147 (= res!378282 (validKeyInArray!0 (select (arr!17691 a!2986) j!136)))))

(declare-fun b!591148 () Bool)

(declare-fun e!337531 () Bool)

(declare-fun e!337534 () Bool)

(assert (=> b!591148 (= e!337531 e!337534)))

(declare-fun res!378274 () Bool)

(assert (=> b!591148 (=> res!378274 e!337534)))

(declare-fun lt!268273 () (_ BitVec 64))

(assert (=> b!591148 (= res!378274 (or (not (= (select (arr!17691 a!2986) j!136) lt!268275)) (not (= (select (arr!17691 a!2986) j!136) lt!268273)) (bvsge j!136 index!984)))))

(declare-fun b!591149 () Bool)

(declare-fun Unit!18498 () Unit!18496)

(assert (=> b!591149 (= e!337540 Unit!18498)))

(assert (=> b!591149 false))

(declare-fun b!591150 () Bool)

(declare-fun e!337530 () Bool)

(declare-fun arrayContainsKey!0 (array!36849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591150 (= e!337530 (arrayContainsKey!0 lt!268272 (select (arr!17691 a!2986) j!136) index!984))))

(declare-fun b!591151 () Bool)

(declare-fun res!378277 () Bool)

(declare-fun e!337533 () Bool)

(assert (=> b!591151 (=> (not res!378277) (not e!337533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36849 (_ BitVec 32)) Bool)

(assert (=> b!591151 (= res!378277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591152 () Bool)

(assert (=> b!591152 (= e!337535 e!337533)))

(declare-fun res!378285 () Bool)

(assert (=> b!591152 (=> (not res!378285) (not e!337533))))

(declare-fun lt!268274 () SeekEntryResult!6138)

(assert (=> b!591152 (= res!378285 (or (= lt!268274 (MissingZero!6138 i!1108)) (= lt!268274 (MissingVacant!6138 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36849 (_ BitVec 32)) SeekEntryResult!6138)

(assert (=> b!591152 (= lt!268274 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!378281 () Bool)

(assert (=> start!54156 (=> (not res!378281) (not e!337535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54156 (= res!378281 (validMask!0 mask!3053))))

(assert (=> start!54156 e!337535))

(assert (=> start!54156 true))

(declare-fun array_inv!13465 (array!36849) Bool)

(assert (=> start!54156 (array_inv!13465 a!2986)))

(declare-fun b!591153 () Bool)

(declare-fun res!378284 () Bool)

(assert (=> b!591153 (=> (not res!378284) (not e!337535))))

(assert (=> b!591153 (= res!378284 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591154 () Bool)

(declare-fun Unit!18499 () Unit!18496)

(assert (=> b!591154 (= e!337540 Unit!18499)))

(declare-fun b!591155 () Bool)

(assert (=> b!591155 (= e!337536 (= lt!268281 lt!268278))))

(declare-fun b!591156 () Bool)

(declare-fun res!378286 () Bool)

(assert (=> b!591156 (=> (not res!378286) (not e!337533))))

(assert (=> b!591156 (= res!378286 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17691 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591157 () Bool)

(assert (=> b!591157 (= e!337534 e!337530)))

(declare-fun res!378272 () Bool)

(assert (=> b!591157 (=> (not res!378272) (not e!337530))))

(assert (=> b!591157 (= res!378272 (arrayContainsKey!0 lt!268272 (select (arr!17691 a!2986) j!136) j!136))))

(declare-fun b!591158 () Bool)

(assert (=> b!591158 (= e!337533 e!337538)))

(declare-fun res!378287 () Bool)

(assert (=> b!591158 (=> (not res!378287) (not e!337538))))

(assert (=> b!591158 (= res!378287 (= (select (store (arr!17691 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591158 (= lt!268272 (array!36850 (store (arr!17691 a!2986) i!1108 k!1786) (size!18055 a!2986)))))

(declare-fun b!591159 () Bool)

(assert (=> b!591159 (= e!337539 true)))

(assert (=> b!591159 e!337531))

(declare-fun res!378273 () Bool)

(assert (=> b!591159 (=> (not res!378273) (not e!337531))))

(assert (=> b!591159 (= res!378273 (= lt!268273 (select (arr!17691 a!2986) j!136)))))

(assert (=> b!591159 (= lt!268273 (select (store (arr!17691 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591160 () Bool)

(declare-fun res!378280 () Bool)

(assert (=> b!591160 (=> (not res!378280) (not e!337533))))

(declare-datatypes ((List!11785 0))(
  ( (Nil!11782) (Cons!11781 (h!12826 (_ BitVec 64)) (t!18021 List!11785)) )
))
(declare-fun arrayNoDuplicates!0 (array!36849 (_ BitVec 32) List!11785) Bool)

(assert (=> b!591160 (= res!378280 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11782))))

(declare-fun b!591161 () Bool)

(declare-fun res!378275 () Bool)

(assert (=> b!591161 (=> (not res!378275) (not e!337535))))

(assert (=> b!591161 (= res!378275 (validKeyInArray!0 k!1786))))

(assert (= (and start!54156 res!378281) b!591144))

(assert (= (and b!591144 res!378283) b!591147))

(assert (= (and b!591147 res!378282) b!591161))

(assert (= (and b!591161 res!378275) b!591153))

(assert (= (and b!591153 res!378284) b!591152))

(assert (= (and b!591152 res!378285) b!591151))

(assert (= (and b!591151 res!378277) b!591160))

(assert (= (and b!591160 res!378280) b!591156))

(assert (= (and b!591156 res!378286) b!591158))

(assert (= (and b!591158 res!378287) b!591145))

(assert (= (and b!591145 res!378279) b!591146))

(assert (= (and b!591146 res!378276) b!591155))

(assert (= (and b!591146 c!66803) b!591149))

(assert (= (and b!591146 (not c!66803)) b!591154))

(assert (= (and b!591146 (not res!378278)) b!591159))

(assert (= (and b!591159 res!378273) b!591148))

(assert (= (and b!591148 (not res!378274)) b!591157))

(assert (= (and b!591157 res!378272) b!591150))

(declare-fun m!569439 () Bool)

(assert (=> b!591145 m!569439))

(declare-fun m!569441 () Bool)

(assert (=> b!591145 m!569441))

(assert (=> b!591145 m!569441))

(declare-fun m!569443 () Bool)

(assert (=> b!591145 m!569443))

(declare-fun m!569445 () Bool)

(assert (=> b!591153 m!569445))

(declare-fun m!569447 () Bool)

(assert (=> b!591158 m!569447))

(declare-fun m!569449 () Bool)

(assert (=> b!591158 m!569449))

(assert (=> b!591147 m!569441))

(assert (=> b!591147 m!569441))

(declare-fun m!569451 () Bool)

(assert (=> b!591147 m!569451))

(declare-fun m!569453 () Bool)

(assert (=> b!591156 m!569453))

(declare-fun m!569455 () Bool)

(assert (=> start!54156 m!569455))

(declare-fun m!569457 () Bool)

(assert (=> start!54156 m!569457))

(declare-fun m!569459 () Bool)

(assert (=> b!591152 m!569459))

(assert (=> b!591157 m!569441))

(assert (=> b!591157 m!569441))

(declare-fun m!569461 () Bool)

(assert (=> b!591157 m!569461))

(declare-fun m!569463 () Bool)

(assert (=> b!591151 m!569463))

(declare-fun m!569465 () Bool)

(assert (=> b!591161 m!569465))

(declare-fun m!569467 () Bool)

(assert (=> b!591160 m!569467))

(assert (=> b!591150 m!569441))

(assert (=> b!591150 m!569441))

(declare-fun m!569469 () Bool)

(assert (=> b!591150 m!569469))

(assert (=> b!591148 m!569441))

(declare-fun m!569471 () Bool)

(assert (=> b!591146 m!569471))

(declare-fun m!569473 () Bool)

(assert (=> b!591146 m!569473))

(declare-fun m!569475 () Bool)

(assert (=> b!591146 m!569475))

(assert (=> b!591146 m!569441))

(assert (=> b!591146 m!569447))

(declare-fun m!569477 () Bool)

(assert (=> b!591146 m!569477))

(assert (=> b!591146 m!569441))

(declare-fun m!569479 () Bool)

(assert (=> b!591146 m!569479))

(declare-fun m!569481 () Bool)

(assert (=> b!591146 m!569481))

(assert (=> b!591159 m!569441))

(assert (=> b!591159 m!569447))

(declare-fun m!569483 () Bool)

(assert (=> b!591159 m!569483))

(push 1)

