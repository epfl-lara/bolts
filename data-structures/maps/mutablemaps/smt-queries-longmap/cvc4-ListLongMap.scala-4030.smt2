; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54898 () Bool)

(assert start!54898)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37096 0))(
  ( (array!37097 (arr!17804 (Array (_ BitVec 32) (_ BitVec 64))) (size!18168 (_ BitVec 32))) )
))
(declare-fun lt!273206 () array!37096)

(declare-fun b!600413 () Bool)

(declare-fun e!343297 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37096)

(declare-fun arrayContainsKey!0 (array!37096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600413 (= e!343297 (arrayContainsKey!0 lt!273206 (select (arr!17804 a!2986) j!136) index!984))))

(declare-fun b!600414 () Bool)

(declare-fun e!343295 () Bool)

(declare-fun e!343289 () Bool)

(assert (=> b!600414 (= e!343295 e!343289)))

(declare-fun res!385472 () Bool)

(assert (=> b!600414 (=> res!385472 e!343289)))

(declare-fun lt!273215 () (_ BitVec 64))

(declare-fun lt!273211 () (_ BitVec 64))

(assert (=> b!600414 (= res!385472 (or (not (= (select (arr!17804 a!2986) j!136) lt!273211)) (not (= (select (arr!17804 a!2986) j!136) lt!273215)) (bvsge j!136 index!984)))))

(declare-fun b!600415 () Bool)

(declare-fun res!385462 () Bool)

(declare-fun e!343290 () Bool)

