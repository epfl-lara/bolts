; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55590 () Bool)

(assert start!55590)

(declare-fun res!391341 () Bool)

(declare-fun e!348509 () Bool)

(assert (=> start!55590 (=> (not res!391341) (not e!348509))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55590 (= res!391341 (validMask!0 mask!3053))))

(assert (=> start!55590 e!348509))

(assert (=> start!55590 true))

(declare-datatypes ((array!37284 0))(
  ( (array!37285 (arr!17889 (Array (_ BitVec 32) (_ BitVec 64))) (size!18253 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37284)

(declare-fun array_inv!13663 (array!37284) Bool)

(assert (=> start!55590 (array_inv!13663 a!2986)))

(declare-fun b!608520 () Bool)

(declare-fun e!348513 () Bool)

(declare-fun e!348512 () Bool)

(assert (=> b!608520 (= e!348513 e!348512)))

(declare-fun res!391336 () Bool)

(assert (=> b!608520 (=> (not res!391336) (not e!348512))))

(declare-fun lt!278092 () array!37284)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608520 (= res!391336 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) j!136))))

(declare-fun b!608521 () Bool)

(declare-fun res!391331 () Bool)

(assert (=> b!608521 (=> (not res!391331) (not e!348509))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608521 (= res!391331 (validKeyInArray!0 k!1786))))

(declare-fun b!608522 () Bool)

(declare-fun res!391339 () Bool)

(declare-fun e!348507 () Bool)

(assert (=> b!608522 (=> res!391339 e!348507)))

(declare-datatypes ((List!11983 0))(
  ( (Nil!11980) (Cons!11979 (h!13024 (_ BitVec 64)) (t!18219 List!11983)) )
))
(declare-fun contains!3029 (List!11983 (_ BitVec 64)) Bool)

