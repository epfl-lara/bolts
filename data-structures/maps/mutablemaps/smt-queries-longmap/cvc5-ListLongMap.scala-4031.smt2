; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54900 () Bool)

(assert start!54900)

(declare-fun b!600479 () Bool)

(declare-fun e!343326 () Bool)

(declare-datatypes ((SeekEntryResult!6252 0))(
  ( (MissingZero!6252 (index!27264 (_ BitVec 32))) (Found!6252 (index!27265 (_ BitVec 32))) (Intermediate!6252 (undefined!7064 Bool) (index!27266 (_ BitVec 32)) (x!56092 (_ BitVec 32))) (Undefined!6252) (MissingVacant!6252 (index!27267 (_ BitVec 32))) )
))
(declare-fun lt!273256 () SeekEntryResult!6252)

(declare-fun lt!273249 () SeekEntryResult!6252)

(assert (=> b!600479 (= e!343326 (= lt!273256 lt!273249))))

(declare-fun b!600480 () Bool)

(declare-fun res!385527 () Bool)

(declare-fun e!343324 () Bool)

(assert (=> b!600480 (=> (not res!385527) (not e!343324))))

(declare-datatypes ((array!37098 0))(
  ( (array!37099 (arr!17805 (Array (_ BitVec 32) (_ BitVec 64))) (size!18169 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37098)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37098 (_ BitVec 32)) Bool)

(assert (=> b!600480 (= res!385527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600481 () Bool)

(declare-fun res!385538 () Bool)

(declare-fun e!343332 () Bool)

(assert (=> b!600481 (=> (not res!385538) (not e!343332))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600481 (= res!385538 (validKeyInArray!0 k!1786))))

(declare-fun b!600482 () Bool)

(declare-fun res!385534 () Bool)

(assert (=> b!600482 (=> (not res!385534) (not e!343332))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!600482 (= res!385534 (and (= (size!18169 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18169 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18169 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600483 () Bool)

(declare-fun e!343336 () Bool)

(declare-fun e!343325 () Bool)

(assert (=> b!600483 (= e!343336 e!343325)))

(declare-fun res!385529 () Bool)

(assert (=> b!600483 (=> res!385529 e!343325)))

(declare-fun lt!273246 () (_ BitVec 64))

(declare-fun lt!273258 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600483 (= res!385529 (or (not (= (select (arr!17805 a!2986) j!136) lt!273246)) (not (= (select (arr!17805 a!2986) j!136) lt!273258)) (bvsge j!136 index!984)))))

(declare-fun b!600484 () Bool)

(declare-fun res!385523 () Bool)

(assert (=> b!600484 (=> (not res!385523) (not e!343332))))

(assert (=> b!600484 (= res!385523 (validKeyInArray!0 (select (arr!17805 a!2986) j!136)))))

(declare-fun e!343333 () Bool)

(declare-fun lt!273252 () array!37098)

(declare-fun b!600485 () Bool)

(declare-fun arrayContainsKey!0 (array!37098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600485 (= e!343333 (arrayContainsKey!0 lt!273252 (select (arr!17805 a!2986) j!136) index!984))))

(declare-fun b!600486 () Bool)

(declare-fun e!343327 () Bool)

(declare-fun e!343330 () Bool)

(assert (=> b!600486 (= e!343327 e!343330)))

(declare-fun res!385526 () Bool)

(assert (=> b!600486 (=> res!385526 e!343330)))

(assert (=> b!600486 (= res!385526 (or (bvsge (size!18169 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18169 a!2986))))))

(declare-datatypes ((List!11899 0))(
  ( (Nil!11896) (Cons!11895 (h!12940 (_ BitVec 64)) (t!18135 List!11899)) )
))
(declare-fun arrayNoDuplicates!0 (array!37098 (_ BitVec 32) List!11899) Bool)

(assert (=> b!600486 (arrayNoDuplicates!0 lt!273252 j!136 Nil!11896)))

(declare-datatypes ((Unit!18952 0))(
  ( (Unit!18953) )
))
(declare-fun lt!273247 () Unit!18952)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37098 (_ BitVec 32) (_ BitVec 32)) Unit!18952)

(assert (=> b!600486 (= lt!273247 (lemmaNoDuplicateFromThenFromBigger!0 lt!273252 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600486 (arrayNoDuplicates!0 lt!273252 #b00000000000000000000000000000000 Nil!11896)))

(declare-fun lt!273253 () Unit!18952)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37098 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11899) Unit!18952)

(assert (=> b!600486 (= lt!273253 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11896))))

(assert (=> b!600486 (arrayContainsKey!0 lt!273252 (select (arr!17805 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273251 () Unit!18952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37098 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18952)

(assert (=> b!600486 (= lt!273251 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273252 (select (arr!17805 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600487 () Bool)

(declare-fun res!385520 () Bool)

(assert (=> b!600487 (=> res!385520 e!343330)))

(declare-fun noDuplicate!298 (List!11899) Bool)

(assert (=> b!600487 (= res!385520 (not (noDuplicate!298 Nil!11896)))))

(declare-fun b!600488 () Bool)

(assert (=> b!600488 (= e!343330 true)))

(declare-fun lt!273250 () Bool)

(declare-fun contains!2984 (List!11899 (_ BitVec 64)) Bool)

(assert (=> b!600488 (= lt!273250 (contains!2984 Nil!11896 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!385521 () Bool)

(assert (=> start!54900 (=> (not res!385521) (not e!343332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54900 (= res!385521 (validMask!0 mask!3053))))

(assert (=> start!54900 e!343332))

(assert (=> start!54900 true))

(declare-fun array_inv!13579 (array!37098) Bool)

(assert (=> start!54900 (array_inv!13579 a!2986)))

(declare-fun b!600489 () Bool)

(declare-fun e!343328 () Unit!18952)

(declare-fun Unit!18954 () Unit!18952)

(assert (=> b!600489 (= e!343328 Unit!18954)))

(assert (=> b!600489 false))

(declare-fun b!600490 () Bool)

(declare-fun e!343334 () Bool)

(assert (=> b!600490 (= e!343324 e!343334)))

(declare-fun res!385533 () Bool)

(assert (=> b!600490 (=> (not res!385533) (not e!343334))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!600490 (= res!385533 (= (select (store (arr!17805 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600490 (= lt!273252 (array!37099 (store (arr!17805 a!2986) i!1108 k!1786) (size!18169 a!2986)))))

(declare-fun b!600491 () Bool)

(declare-fun res!385536 () Bool)

(assert (=> b!600491 (=> (not res!385536) (not e!343332))))

(assert (=> b!600491 (= res!385536 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600492 () Bool)

(assert (=> b!600492 (= e!343332 e!343324)))

(declare-fun res!385522 () Bool)

(assert (=> b!600492 (=> (not res!385522) (not e!343324))))

(declare-fun lt!273248 () SeekEntryResult!6252)

(assert (=> b!600492 (= res!385522 (or (= lt!273248 (MissingZero!6252 i!1108)) (= lt!273248 (MissingVacant!6252 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37098 (_ BitVec 32)) SeekEntryResult!6252)

(assert (=> b!600492 (= lt!273248 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600493 () Bool)

(declare-fun res!385519 () Bool)

(assert (=> b!600493 (=> res!385519 e!343330)))

(assert (=> b!600493 (= res!385519 (contains!2984 Nil!11896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600494 () Bool)

(declare-fun e!343335 () Bool)

(assert (=> b!600494 (= e!343335 e!343327)))

(declare-fun res!385528 () Bool)

(assert (=> b!600494 (=> res!385528 e!343327)))

(assert (=> b!600494 (= res!385528 (or (not (= (select (arr!17805 a!2986) j!136) lt!273246)) (not (= (select (arr!17805 a!2986) j!136) lt!273258)) (bvsge j!136 index!984)))))

(assert (=> b!600494 e!343336))

(declare-fun res!385537 () Bool)

(assert (=> b!600494 (=> (not res!385537) (not e!343336))))

(assert (=> b!600494 (= res!385537 (= lt!273258 (select (arr!17805 a!2986) j!136)))))

(assert (=> b!600494 (= lt!273258 (select (store (arr!17805 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600495 () Bool)

(declare-fun res!385532 () Bool)

(assert (=> b!600495 (=> (not res!385532) (not e!343324))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600495 (= res!385532 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17805 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600496 () Bool)

(declare-fun e!343329 () Bool)

(assert (=> b!600496 (= e!343329 (not e!343335))))

(declare-fun res!385535 () Bool)

(assert (=> b!600496 (=> res!385535 e!343335)))

(declare-fun lt!273254 () SeekEntryResult!6252)

(assert (=> b!600496 (= res!385535 (not (= lt!273254 (Found!6252 index!984))))))

(declare-fun lt!273245 () Unit!18952)

(assert (=> b!600496 (= lt!273245 e!343328)))

(declare-fun c!67847 () Bool)

(assert (=> b!600496 (= c!67847 (= lt!273254 Undefined!6252))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37098 (_ BitVec 32)) SeekEntryResult!6252)

(assert (=> b!600496 (= lt!273254 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273246 lt!273252 mask!3053))))

(assert (=> b!600496 e!343326))

(declare-fun res!385530 () Bool)

(assert (=> b!600496 (=> (not res!385530) (not e!343326))))

(declare-fun lt!273255 () (_ BitVec 32))

(assert (=> b!600496 (= res!385530 (= lt!273249 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273255 vacantSpotIndex!68 lt!273246 lt!273252 mask!3053)))))

(assert (=> b!600496 (= lt!273249 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273255 vacantSpotIndex!68 (select (arr!17805 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600496 (= lt!273246 (select (store (arr!17805 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273257 () Unit!18952)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37098 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18952)

(assert (=> b!600496 (= lt!273257 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273255 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600496 (= lt!273255 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600497 () Bool)

(declare-fun res!385525 () Bool)

(assert (=> b!600497 (=> (not res!385525) (not e!343324))))

(assert (=> b!600497 (= res!385525 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11896))))

(declare-fun b!600498 () Bool)

(declare-fun Unit!18955 () Unit!18952)

(assert (=> b!600498 (= e!343328 Unit!18955)))

(declare-fun b!600499 () Bool)

(assert (=> b!600499 (= e!343325 e!343333)))

(declare-fun res!385531 () Bool)

(assert (=> b!600499 (=> (not res!385531) (not e!343333))))

(assert (=> b!600499 (= res!385531 (arrayContainsKey!0 lt!273252 (select (arr!17805 a!2986) j!136) j!136))))

(declare-fun b!600500 () Bool)

(assert (=> b!600500 (= e!343334 e!343329)))

(declare-fun res!385524 () Bool)

(assert (=> b!600500 (=> (not res!385524) (not e!343329))))

(assert (=> b!600500 (= res!385524 (and (= lt!273256 (Found!6252 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17805 a!2986) index!984) (select (arr!17805 a!2986) j!136))) (not (= (select (arr!17805 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600500 (= lt!273256 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17805 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54900 res!385521) b!600482))

(assert (= (and b!600482 res!385534) b!600484))

(assert (= (and b!600484 res!385523) b!600481))

(assert (= (and b!600481 res!385538) b!600491))

(assert (= (and b!600491 res!385536) b!600492))

(assert (= (and b!600492 res!385522) b!600480))

(assert (= (and b!600480 res!385527) b!600497))

(assert (= (and b!600497 res!385525) b!600495))

(assert (= (and b!600495 res!385532) b!600490))

(assert (= (and b!600490 res!385533) b!600500))

(assert (= (and b!600500 res!385524) b!600496))

(assert (= (and b!600496 res!385530) b!600479))

(assert (= (and b!600496 c!67847) b!600489))

(assert (= (and b!600496 (not c!67847)) b!600498))

(assert (= (and b!600496 (not res!385535)) b!600494))

(assert (= (and b!600494 res!385537) b!600483))

(assert (= (and b!600483 (not res!385529)) b!600499))

(assert (= (and b!600499 res!385531) b!600485))

(assert (= (and b!600494 (not res!385528)) b!600486))

(assert (= (and b!600486 (not res!385526)) b!600487))

(assert (= (and b!600487 (not res!385520)) b!600493))

(assert (= (and b!600493 (not res!385519)) b!600488))

(declare-fun m!577743 () Bool)

(assert (=> b!600483 m!577743))

(assert (=> b!600499 m!577743))

(assert (=> b!600499 m!577743))

(declare-fun m!577745 () Bool)

(assert (=> b!600499 m!577745))

(declare-fun m!577747 () Bool)

(assert (=> b!600491 m!577747))

(assert (=> b!600486 m!577743))

(declare-fun m!577749 () Bool)

(assert (=> b!600486 m!577749))

(assert (=> b!600486 m!577743))

(declare-fun m!577751 () Bool)

(assert (=> b!600486 m!577751))

(declare-fun m!577753 () Bool)

(assert (=> b!600486 m!577753))

(assert (=> b!600486 m!577743))

(declare-fun m!577755 () Bool)

(assert (=> b!600486 m!577755))

(declare-fun m!577757 () Bool)

(assert (=> b!600486 m!577757))

(declare-fun m!577759 () Bool)

(assert (=> b!600486 m!577759))

(declare-fun m!577761 () Bool)

(assert (=> start!54900 m!577761))

(declare-fun m!577763 () Bool)

(assert (=> start!54900 m!577763))

(declare-fun m!577765 () Bool)

(assert (=> b!600487 m!577765))

(declare-fun m!577767 () Bool)

(assert (=> b!600500 m!577767))

(assert (=> b!600500 m!577743))

(assert (=> b!600500 m!577743))

(declare-fun m!577769 () Bool)

(assert (=> b!600500 m!577769))

(declare-fun m!577771 () Bool)

(assert (=> b!600496 m!577771))

(declare-fun m!577773 () Bool)

(assert (=> b!600496 m!577773))

(assert (=> b!600496 m!577743))

(declare-fun m!577775 () Bool)

(assert (=> b!600496 m!577775))

(declare-fun m!577777 () Bool)

(assert (=> b!600496 m!577777))

(declare-fun m!577779 () Bool)

(assert (=> b!600496 m!577779))

(declare-fun m!577781 () Bool)

(assert (=> b!600496 m!577781))

(assert (=> b!600496 m!577743))

(declare-fun m!577783 () Bool)

(assert (=> b!600496 m!577783))

(declare-fun m!577785 () Bool)

(assert (=> b!600492 m!577785))

(assert (=> b!600490 m!577775))

(declare-fun m!577787 () Bool)

(assert (=> b!600490 m!577787))

(assert (=> b!600484 m!577743))

(assert (=> b!600484 m!577743))

(declare-fun m!577789 () Bool)

(assert (=> b!600484 m!577789))

(declare-fun m!577791 () Bool)

(assert (=> b!600488 m!577791))

(assert (=> b!600494 m!577743))

(assert (=> b!600494 m!577775))

(declare-fun m!577793 () Bool)

(assert (=> b!600494 m!577793))

(declare-fun m!577795 () Bool)

(assert (=> b!600497 m!577795))

(declare-fun m!577797 () Bool)

(assert (=> b!600493 m!577797))

(declare-fun m!577799 () Bool)

(assert (=> b!600480 m!577799))

(declare-fun m!577801 () Bool)

(assert (=> b!600495 m!577801))

(declare-fun m!577803 () Bool)

(assert (=> b!600481 m!577803))

(assert (=> b!600485 m!577743))

(assert (=> b!600485 m!577743))

(declare-fun m!577805 () Bool)

(assert (=> b!600485 m!577805))

(push 1)