(assert (=> b!600415 (=> (not res!385462) (not e!343290))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600415 (= res!385462 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17804 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600416 () Bool)

(declare-fun res!385468 () Bool)

(declare-fun e!343292 () Bool)

(assert (=> b!600416 (=> (not res!385468) (not e!343292))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!600416 (= res!385468 (and (= (size!18168 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18168 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18168 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600417 () Bool)

(declare-fun res!385477 () Bool)

(declare-fun e!343294 () Bool)

(assert (=> b!600417 (=> res!385477 e!343294)))

(declare-datatypes ((List!11898 0))(
  ( (Nil!11895) (Cons!11894 (h!12939 (_ BitVec 64)) (t!18134 List!11898)) )
))
(declare-fun noDuplicate!297 (List!11898) Bool)

(assert (=> b!600417 (= res!385477 (not (noDuplicate!297 Nil!11895)))))

(declare-fun b!600418 () Bool)

(declare-fun res!385461 () Bool)

(assert (=> b!600418 (=> res!385461 e!343294)))

(declare-fun contains!2983 (List!11898 (_ BitVec 64)) Bool)

(assert (=> b!600418 (= res!385461 (contains!2983 Nil!11895 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600419 () Bool)

(declare-datatypes ((Unit!18948 0))(
  ( (Unit!18949) )
))
(declare-fun e!343288 () Unit!18948)

(declare-fun Unit!18950 () Unit!18948)

(assert (=> b!600419 (= e!343288 Unit!18950)))

(assert (=> b!600419 false))

(declare-fun b!600420 () Bool)

(declare-fun res!385475 () Bool)

(assert (=> b!600420 (=> (not res!385475) (not e!343290))))

(declare-fun arrayNoDuplicates!0 (array!37096 (_ BitVec 32) List!11898) Bool)

(assert (=> b!600420 (= res!385475 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11895))))

(declare-fun b!600421 () Bool)

(declare-fun e!343285 () Bool)

(declare-fun e!343286 () Bool)

(assert (=> b!600421 (= e!343285 e!343286)))

(declare-fun res!385471 () Bool)

(assert (=> b!600421 (=> res!385471 e!343286)))

(assert (=> b!600421 (= res!385471 (or (not (= (select (arr!17804 a!2986) j!136) lt!273211)) (not (= (select (arr!17804 a!2986) j!136) lt!273215)) (bvsge j!136 index!984)))))

(assert (=> b!600421 e!343295))

(declare-fun res!385464 () Bool)

(assert (=> b!600421 (=> (not res!385464) (not e!343295))))

(assert (=> b!600421 (= res!385464 (= lt!273215 (select (arr!17804 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!600421 (= lt!273215 (select (store (arr!17804 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600422 () Bool)

(declare-fun e!343293 () Bool)

(declare-datatypes ((SeekEntryResult!6251 0))(
  ( (MissingZero!6251 (index!27260 (_ BitVec 32))) (Found!6251 (index!27261 (_ BitVec 32))) (Intermediate!6251 (undefined!7063 Bool) (index!27262 (_ BitVec 32)) (x!56083 (_ BitVec 32))) (Undefined!6251) (MissingVacant!6251 (index!27263 (_ BitVec 32))) )
))
(declare-fun lt!273204 () SeekEntryResult!6251)

(declare-fun lt!273212 () SeekEntryResult!6251)

(assert (=> b!600422 (= e!343293 (= lt!273204 lt!273212))))

(declare-fun b!600423 () Bool)

(assert (=> b!600423 (= e!343294 true)))

(declare-fun lt!273216 () Bool)

(assert (=> b!600423 (= lt!273216 (contains!2983 Nil!11895 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600424 () Bool)

(assert (=> b!600424 (= e!343292 e!343290)))

(declare-fun res!385463 () Bool)

(assert (=> b!600424 (=> (not res!385463) (not e!343290))))

(declare-fun lt!273210 () SeekEntryResult!6251)

(assert (=> b!600424 (= res!385463 (or (= lt!273210 (MissingZero!6251 i!1108)) (= lt!273210 (MissingVacant!6251 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37096 (_ BitVec 32)) SeekEntryResult!6251)

(assert (=> b!600424 (= lt!273210 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600425 () Bool)

(declare-fun e!343291 () Bool)

(declare-fun e!343296 () Bool)

(assert (=> b!600425 (= e!343291 e!343296)))

(declare-fun res!385466 () Bool)

(assert (=> b!600425 (=> (not res!385466) (not e!343296))))

(assert (=> b!600425 (= res!385466 (and (= lt!273204 (Found!6251 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17804 a!2986) index!984) (select (arr!17804 a!2986) j!136))) (not (= (select (arr!17804 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37096 (_ BitVec 32)) SeekEntryResult!6251)

(assert (=> b!600425 (= lt!273204 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17804 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600426 () Bool)

(assert (=> b!600426 (= e!343289 e!343297)))

(declare-fun res!385473 () Bool)

(assert (=> b!600426 (=> (not res!385473) (not e!343297))))

(assert (=> b!600426 (= res!385473 (arrayContainsKey!0 lt!273206 (select (arr!17804 a!2986) j!136) j!136))))

(declare-fun b!600427 () Bool)

(assert (=> b!600427 (= e!343290 e!343291)))

(declare-fun res!385459 () Bool)

(assert (=> b!600427 (=> (not res!385459) (not e!343291))))

(assert (=> b!600427 (= res!385459 (= (select (store (arr!17804 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600427 (= lt!273206 (array!37097 (store (arr!17804 a!2986) i!1108 k!1786) (size!18168 a!2986)))))

(declare-fun res!385476 () Bool)

(assert (=> start!54898 (=> (not res!385476) (not e!343292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54898 (= res!385476 (validMask!0 mask!3053))))

(assert (=> start!54898 e!343292))

(assert (=> start!54898 true))

(declare-fun array_inv!13578 (array!37096) Bool)

(assert (=> start!54898 (array_inv!13578 a!2986)))

(declare-fun b!600428 () Bool)

(declare-fun res!385465 () Bool)

(assert (=> b!600428 (=> (not res!385465) (not e!343290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37096 (_ BitVec 32)) Bool)

(assert (=> b!600428 (= res!385465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600429 () Bool)

(declare-fun Unit!18951 () Unit!18948)

(assert (=> b!600429 (= e!343288 Unit!18951)))

(declare-fun b!600430 () Bool)

(assert (=> b!600430 (= e!343286 e!343294)))

(declare-fun res!385478 () Bool)

(assert (=> b!600430 (=> res!385478 e!343294)))

(assert (=> b!600430 (= res!385478 (or (bvsge (size!18168 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18168 a!2986))))))

(assert (=> b!600430 (arrayNoDuplicates!0 lt!273206 j!136 Nil!11895)))

(declare-fun lt!273207 () Unit!18948)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37096 (_ BitVec 32) (_ BitVec 32)) Unit!18948)

(assert (=> b!600430 (= lt!273207 (lemmaNoDuplicateFromThenFromBigger!0 lt!273206 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600430 (arrayNoDuplicates!0 lt!273206 #b00000000000000000000000000000000 Nil!11895)))

(declare-fun lt!273214 () Unit!18948)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37096 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11898) Unit!18948)

(assert (=> b!600430 (= lt!273214 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11895))))

(assert (=> b!600430 (arrayContainsKey!0 lt!273206 (select (arr!17804 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273213 () Unit!18948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37096 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18948)

(assert (=> b!600430 (= lt!273213 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273206 (select (arr!17804 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600431 () Bool)

(assert (=> b!600431 (= e!343296 (not e!343285))))

(declare-fun res!385470 () Bool)

(assert (=> b!600431 (=> res!385470 e!343285)))

(declare-fun lt!273209 () SeekEntryResult!6251)

(assert (=> b!600431 (= res!385470 (not (= lt!273209 (Found!6251 index!984))))))

(declare-fun lt!273205 () Unit!18948)

(assert (=> b!600431 (= lt!273205 e!343288)))

(declare-fun c!67844 () Bool)

(assert (=> b!600431 (= c!67844 (= lt!273209 Undefined!6251))))

(assert (=> b!600431 (= lt!273209 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273211 lt!273206 mask!3053))))

(assert (=> b!600431 e!343293))

(declare-fun res!385469 () Bool)

(assert (=> b!600431 (=> (not res!385469) (not e!343293))))

(declare-fun lt!273208 () (_ BitVec 32))

(assert (=> b!600431 (= res!385469 (= lt!273212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273208 vacantSpotIndex!68 lt!273211 lt!273206 mask!3053)))))

(assert (=> b!600431 (= lt!273212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273208 vacantSpotIndex!68 (select (arr!17804 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600431 (= lt!273211 (select (store (arr!17804 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273203 () Unit!18948)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37096 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18948)

(assert (=> b!600431 (= lt!273203 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273208 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600431 (= lt!273208 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600432 () Bool)

(declare-fun res!385460 () Bool)

(assert (=> b!600432 (=> (not res!385460) (not e!343292))))

(assert (=> b!600432 (= res!385460 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600433 () Bool)

(declare-fun res!385467 () Bool)

(assert (=> b!600433 (=> (not res!385467) (not e!343292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600433 (= res!385467 (validKeyInArray!0 (select (arr!17804 a!2986) j!136)))))

(declare-fun b!600434 () Bool)

(declare-fun res!385474 () Bool)

(assert (=> b!600434 (=> (not res!385474) (not e!343292))))

(assert (=> b!600434 (= res!385474 (validKeyInArray!0 k!1786))))

(assert (= (and start!54898 res!385476) b!600416))

(assert (= (and b!600416 res!385468) b!600433))

(assert (= (and b!600433 res!385467) b!600434))

(assert (= (and b!600434 res!385474) b!600432))

(assert (= (and b!600432 res!385460) b!600424))

(assert (= (and b!600424 res!385463) b!600428))

(assert (= (and b!600428 res!385465) b!600420))

(assert (= (and b!600420 res!385475) b!600415))

(assert (= (and b!600415 res!385462) b!600427))

(assert (= (and b!600427 res!385459) b!600425))

(assert (= (and b!600425 res!385466) b!600431))

(assert (= (and b!600431 res!385469) b!600422))

(assert (= (and b!600431 c!67844) b!600419))

(assert (= (and b!600431 (not c!67844)) b!600429))

(assert (= (and b!600431 (not res!385470)) b!600421))

(assert (= (and b!600421 res!385464) b!600414))

(assert (= (and b!600414 (not res!385472)) b!600426))

(assert (= (and b!600426 res!385473) b!600413))

(assert (= (and b!600421 (not res!385471)) b!600430))

(assert (= (and b!600430 (not res!385478)) b!600417))

(assert (= (and b!600417 (not res!385477)) b!600418))

(assert (= (and b!600418 (not res!385461)) b!600423))

(declare-fun m!577679 () Bool)

(assert (=> b!600417 m!577679))

(declare-fun m!577681 () Bool)

(assert (=> b!600431 m!577681))

(declare-fun m!577683 () Bool)

(assert (=> b!600431 m!577683))

(declare-fun m!577685 () Bool)

(assert (=> b!600431 m!577685))

(assert (=> b!600431 m!577685))

(declare-fun m!577687 () Bool)

(assert (=> b!600431 m!577687))

(declare-fun m!577689 () Bool)

(assert (=> b!600431 m!577689))

(declare-fun m!577691 () Bool)

(assert (=> b!600431 m!577691))

(declare-fun m!577693 () Bool)

(assert (=> b!600431 m!577693))

(declare-fun m!577695 () Bool)

(assert (=> b!600431 m!577695))

(declare-fun m!577697 () Bool)

(assert (=> b!600434 m!577697))

(assert (=> b!600414 m!577685))

(declare-fun m!577699 () Bool)

(assert (=> b!600423 m!577699))

(declare-fun m!577701 () Bool)

(assert (=> b!600425 m!577701))

(assert (=> b!600425 m!577685))

(assert (=> b!600425 m!577685))

(declare-fun m!577703 () Bool)

(assert (=> b!600425 m!577703))

(declare-fun m!577705 () Bool)

(assert (=> b!600424 m!577705))

(assert (=> b!600433 m!577685))

(assert (=> b!600433 m!577685))

(declare-fun m!577707 () Bool)

(assert (=> b!600433 m!577707))

(assert (=> b!600426 m!577685))

(assert (=> b!600426 m!577685))

(declare-fun m!577709 () Bool)

(assert (=> b!600426 m!577709))

(declare-fun m!577711 () Bool)

(assert (=> start!54898 m!577711))

(declare-fun m!577713 () Bool)

(assert (=> start!54898 m!577713))

(declare-fun m!577715 () Bool)

(assert (=> b!600432 m!577715))

(declare-fun m!577717 () Bool)

(assert (=> b!600420 m!577717))

(declare-fun m!577719 () Bool)

(assert (=> b!600418 m!577719))

(assert (=> b!600421 m!577685))

(assert (=> b!600421 m!577689))

(declare-fun m!577721 () Bool)

(assert (=> b!600421 m!577721))

(declare-fun m!577723 () Bool)

(assert (=> b!600415 m!577723))

(assert (=> b!600413 m!577685))

(assert (=> b!600413 m!577685))

(declare-fun m!577725 () Bool)

(assert (=> b!600413 m!577725))

(assert (=> b!600427 m!577689))

(declare-fun m!577727 () Bool)

(assert (=> b!600427 m!577727))

(assert (=> b!600430 m!577685))

(declare-fun m!577729 () Bool)

(assert (=> b!600430 m!577729))

(declare-fun m!577731 () Bool)

(assert (=> b!600430 m!577731))

(assert (=> b!600430 m!577685))

(declare-fun m!577733 () Bool)

(assert (=> b!600430 m!577733))

(assert (=> b!600430 m!577685))

(declare-fun m!577735 () Bool)

(assert (=> b!600430 m!577735))

(declare-fun m!577737 () Bool)

(assert (=> b!600430 m!577737))

(declare-fun m!577739 () Bool)

(assert (=> b!600430 m!577739))

(declare-fun m!577741 () Bool)

(assert (=> b!600428 m!577741))

(push 1)