(assert (=> b!608522 (= res!391339 (contains!3029 Nil!11980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608523 () Bool)

(declare-fun res!391327 () Bool)

(assert (=> b!608523 (=> (not res!391327) (not e!348509))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!608523 (= res!391327 (and (= (size!18253 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18253 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18253 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608524 () Bool)

(declare-fun e!348511 () Bool)

(declare-fun e!348508 () Bool)

(assert (=> b!608524 (= e!348511 e!348508)))

(declare-fun res!391329 () Bool)

(assert (=> b!608524 (=> (not res!391329) (not e!348508))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6336 0))(
  ( (MissingZero!6336 (index!27618 (_ BitVec 32))) (Found!6336 (index!27619 (_ BitVec 32))) (Intermediate!6336 (undefined!7148 Bool) (index!27620 (_ BitVec 32)) (x!56454 (_ BitVec 32))) (Undefined!6336) (MissingVacant!6336 (index!27621 (_ BitVec 32))) )
))
(declare-fun lt!278095 () SeekEntryResult!6336)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608524 (= res!391329 (and (= lt!278095 (Found!6336 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17889 a!2986) index!984) (select (arr!17889 a!2986) j!136))) (not (= (select (arr!17889 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37284 (_ BitVec 32)) SeekEntryResult!6336)

(assert (=> b!608524 (= lt!278095 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17889 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608525 () Bool)

(declare-fun res!391346 () Bool)

(assert (=> b!608525 (=> (not res!391346) (not e!348509))))

(assert (=> b!608525 (= res!391346 (validKeyInArray!0 (select (arr!17889 a!2986) j!136)))))

(declare-fun b!608526 () Bool)

(declare-fun res!391335 () Bool)

(assert (=> b!608526 (=> res!391335 e!348507)))

(declare-fun noDuplicate!331 (List!11983) Bool)

(assert (=> b!608526 (= res!391335 (not (noDuplicate!331 Nil!11980)))))

(declare-fun b!608527 () Bool)

(declare-datatypes ((Unit!19444 0))(
  ( (Unit!19445) )
))
(declare-fun e!348504 () Unit!19444)

(declare-fun Unit!19446 () Unit!19444)

(assert (=> b!608527 (= e!348504 Unit!19446)))

(assert (=> b!608527 false))

(declare-fun b!608528 () Bool)

(declare-fun e!348499 () Bool)

(assert (=> b!608528 (= e!348499 e!348507)))

(declare-fun res!391325 () Bool)

(assert (=> b!608528 (=> res!391325 e!348507)))

(assert (=> b!608528 (= res!391325 (or (bvsge (size!18253 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18253 a!2986))))))

(assert (=> b!608528 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278094 () Unit!19444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37284 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19444)

(assert (=> b!608528 (= lt!278094 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278092 (select (arr!17889 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348502 () Bool)

(assert (=> b!608528 e!348502))

(declare-fun res!391342 () Bool)

(assert (=> b!608528 (=> (not res!391342) (not e!348502))))

(assert (=> b!608528 (= res!391342 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) j!136))))

(declare-fun b!608529 () Bool)

(declare-fun res!391345 () Bool)

(declare-fun e!348501 () Bool)

(assert (=> b!608529 (=> (not res!391345) (not e!348501))))

(declare-fun arrayNoDuplicates!0 (array!37284 (_ BitVec 32) List!11983) Bool)

(assert (=> b!608529 (= res!391345 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11980))))

(declare-fun b!608530 () Bool)

(declare-fun res!391328 () Bool)

(assert (=> b!608530 (=> (not res!391328) (not e!348501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37284 (_ BitVec 32)) Bool)

(assert (=> b!608530 (= res!391328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608531 () Bool)

(declare-fun e!348503 () Bool)

(declare-fun lt!278091 () SeekEntryResult!6336)

(assert (=> b!608531 (= e!348503 (= lt!278095 lt!278091))))

(declare-fun b!608532 () Bool)

(assert (=> b!608532 (= e!348512 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) index!984))))

(declare-fun b!608533 () Bool)

(assert (=> b!608533 (= e!348501 e!348511)))

(declare-fun res!391324 () Bool)

(assert (=> b!608533 (=> (not res!391324) (not e!348511))))

(assert (=> b!608533 (= res!391324 (= (select (store (arr!17889 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608533 (= lt!278092 (array!37285 (store (arr!17889 a!2986) i!1108 k!1786) (size!18253 a!2986)))))

(declare-fun b!608534 () Bool)

(assert (=> b!608534 (= e!348507 true)))

(declare-fun lt!278101 () Bool)

(assert (=> b!608534 (= lt!278101 (contains!3029 Nil!11980 k!1786))))

(declare-fun b!608535 () Bool)

(assert (=> b!608535 (= e!348509 e!348501)))

(declare-fun res!391340 () Bool)

(assert (=> b!608535 (=> (not res!391340) (not e!348501))))

(declare-fun lt!278097 () SeekEntryResult!6336)

(assert (=> b!608535 (= res!391340 (or (= lt!278097 (MissingZero!6336 i!1108)) (= lt!278097 (MissingVacant!6336 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37284 (_ BitVec 32)) SeekEntryResult!6336)

(assert (=> b!608535 (= lt!278097 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608536 () Bool)

(declare-fun Unit!19447 () Unit!19444)

(assert (=> b!608536 (= e!348504 Unit!19447)))

(declare-fun b!608537 () Bool)

(declare-fun e!348505 () Bool)

(assert (=> b!608537 (= e!348505 e!348499)))

(declare-fun res!391344 () Bool)

(assert (=> b!608537 (=> res!391344 e!348499)))

(assert (=> b!608537 (= res!391344 (bvsge index!984 j!136))))

(declare-fun lt!278090 () Unit!19444)

(declare-fun e!348510 () Unit!19444)

(assert (=> b!608537 (= lt!278090 e!348510)))

(declare-fun c!68965 () Bool)

(assert (=> b!608537 (= c!68965 (bvslt j!136 index!984))))

(declare-fun b!608538 () Bool)

(declare-fun e!348506 () Bool)

(assert (=> b!608538 (= e!348508 (not e!348506))))

(declare-fun res!391338 () Bool)

(assert (=> b!608538 (=> res!391338 e!348506)))

(declare-fun lt!278106 () SeekEntryResult!6336)

(assert (=> b!608538 (= res!391338 (not (= lt!278106 (Found!6336 index!984))))))

(declare-fun lt!278102 () Unit!19444)

(assert (=> b!608538 (= lt!278102 e!348504)))

(declare-fun c!68966 () Bool)

(assert (=> b!608538 (= c!68966 (= lt!278106 Undefined!6336))))

(declare-fun lt!278104 () (_ BitVec 64))

(assert (=> b!608538 (= lt!278106 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278104 lt!278092 mask!3053))))

(assert (=> b!608538 e!348503))

(declare-fun res!391332 () Bool)

(assert (=> b!608538 (=> (not res!391332) (not e!348503))))

(declare-fun lt!278096 () (_ BitVec 32))

(assert (=> b!608538 (= res!391332 (= lt!278091 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278096 vacantSpotIndex!68 lt!278104 lt!278092 mask!3053)))))

(assert (=> b!608538 (= lt!278091 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278096 vacantSpotIndex!68 (select (arr!17889 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608538 (= lt!278104 (select (store (arr!17889 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278100 () Unit!19444)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37284 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19444)

(assert (=> b!608538 (= lt!278100 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278096 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608538 (= lt!278096 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608539 () Bool)

(declare-fun res!391330 () Bool)

(assert (=> b!608539 (=> (not res!391330) (not e!348501))))

(assert (=> b!608539 (= res!391330 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17889 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608540 () Bool)

(declare-fun e!348514 () Bool)

(assert (=> b!608540 (= e!348514 e!348513)))

(declare-fun res!391333 () Bool)

(assert (=> b!608540 (=> res!391333 e!348513)))

(declare-fun lt!278105 () (_ BitVec 64))

(assert (=> b!608540 (= res!391333 (or (not (= (select (arr!17889 a!2986) j!136) lt!278104)) (not (= (select (arr!17889 a!2986) j!136) lt!278105)) (bvsge j!136 index!984)))))

(declare-fun b!608541 () Bool)

(assert (=> b!608541 (= e!348506 e!348505)))

(declare-fun res!391337 () Bool)

(assert (=> b!608541 (=> res!391337 e!348505)))

(assert (=> b!608541 (= res!391337 (or (not (= (select (arr!17889 a!2986) j!136) lt!278104)) (not (= (select (arr!17889 a!2986) j!136) lt!278105))))))

(assert (=> b!608541 e!348514))

(declare-fun res!391326 () Bool)

(assert (=> b!608541 (=> (not res!391326) (not e!348514))))

(assert (=> b!608541 (= res!391326 (= lt!278105 (select (arr!17889 a!2986) j!136)))))

(assert (=> b!608541 (= lt!278105 (select (store (arr!17889 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608542 () Bool)

(declare-fun res!391343 () Bool)

(assert (=> b!608542 (=> res!391343 e!348507)))

(assert (=> b!608542 (= res!391343 (contains!3029 Nil!11980 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608543 () Bool)

(declare-fun Unit!19448 () Unit!19444)

(assert (=> b!608543 (= e!348510 Unit!19448)))

(declare-fun b!608544 () Bool)

(assert (=> b!608544 (= e!348502 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) index!984))))

(declare-fun b!608545 () Bool)

(declare-fun res!391334 () Bool)

(assert (=> b!608545 (=> (not res!391334) (not e!348509))))

(assert (=> b!608545 (= res!391334 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608546 () Bool)

(declare-fun Unit!19449 () Unit!19444)

(assert (=> b!608546 (= e!348510 Unit!19449)))

(declare-fun lt!278103 () Unit!19444)

(assert (=> b!608546 (= lt!278103 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278092 (select (arr!17889 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608546 (arrayContainsKey!0 lt!278092 (select (arr!17889 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278093 () Unit!19444)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37284 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11983) Unit!19444)

(assert (=> b!608546 (= lt!278093 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11980))))

(assert (=> b!608546 (arrayNoDuplicates!0 lt!278092 #b00000000000000000000000000000000 Nil!11980)))

(declare-fun lt!278098 () Unit!19444)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37284 (_ BitVec 32) (_ BitVec 32)) Unit!19444)

(assert (=> b!608546 (= lt!278098 (lemmaNoDuplicateFromThenFromBigger!0 lt!278092 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608546 (arrayNoDuplicates!0 lt!278092 j!136 Nil!11980)))

(declare-fun lt!278099 () Unit!19444)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37284 (_ BitVec 64) (_ BitVec 32) List!11983) Unit!19444)

(assert (=> b!608546 (= lt!278099 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278092 (select (arr!17889 a!2986) j!136) j!136 Nil!11980))))

(assert (=> b!608546 false))

(assert (= (and start!55590 res!391341) b!608523))

(assert (= (and b!608523 res!391327) b!608525))

(assert (= (and b!608525 res!391346) b!608521))

(assert (= (and b!608521 res!391331) b!608545))

(assert (= (and b!608545 res!391334) b!608535))

(assert (= (and b!608535 res!391340) b!608530))

(assert (= (and b!608530 res!391328) b!608529))

(assert (= (and b!608529 res!391345) b!608539))

(assert (= (and b!608539 res!391330) b!608533))

(assert (= (and b!608533 res!391324) b!608524))

(assert (= (and b!608524 res!391329) b!608538))

(assert (= (and b!608538 res!391332) b!608531))

(assert (= (and b!608538 c!68966) b!608527))

(assert (= (and b!608538 (not c!68966)) b!608536))

(assert (= (and b!608538 (not res!391338)) b!608541))

(assert (= (and b!608541 res!391326) b!608540))

(assert (= (and b!608540 (not res!391333)) b!608520))

(assert (= (and b!608520 res!391336) b!608532))

(assert (= (and b!608541 (not res!391337)) b!608537))

(assert (= (and b!608537 c!68965) b!608546))

(assert (= (and b!608537 (not c!68965)) b!608543))

(assert (= (and b!608537 (not res!391344)) b!608528))

(assert (= (and b!608528 res!391342) b!608544))

(assert (= (and b!608528 (not res!391325)) b!608526))

(assert (= (and b!608526 (not res!391335)) b!608522))

(assert (= (and b!608522 (not res!391339)) b!608542))

(assert (= (and b!608542 (not res!391343)) b!608534))

(declare-fun m!585165 () Bool)

(assert (=> b!608521 m!585165))

(declare-fun m!585167 () Bool)

(assert (=> b!608540 m!585167))

(declare-fun m!585169 () Bool)

(assert (=> b!608533 m!585169))

(declare-fun m!585171 () Bool)

(assert (=> b!608533 m!585171))

(declare-fun m!585173 () Bool)

(assert (=> b!608524 m!585173))

(assert (=> b!608524 m!585167))

(assert (=> b!608524 m!585167))

(declare-fun m!585175 () Bool)

(assert (=> b!608524 m!585175))

(declare-fun m!585177 () Bool)

(assert (=> b!608526 m!585177))

(declare-fun m!585179 () Bool)

(assert (=> b!608529 m!585179))

(assert (=> b!608525 m!585167))

(assert (=> b!608525 m!585167))

(declare-fun m!585181 () Bool)

(assert (=> b!608525 m!585181))

(declare-fun m!585183 () Bool)

(assert (=> b!608539 m!585183))

(declare-fun m!585185 () Bool)

(assert (=> start!55590 m!585185))

(declare-fun m!585187 () Bool)

(assert (=> start!55590 m!585187))

(assert (=> b!608528 m!585167))

(assert (=> b!608528 m!585167))

(declare-fun m!585189 () Bool)

(assert (=> b!608528 m!585189))

(assert (=> b!608528 m!585167))

(declare-fun m!585191 () Bool)

(assert (=> b!608528 m!585191))

(assert (=> b!608528 m!585167))

(declare-fun m!585193 () Bool)

(assert (=> b!608528 m!585193))

(declare-fun m!585195 () Bool)

(assert (=> b!608545 m!585195))

(declare-fun m!585197 () Bool)

(assert (=> b!608530 m!585197))

(assert (=> b!608546 m!585167))

(declare-fun m!585199 () Bool)

(assert (=> b!608546 m!585199))

(assert (=> b!608546 m!585167))

(declare-fun m!585201 () Bool)

(assert (=> b!608546 m!585201))

(assert (=> b!608546 m!585167))

(declare-fun m!585203 () Bool)

(assert (=> b!608546 m!585203))

(declare-fun m!585205 () Bool)

(assert (=> b!608546 m!585205))

(declare-fun m!585207 () Bool)

(assert (=> b!608546 m!585207))

(assert (=> b!608546 m!585167))

(declare-fun m!585209 () Bool)

(assert (=> b!608546 m!585209))

(declare-fun m!585211 () Bool)

(assert (=> b!608546 m!585211))

(declare-fun m!585213 () Bool)

(assert (=> b!608538 m!585213))

(declare-fun m!585215 () Bool)

(assert (=> b!608538 m!585215))

(assert (=> b!608538 m!585167))

(assert (=> b!608538 m!585169))

(declare-fun m!585217 () Bool)

(assert (=> b!608538 m!585217))

(assert (=> b!608538 m!585167))

(declare-fun m!585219 () Bool)

(assert (=> b!608538 m!585219))

(declare-fun m!585221 () Bool)

(assert (=> b!608538 m!585221))

(declare-fun m!585223 () Bool)

(assert (=> b!608538 m!585223))

(assert (=> b!608541 m!585167))

(assert (=> b!608541 m!585169))

(declare-fun m!585225 () Bool)

(assert (=> b!608541 m!585225))

(assert (=> b!608544 m!585167))

(assert (=> b!608544 m!585167))

(declare-fun m!585227 () Bool)

(assert (=> b!608544 m!585227))

(assert (=> b!608532 m!585167))

(assert (=> b!608532 m!585167))

(assert (=> b!608532 m!585227))

(declare-fun m!585229 () Bool)

(assert (=> b!608522 m!585229))

(assert (=> b!608520 m!585167))

(assert (=> b!608520 m!585167))

(assert (=> b!608520 m!585193))

(declare-fun m!585231 () Bool)

(assert (=> b!608535 m!585231))

(declare-fun m!585233 () Bool)

(assert (=> b!608534 m!585233))

(declare-fun m!585235 () Bool)

(assert (=> b!608542 m!585235))

(push 1)

