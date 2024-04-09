; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54158 () Bool)

(assert start!54158)

(declare-fun b!591198 () Bool)

(declare-fun e!337563 () Bool)

(declare-datatypes ((SeekEntryResult!6139 0))(
  ( (MissingZero!6139 (index!26791 (_ BitVec 32))) (Found!6139 (index!26792 (_ BitVec 32))) (Intermediate!6139 (undefined!6951 Bool) (index!26793 (_ BitVec 32)) (x!55612 (_ BitVec 32))) (Undefined!6139) (MissingVacant!6139 (index!26794 (_ BitVec 32))) )
))
(declare-fun lt!268306 () SeekEntryResult!6139)

(declare-fun lt!268308 () SeekEntryResult!6139)

(assert (=> b!591198 (= e!337563 (= lt!268306 lt!268308))))

(declare-fun b!591199 () Bool)

(declare-fun e!337570 () Bool)

(declare-fun e!337568 () Bool)

(assert (=> b!591199 (= e!337570 e!337568)))

(declare-fun res!378320 () Bool)

(assert (=> b!591199 (=> (not res!378320) (not e!337568))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36851 0))(
  ( (array!36852 (arr!17692 (Array (_ BitVec 32) (_ BitVec 64))) (size!18056 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36851)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591199 (= res!378320 (= (select (store (arr!17692 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268310 () array!36851)

(assert (=> b!591199 (= lt!268310 (array!36852 (store (arr!17692 a!2986) i!1108 k0!1786) (size!18056 a!2986)))))

(declare-fun b!591200 () Bool)

(declare-fun e!337566 () Bool)

(assert (=> b!591200 (= e!337566 true)))

(declare-fun e!337571 () Bool)

(assert (=> b!591200 e!337571))

(declare-fun res!378328 () Bool)

(assert (=> b!591200 (=> (not res!378328) (not e!337571))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268307 () (_ BitVec 64))

(assert (=> b!591200 (= res!378328 (= lt!268307 (select (arr!17692 a!2986) j!136)))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591200 (= lt!268307 (select (store (arr!17692 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591202 () Bool)

(declare-fun e!337564 () Bool)

(assert (=> b!591202 (= e!337571 e!337564)))

(declare-fun res!378322 () Bool)

(assert (=> b!591202 (=> res!378322 e!337564)))

(declare-fun lt!268304 () (_ BitVec 64))

(assert (=> b!591202 (= res!378322 (or (not (= (select (arr!17692 a!2986) j!136) lt!268304)) (not (= (select (arr!17692 a!2986) j!136) lt!268307)) (bvsge j!136 index!984)))))

(declare-fun b!591203 () Bool)

(declare-fun res!378326 () Bool)

(assert (=> b!591203 (=> (not res!378326) (not e!337570))))

(declare-datatypes ((List!11786 0))(
  ( (Nil!11783) (Cons!11782 (h!12827 (_ BitVec 64)) (t!18022 List!11786)) )
))
(declare-fun arrayNoDuplicates!0 (array!36851 (_ BitVec 32) List!11786) Bool)

(assert (=> b!591203 (= res!378326 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11783))))

(declare-fun b!591204 () Bool)

(declare-datatypes ((Unit!18500 0))(
  ( (Unit!18501) )
))
(declare-fun e!337573 () Unit!18500)

(declare-fun Unit!18502 () Unit!18500)

(assert (=> b!591204 (= e!337573 Unit!18502)))

(assert (=> b!591204 false))

(declare-fun b!591205 () Bool)

(declare-fun res!378321 () Bool)

(declare-fun e!337569 () Bool)

(assert (=> b!591205 (=> (not res!378321) (not e!337569))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!591205 (= res!378321 (and (= (size!18056 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18056 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18056 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591206 () Bool)

(declare-fun res!378335 () Bool)

(assert (=> b!591206 (=> (not res!378335) (not e!337569))))

(declare-fun arrayContainsKey!0 (array!36851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591206 (= res!378335 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591207 () Bool)

(declare-fun res!378323 () Bool)

(assert (=> b!591207 (=> (not res!378323) (not e!337570))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591207 (= res!378323 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17692 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591208 () Bool)

(declare-fun res!378324 () Bool)

(assert (=> b!591208 (=> (not res!378324) (not e!337570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36851 (_ BitVec 32)) Bool)

(assert (=> b!591208 (= res!378324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591209 () Bool)

(declare-fun res!378327 () Bool)

(assert (=> b!591209 (=> (not res!378327) (not e!337569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591209 (= res!378327 (validKeyInArray!0 k0!1786))))

(declare-fun res!378330 () Bool)

(assert (=> start!54158 (=> (not res!378330) (not e!337569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54158 (= res!378330 (validMask!0 mask!3053))))

(assert (=> start!54158 e!337569))

(assert (=> start!54158 true))

(declare-fun array_inv!13466 (array!36851) Bool)

(assert (=> start!54158 (array_inv!13466 a!2986)))

(declare-fun b!591201 () Bool)

(declare-fun e!337567 () Bool)

(assert (=> b!591201 (= e!337564 e!337567)))

(declare-fun res!378334 () Bool)

(assert (=> b!591201 (=> (not res!378334) (not e!337567))))

(assert (=> b!591201 (= res!378334 (arrayContainsKey!0 lt!268310 (select (arr!17692 a!2986) j!136) j!136))))

(declare-fun b!591210 () Bool)

(declare-fun e!337565 () Bool)

(assert (=> b!591210 (= e!337568 e!337565)))

(declare-fun res!378331 () Bool)

(assert (=> b!591210 (=> (not res!378331) (not e!337565))))

(assert (=> b!591210 (= res!378331 (and (= lt!268306 (Found!6139 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17692 a!2986) index!984) (select (arr!17692 a!2986) j!136))) (not (= (select (arr!17692 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36851 (_ BitVec 32)) SeekEntryResult!6139)

(assert (=> b!591210 (= lt!268306 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17692 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591211 () Bool)

(assert (=> b!591211 (= e!337565 (not e!337566))))

(declare-fun res!378325 () Bool)

(assert (=> b!591211 (=> res!378325 e!337566)))

(declare-fun lt!268303 () SeekEntryResult!6139)

(assert (=> b!591211 (= res!378325 (not (= lt!268303 (Found!6139 index!984))))))

(declare-fun lt!268311 () Unit!18500)

(assert (=> b!591211 (= lt!268311 e!337573)))

(declare-fun c!66806 () Bool)

(assert (=> b!591211 (= c!66806 (= lt!268303 Undefined!6139))))

(assert (=> b!591211 (= lt!268303 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268304 lt!268310 mask!3053))))

(assert (=> b!591211 e!337563))

(declare-fun res!378333 () Bool)

(assert (=> b!591211 (=> (not res!378333) (not e!337563))))

(declare-fun lt!268309 () (_ BitVec 32))

(assert (=> b!591211 (= res!378333 (= lt!268308 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268309 vacantSpotIndex!68 lt!268304 lt!268310 mask!3053)))))

(assert (=> b!591211 (= lt!268308 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268309 vacantSpotIndex!68 (select (arr!17692 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591211 (= lt!268304 (select (store (arr!17692 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268302 () Unit!18500)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18500)

(assert (=> b!591211 (= lt!268302 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268309 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591211 (= lt!268309 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591212 () Bool)

(declare-fun res!378332 () Bool)

(assert (=> b!591212 (=> (not res!378332) (not e!337569))))

(assert (=> b!591212 (= res!378332 (validKeyInArray!0 (select (arr!17692 a!2986) j!136)))))

(declare-fun b!591213 () Bool)

(assert (=> b!591213 (= e!337569 e!337570)))

(declare-fun res!378329 () Bool)

(assert (=> b!591213 (=> (not res!378329) (not e!337570))))

(declare-fun lt!268305 () SeekEntryResult!6139)

(assert (=> b!591213 (= res!378329 (or (= lt!268305 (MissingZero!6139 i!1108)) (= lt!268305 (MissingVacant!6139 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36851 (_ BitVec 32)) SeekEntryResult!6139)

(assert (=> b!591213 (= lt!268305 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!591214 () Bool)

(declare-fun Unit!18503 () Unit!18500)

(assert (=> b!591214 (= e!337573 Unit!18503)))

(declare-fun b!591215 () Bool)

(assert (=> b!591215 (= e!337567 (arrayContainsKey!0 lt!268310 (select (arr!17692 a!2986) j!136) index!984))))

(assert (= (and start!54158 res!378330) b!591205))

(assert (= (and b!591205 res!378321) b!591212))

(assert (= (and b!591212 res!378332) b!591209))

(assert (= (and b!591209 res!378327) b!591206))

(assert (= (and b!591206 res!378335) b!591213))

(assert (= (and b!591213 res!378329) b!591208))

(assert (= (and b!591208 res!378324) b!591203))

(assert (= (and b!591203 res!378326) b!591207))

(assert (= (and b!591207 res!378323) b!591199))

(assert (= (and b!591199 res!378320) b!591210))

(assert (= (and b!591210 res!378331) b!591211))

(assert (= (and b!591211 res!378333) b!591198))

(assert (= (and b!591211 c!66806) b!591204))

(assert (= (and b!591211 (not c!66806)) b!591214))

(assert (= (and b!591211 (not res!378325)) b!591200))

(assert (= (and b!591200 res!378328) b!591202))

(assert (= (and b!591202 (not res!378322)) b!591201))

(assert (= (and b!591201 res!378334) b!591215))

(declare-fun m!569485 () Bool)

(assert (=> b!591203 m!569485))

(declare-fun m!569487 () Bool)

(assert (=> b!591207 m!569487))

(declare-fun m!569489 () Bool)

(assert (=> b!591212 m!569489))

(assert (=> b!591212 m!569489))

(declare-fun m!569491 () Bool)

(assert (=> b!591212 m!569491))

(declare-fun m!569493 () Bool)

(assert (=> b!591210 m!569493))

(assert (=> b!591210 m!569489))

(assert (=> b!591210 m!569489))

(declare-fun m!569495 () Bool)

(assert (=> b!591210 m!569495))

(declare-fun m!569497 () Bool)

(assert (=> b!591206 m!569497))

(assert (=> b!591202 m!569489))

(assert (=> b!591200 m!569489))

(declare-fun m!569499 () Bool)

(assert (=> b!591200 m!569499))

(declare-fun m!569501 () Bool)

(assert (=> b!591200 m!569501))

(declare-fun m!569503 () Bool)

(assert (=> b!591211 m!569503))

(declare-fun m!569505 () Bool)

(assert (=> b!591211 m!569505))

(assert (=> b!591211 m!569489))

(assert (=> b!591211 m!569489))

(declare-fun m!569507 () Bool)

(assert (=> b!591211 m!569507))

(declare-fun m!569509 () Bool)

(assert (=> b!591211 m!569509))

(declare-fun m!569511 () Bool)

(assert (=> b!591211 m!569511))

(declare-fun m!569513 () Bool)

(assert (=> b!591211 m!569513))

(assert (=> b!591211 m!569499))

(assert (=> b!591215 m!569489))

(assert (=> b!591215 m!569489))

(declare-fun m!569515 () Bool)

(assert (=> b!591215 m!569515))

(declare-fun m!569517 () Bool)

(assert (=> b!591213 m!569517))

(declare-fun m!569519 () Bool)

(assert (=> start!54158 m!569519))

(declare-fun m!569521 () Bool)

(assert (=> start!54158 m!569521))

(declare-fun m!569523 () Bool)

(assert (=> b!591208 m!569523))

(declare-fun m!569525 () Bool)

(assert (=> b!591209 m!569525))

(assert (=> b!591199 m!569499))

(declare-fun m!569527 () Bool)

(assert (=> b!591199 m!569527))

(assert (=> b!591201 m!569489))

(assert (=> b!591201 m!569489))

(declare-fun m!569529 () Bool)

(assert (=> b!591201 m!569529))

(check-sat (not b!591215) (not b!591203) (not b!591210) (not b!591208) (not b!591212) (not start!54158) (not b!591213) (not b!591201) (not b!591209) (not b!591211) (not b!591206))
(check-sat)
