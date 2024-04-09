; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55596 () Bool)

(assert start!55596)

(declare-fun res!391532 () Bool)

(declare-fun e!348648 () Bool)

(assert (=> start!55596 (=> (not res!391532) (not e!348648))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55596 (= res!391532 (validMask!0 mask!3053))))

(assert (=> start!55596 e!348648))

(assert (=> start!55596 true))

(declare-datatypes ((array!37290 0))(
  ( (array!37291 (arr!17892 (Array (_ BitVec 32) (_ BitVec 64))) (size!18256 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37290)

(declare-fun array_inv!13666 (array!37290) Bool)

(assert (=> start!55596 (array_inv!13666 a!2986)))

(declare-fun lt!278243 () array!37290)

(declare-fun b!608763 () Bool)

(declare-fun e!348651 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608763 (= e!348651 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) index!984))))

(declare-fun b!608764 () Bool)

(declare-datatypes ((Unit!19462 0))(
  ( (Unit!19463) )
))
(declare-fun e!348646 () Unit!19462)

(declare-fun Unit!19464 () Unit!19462)

(assert (=> b!608764 (= e!348646 Unit!19464)))

(declare-fun lt!278258 () Unit!19462)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37290 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19462)

(assert (=> b!608764 (= lt!278258 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278243 (select (arr!17892 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608764 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!278253 () Unit!19462)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!11986 0))(
  ( (Nil!11983) (Cons!11982 (h!13027 (_ BitVec 64)) (t!18222 List!11986)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37290 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11986) Unit!19462)

(assert (=> b!608764 (= lt!278253 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11983))))

(declare-fun arrayNoDuplicates!0 (array!37290 (_ BitVec 32) List!11986) Bool)

(assert (=> b!608764 (arrayNoDuplicates!0 lt!278243 #b00000000000000000000000000000000 Nil!11983)))

(declare-fun lt!278256 () Unit!19462)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37290 (_ BitVec 32) (_ BitVec 32)) Unit!19462)

(assert (=> b!608764 (= lt!278256 (lemmaNoDuplicateFromThenFromBigger!0 lt!278243 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608764 (arrayNoDuplicates!0 lt!278243 j!136 Nil!11983)))

(declare-fun lt!278252 () Unit!19462)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37290 (_ BitVec 64) (_ BitVec 32) List!11986) Unit!19462)

(assert (=> b!608764 (= lt!278252 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278243 (select (arr!17892 a!2986) j!136) j!136 Nil!11983))))

(assert (=> b!608764 false))

(declare-fun b!608765 () Bool)

(declare-fun e!348650 () Bool)

(declare-fun e!348643 () Bool)

(assert (=> b!608765 (= e!348650 e!348643)))

(declare-fun res!391535 () Bool)

(assert (=> b!608765 (=> res!391535 e!348643)))

(declare-fun lt!278250 () (_ BitVec 64))

(declare-fun lt!278244 () (_ BitVec 64))

(assert (=> b!608765 (= res!391535 (or (not (= (select (arr!17892 a!2986) j!136) lt!278244)) (not (= (select (arr!17892 a!2986) j!136) lt!278250)) (bvsge j!136 index!984)))))

(declare-fun b!608766 () Bool)

(declare-fun res!391539 () Bool)

(assert (=> b!608766 (=> (not res!391539) (not e!348648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608766 (= res!391539 (validKeyInArray!0 k!1786))))

(declare-fun b!608767 () Bool)

(declare-fun e!348647 () Bool)

(declare-fun e!348644 () Bool)

(assert (=> b!608767 (= e!348647 e!348644)))

(declare-fun res!391537 () Bool)

(assert (=> b!608767 (=> (not res!391537) (not e!348644))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!608767 (= res!391537 (= (select (store (arr!17892 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608767 (= lt!278243 (array!37291 (store (arr!17892 a!2986) i!1108 k!1786) (size!18256 a!2986)))))

(declare-fun b!608768 () Bool)

(declare-fun res!391533 () Bool)

(assert (=> b!608768 (=> (not res!391533) (not e!348648))))

(assert (=> b!608768 (= res!391533 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608769 () Bool)

(declare-fun e!348645 () Bool)

(declare-fun e!348656 () Bool)

(assert (=> b!608769 (= e!348645 e!348656)))

(declare-fun res!391534 () Bool)

(assert (=> b!608769 (=> res!391534 e!348656)))

(assert (=> b!608769 (= res!391534 (or (bvsge (size!18256 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18256 a!2986))))))

(assert (=> b!608769 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278251 () Unit!19462)

(assert (=> b!608769 (= lt!278251 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278243 (select (arr!17892 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608769 e!348651))

(declare-fun res!391549 () Bool)

(assert (=> b!608769 (=> (not res!391549) (not e!348651))))

(assert (=> b!608769 (= res!391549 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) j!136))))

(declare-fun b!608770 () Bool)

(declare-fun Unit!19465 () Unit!19462)

(assert (=> b!608770 (= e!348646 Unit!19465)))

(declare-fun b!608771 () Bool)

(declare-fun res!391550 () Bool)

(assert (=> b!608771 (=> res!391550 e!348656)))

(declare-fun contains!3032 (List!11986 (_ BitVec 64)) Bool)

(assert (=> b!608771 (= res!391550 (contains!3032 Nil!11983 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608772 () Bool)

(declare-fun res!391536 () Bool)

(assert (=> b!608772 (=> res!391536 e!348656)))

(assert (=> b!608772 (= res!391536 (contains!3032 Nil!11983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608773 () Bool)

(declare-fun res!391541 () Bool)

(assert (=> b!608773 (=> (not res!391541) (not e!348648))))

(assert (=> b!608773 (= res!391541 (validKeyInArray!0 (select (arr!17892 a!2986) j!136)))))

(declare-fun b!608774 () Bool)

(declare-fun e!348652 () Unit!19462)

(declare-fun Unit!19466 () Unit!19462)

(assert (=> b!608774 (= e!348652 Unit!19466)))

(declare-fun b!608775 () Bool)

(declare-fun e!348649 () Bool)

(assert (=> b!608775 (= e!348649 e!348645)))

(declare-fun res!391548 () Bool)

(assert (=> b!608775 (=> res!391548 e!348645)))

(assert (=> b!608775 (= res!391548 (bvsge index!984 j!136))))

(declare-fun lt!278254 () Unit!19462)

(assert (=> b!608775 (= lt!278254 e!348646)))

(declare-fun c!68984 () Bool)

(assert (=> b!608775 (= c!68984 (bvslt j!136 index!984))))

(declare-fun b!608776 () Bool)

(declare-fun res!391551 () Bool)

(assert (=> b!608776 (=> res!391551 e!348656)))

(declare-fun noDuplicate!334 (List!11986) Bool)

(assert (=> b!608776 (= res!391551 (not (noDuplicate!334 Nil!11983)))))

(declare-fun b!608777 () Bool)

(declare-fun res!391547 () Bool)

(assert (=> b!608777 (=> (not res!391547) (not e!348647))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!608777 (= res!391547 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17892 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608778 () Bool)

(assert (=> b!608778 (= e!348648 e!348647)))

(declare-fun res!391544 () Bool)

(assert (=> b!608778 (=> (not res!391544) (not e!348647))))

(declare-datatypes ((SeekEntryResult!6339 0))(
  ( (MissingZero!6339 (index!27630 (_ BitVec 32))) (Found!6339 (index!27631 (_ BitVec 32))) (Intermediate!6339 (undefined!7151 Bool) (index!27632 (_ BitVec 32)) (x!56465 (_ BitVec 32))) (Undefined!6339) (MissingVacant!6339 (index!27633 (_ BitVec 32))) )
))
(declare-fun lt!278249 () SeekEntryResult!6339)

(assert (=> b!608778 (= res!391544 (or (= lt!278249 (MissingZero!6339 i!1108)) (= lt!278249 (MissingVacant!6339 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37290 (_ BitVec 32)) SeekEntryResult!6339)

(assert (=> b!608778 (= lt!278249 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608779 () Bool)

(declare-fun e!348658 () Bool)

(assert (=> b!608779 (= e!348658 e!348649)))

(declare-fun res!391546 () Bool)

(assert (=> b!608779 (=> res!391546 e!348649)))

(assert (=> b!608779 (= res!391546 (or (not (= (select (arr!17892 a!2986) j!136) lt!278244)) (not (= (select (arr!17892 a!2986) j!136) lt!278250))))))

(assert (=> b!608779 e!348650))

(declare-fun res!391540 () Bool)

(assert (=> b!608779 (=> (not res!391540) (not e!348650))))

(assert (=> b!608779 (= res!391540 (= lt!278250 (select (arr!17892 a!2986) j!136)))))

(assert (=> b!608779 (= lt!278250 (select (store (arr!17892 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608780 () Bool)

(declare-fun res!391542 () Bool)

(assert (=> b!608780 (=> (not res!391542) (not e!348647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37290 (_ BitVec 32)) Bool)

(assert (=> b!608780 (= res!391542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608781 () Bool)

(declare-fun res!391553 () Bool)

(assert (=> b!608781 (=> (not res!391553) (not e!348647))))

(assert (=> b!608781 (= res!391553 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11983))))

(declare-fun b!608782 () Bool)

(declare-fun Unit!19467 () Unit!19462)

(assert (=> b!608782 (= e!348652 Unit!19467)))

(assert (=> b!608782 false))

(declare-fun b!608783 () Bool)

(declare-fun e!348657 () Bool)

(assert (=> b!608783 (= e!348657 (not e!348658))))

(declare-fun res!391543 () Bool)

(assert (=> b!608783 (=> res!391543 e!348658)))

(declare-fun lt!278248 () SeekEntryResult!6339)

(assert (=> b!608783 (= res!391543 (not (= lt!278248 (Found!6339 index!984))))))

(declare-fun lt!278247 () Unit!19462)

(assert (=> b!608783 (= lt!278247 e!348652)))

(declare-fun c!68983 () Bool)

(assert (=> b!608783 (= c!68983 (= lt!278248 Undefined!6339))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37290 (_ BitVec 32)) SeekEntryResult!6339)

(assert (=> b!608783 (= lt!278248 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278244 lt!278243 mask!3053))))

(declare-fun e!348653 () Bool)

(assert (=> b!608783 e!348653))

(declare-fun res!391531 () Bool)

(assert (=> b!608783 (=> (not res!391531) (not e!348653))))

(declare-fun lt!278257 () (_ BitVec 32))

(declare-fun lt!278255 () SeekEntryResult!6339)

(assert (=> b!608783 (= res!391531 (= lt!278255 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278257 vacantSpotIndex!68 lt!278244 lt!278243 mask!3053)))))

(assert (=> b!608783 (= lt!278255 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278257 vacantSpotIndex!68 (select (arr!17892 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608783 (= lt!278244 (select (store (arr!17892 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278259 () Unit!19462)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37290 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19462)

(assert (=> b!608783 (= lt!278259 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278257 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608783 (= lt!278257 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608784 () Bool)

(declare-fun e!348655 () Bool)

(assert (=> b!608784 (= e!348643 e!348655)))

(declare-fun res!391538 () Bool)

(assert (=> b!608784 (=> (not res!391538) (not e!348655))))

(assert (=> b!608784 (= res!391538 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) j!136))))

(declare-fun b!608785 () Bool)

(declare-fun res!391552 () Bool)

(assert (=> b!608785 (=> (not res!391552) (not e!348648))))

(assert (=> b!608785 (= res!391552 (and (= (size!18256 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18256 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18256 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608786 () Bool)

(declare-fun lt!278246 () SeekEntryResult!6339)

(assert (=> b!608786 (= e!348653 (= lt!278246 lt!278255))))

(declare-fun b!608787 () Bool)

(assert (=> b!608787 (= e!348656 true)))

(declare-fun lt!278245 () Bool)

(assert (=> b!608787 (= lt!278245 (contains!3032 Nil!11983 k!1786))))

(declare-fun b!608788 () Bool)

(assert (=> b!608788 (= e!348655 (arrayContainsKey!0 lt!278243 (select (arr!17892 a!2986) j!136) index!984))))

(declare-fun b!608789 () Bool)

(assert (=> b!608789 (= e!348644 e!348657)))

(declare-fun res!391545 () Bool)

(assert (=> b!608789 (=> (not res!391545) (not e!348657))))

(assert (=> b!608789 (= res!391545 (and (= lt!278246 (Found!6339 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17892 a!2986) index!984) (select (arr!17892 a!2986) j!136))) (not (= (select (arr!17892 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!608789 (= lt!278246 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17892 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!55596 res!391532) b!608785))

(assert (= (and b!608785 res!391552) b!608773))

(assert (= (and b!608773 res!391541) b!608766))

(assert (= (and b!608766 res!391539) b!608768))

(assert (= (and b!608768 res!391533) b!608778))

(assert (= (and b!608778 res!391544) b!608780))

(assert (= (and b!608780 res!391542) b!608781))

(assert (= (and b!608781 res!391553) b!608777))

(assert (= (and b!608777 res!391547) b!608767))

(assert (= (and b!608767 res!391537) b!608789))

(assert (= (and b!608789 res!391545) b!608783))

(assert (= (and b!608783 res!391531) b!608786))

(assert (= (and b!608783 c!68983) b!608782))

(assert (= (and b!608783 (not c!68983)) b!608774))

(assert (= (and b!608783 (not res!391543)) b!608779))

(assert (= (and b!608779 res!391540) b!608765))

(assert (= (and b!608765 (not res!391535)) b!608784))

(assert (= (and b!608784 res!391538) b!608788))

(assert (= (and b!608779 (not res!391546)) b!608775))

(assert (= (and b!608775 c!68984) b!608764))

(assert (= (and b!608775 (not c!68984)) b!608770))

(assert (= (and b!608775 (not res!391548)) b!608769))

(assert (= (and b!608769 res!391549) b!608763))

(assert (= (and b!608769 (not res!391534)) b!608776))

(assert (= (and b!608776 (not res!391551)) b!608772))

(assert (= (and b!608772 (not res!391536)) b!608771))

(assert (= (and b!608771 (not res!391550)) b!608787))

(declare-fun m!585381 () Bool)

(assert (=> b!608784 m!585381))

(assert (=> b!608784 m!585381))

(declare-fun m!585383 () Bool)

(assert (=> b!608784 m!585383))

(declare-fun m!585385 () Bool)

(assert (=> start!55596 m!585385))

(declare-fun m!585387 () Bool)

(assert (=> start!55596 m!585387))

(assert (=> b!608763 m!585381))

(assert (=> b!608763 m!585381))

(declare-fun m!585389 () Bool)

(assert (=> b!608763 m!585389))

(declare-fun m!585391 () Bool)

(assert (=> b!608789 m!585391))

(assert (=> b!608789 m!585381))

(assert (=> b!608789 m!585381))

(declare-fun m!585393 () Bool)

(assert (=> b!608789 m!585393))

(assert (=> b!608779 m!585381))

(declare-fun m!585395 () Bool)

(assert (=> b!608779 m!585395))

(declare-fun m!585397 () Bool)

(assert (=> b!608779 m!585397))

(declare-fun m!585399 () Bool)

(assert (=> b!608783 m!585399))

(declare-fun m!585401 () Bool)

(assert (=> b!608783 m!585401))

(assert (=> b!608783 m!585381))

(declare-fun m!585403 () Bool)

(assert (=> b!608783 m!585403))

(assert (=> b!608783 m!585395))

(assert (=> b!608783 m!585381))

(declare-fun m!585405 () Bool)

(assert (=> b!608783 m!585405))

(declare-fun m!585407 () Bool)

(assert (=> b!608783 m!585407))

(declare-fun m!585409 () Bool)

(assert (=> b!608783 m!585409))

(declare-fun m!585411 () Bool)

(assert (=> b!608766 m!585411))

(assert (=> b!608769 m!585381))

(assert (=> b!608769 m!585381))

(declare-fun m!585413 () Bool)

(assert (=> b!608769 m!585413))

(assert (=> b!608769 m!585381))

(declare-fun m!585415 () Bool)

(assert (=> b!608769 m!585415))

(assert (=> b!608769 m!585381))

(assert (=> b!608769 m!585383))

(declare-fun m!585417 () Bool)

(assert (=> b!608768 m!585417))

(assert (=> b!608765 m!585381))

(declare-fun m!585419 () Bool)

(assert (=> b!608772 m!585419))

(declare-fun m!585421 () Bool)

(assert (=> b!608781 m!585421))

(declare-fun m!585423 () Bool)

(assert (=> b!608780 m!585423))

(assert (=> b!608767 m!585395))

(declare-fun m!585425 () Bool)

(assert (=> b!608767 m!585425))

(declare-fun m!585427 () Bool)

(assert (=> b!608778 m!585427))

(declare-fun m!585429 () Bool)

(assert (=> b!608777 m!585429))

(assert (=> b!608773 m!585381))

(assert (=> b!608773 m!585381))

(declare-fun m!585431 () Bool)

(assert (=> b!608773 m!585431))

(declare-fun m!585433 () Bool)

(assert (=> b!608787 m!585433))

(assert (=> b!608788 m!585381))

(assert (=> b!608788 m!585381))

(assert (=> b!608788 m!585389))

(declare-fun m!585435 () Bool)

(assert (=> b!608776 m!585435))

(declare-fun m!585437 () Bool)

(assert (=> b!608771 m!585437))

(assert (=> b!608764 m!585381))

(declare-fun m!585439 () Bool)

(assert (=> b!608764 m!585439))

(assert (=> b!608764 m!585381))

(declare-fun m!585441 () Bool)

(assert (=> b!608764 m!585441))

(declare-fun m!585443 () Bool)

(assert (=> b!608764 m!585443))

(assert (=> b!608764 m!585381))

(declare-fun m!585445 () Bool)

(assert (=> b!608764 m!585445))

(declare-fun m!585447 () Bool)

(assert (=> b!608764 m!585447))

(assert (=> b!608764 m!585381))

(declare-fun m!585449 () Bool)

(assert (=> b!608764 m!585449))

(declare-fun m!585451 () Bool)

(assert (=> b!608764 m!585451))

(push 1)

