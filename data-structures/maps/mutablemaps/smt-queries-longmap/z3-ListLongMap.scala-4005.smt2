; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54512 () Bool)

(assert start!54512)

(declare-fun b!594523 () Bool)

(declare-datatypes ((Unit!18644 0))(
  ( (Unit!18645) )
))
(declare-fun e!339687 () Unit!18644)

(declare-fun Unit!18646 () Unit!18644)

(assert (=> b!594523 (= e!339687 Unit!18646)))

(declare-fun b!594524 () Bool)

(declare-fun e!339694 () Bool)

(declare-datatypes ((SeekEntryResult!6175 0))(
  ( (MissingZero!6175 (index!26947 (_ BitVec 32))) (Found!6175 (index!26948 (_ BitVec 32))) (Intermediate!6175 (undefined!6987 Bool) (index!26949 (_ BitVec 32)) (x!55780 (_ BitVec 32))) (Undefined!6175) (MissingVacant!6175 (index!26950 (_ BitVec 32))) )
))
(declare-fun lt!269955 () SeekEntryResult!6175)

(declare-fun lt!269959 () SeekEntryResult!6175)

(assert (=> b!594524 (= e!339694 (= lt!269955 lt!269959))))

(declare-fun b!594525 () Bool)

(declare-fun e!339688 () Bool)

(declare-fun e!339695 () Bool)

(assert (=> b!594525 (= e!339688 e!339695)))

(declare-fun res!380656 () Bool)

(assert (=> b!594525 (=> (not res!380656) (not e!339695))))

(declare-fun lt!269960 () SeekEntryResult!6175)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594525 (= res!380656 (or (= lt!269960 (MissingZero!6175 i!1108)) (= lt!269960 (MissingVacant!6175 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36935 0))(
  ( (array!36936 (arr!17728 (Array (_ BitVec 32) (_ BitVec 64))) (size!18092 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36935)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36935 (_ BitVec 32)) SeekEntryResult!6175)

(assert (=> b!594525 (= lt!269960 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!594526 () Bool)

(declare-fun e!339697 () Bool)

(declare-fun e!339690 () Bool)

(assert (=> b!594526 (= e!339697 e!339690)))

(declare-fun res!380646 () Bool)

(assert (=> b!594526 (=> (not res!380646) (not e!339690))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269961 () array!36935)

(declare-fun arrayContainsKey!0 (array!36935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594526 (= res!380646 (arrayContainsKey!0 lt!269961 (select (arr!17728 a!2986) j!136) j!136))))

(declare-fun b!594527 () Bool)

(declare-fun res!380652 () Bool)

(assert (=> b!594527 (=> (not res!380652) (not e!339695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36935 (_ BitVec 32)) Bool)

(assert (=> b!594527 (= res!380652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594528 () Bool)

(declare-fun res!380657 () Bool)

(declare-fun e!339692 () Bool)

(assert (=> b!594528 (=> res!380657 e!339692)))

(declare-datatypes ((List!11822 0))(
  ( (Nil!11819) (Cons!11818 (h!12863 (_ BitVec 64)) (t!18058 List!11822)) )
))
(declare-fun noDuplicate!242 (List!11822) Bool)

(assert (=> b!594528 (= res!380657 (not (noDuplicate!242 Nil!11819)))))

(declare-fun b!594529 () Bool)

(declare-fun e!339691 () Bool)

(declare-fun e!339685 () Bool)

(assert (=> b!594529 (= e!339691 (not e!339685))))

(declare-fun res!380639 () Bool)

(assert (=> b!594529 (=> res!380639 e!339685)))

(declare-fun lt!269957 () SeekEntryResult!6175)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594529 (= res!380639 (not (= lt!269957 (Found!6175 index!984))))))

(declare-fun lt!269954 () Unit!18644)

(assert (=> b!594529 (= lt!269954 e!339687)))

(declare-fun c!67310 () Bool)

(assert (=> b!594529 (= c!67310 (= lt!269957 Undefined!6175))))

(declare-fun lt!269956 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36935 (_ BitVec 32)) SeekEntryResult!6175)

(assert (=> b!594529 (= lt!269957 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269956 lt!269961 mask!3053))))

(assert (=> b!594529 e!339694))

(declare-fun res!380642 () Bool)

(assert (=> b!594529 (=> (not res!380642) (not e!339694))))

(declare-fun lt!269962 () (_ BitVec 32))

(assert (=> b!594529 (= res!380642 (= lt!269959 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269962 vacantSpotIndex!68 lt!269956 lt!269961 mask!3053)))))

(assert (=> b!594529 (= lt!269959 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269962 vacantSpotIndex!68 (select (arr!17728 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594529 (= lt!269956 (select (store (arr!17728 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269963 () Unit!18644)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36935 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18644)

(assert (=> b!594529 (= lt!269963 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269962 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594529 (= lt!269962 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594530 () Bool)

(declare-fun res!380650 () Bool)

(assert (=> b!594530 (=> (not res!380650) (not e!339688))))

(assert (=> b!594530 (= res!380650 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594531 () Bool)

(declare-fun e!339689 () Bool)

(assert (=> b!594531 (= e!339689 e!339692)))

(declare-fun res!380653 () Bool)

(assert (=> b!594531 (=> res!380653 e!339692)))

(assert (=> b!594531 (= res!380653 (or (bvsge (size!18092 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18092 a!2986))))))

(assert (=> b!594531 (arrayContainsKey!0 lt!269961 (select (arr!17728 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269958 () Unit!18644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36935 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18644)

(assert (=> b!594531 (= lt!269958 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269961 (select (arr!17728 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594532 () Bool)

(declare-fun res!380641 () Bool)

(assert (=> b!594532 (=> res!380641 e!339692)))

(declare-fun contains!2926 (List!11822 (_ BitVec 64)) Bool)

(assert (=> b!594532 (= res!380641 (contains!2926 Nil!11819 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594533 () Bool)

(assert (=> b!594533 (= e!339685 e!339689)))

(declare-fun res!380637 () Bool)

(assert (=> b!594533 (=> res!380637 e!339689)))

(declare-fun lt!269953 () (_ BitVec 64))

(assert (=> b!594533 (= res!380637 (or (not (= (select (arr!17728 a!2986) j!136) lt!269956)) (not (= (select (arr!17728 a!2986) j!136) lt!269953)) (bvsge j!136 index!984)))))

(declare-fun e!339693 () Bool)

(assert (=> b!594533 e!339693))

(declare-fun res!380644 () Bool)

(assert (=> b!594533 (=> (not res!380644) (not e!339693))))

(assert (=> b!594533 (= res!380644 (= lt!269953 (select (arr!17728 a!2986) j!136)))))

(assert (=> b!594533 (= lt!269953 (select (store (arr!17728 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!594534 () Bool)

(declare-fun Unit!18647 () Unit!18644)

(assert (=> b!594534 (= e!339687 Unit!18647)))

(assert (=> b!594534 false))

(declare-fun res!380638 () Bool)

(assert (=> start!54512 (=> (not res!380638) (not e!339688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54512 (= res!380638 (validMask!0 mask!3053))))

(assert (=> start!54512 e!339688))

(assert (=> start!54512 true))

(declare-fun array_inv!13502 (array!36935) Bool)

(assert (=> start!54512 (array_inv!13502 a!2986)))

(declare-fun b!594535 () Bool)

(declare-fun res!380643 () Bool)

(assert (=> b!594535 (=> (not res!380643) (not e!339688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594535 (= res!380643 (validKeyInArray!0 k0!1786))))

(declare-fun b!594536 () Bool)

(declare-fun res!380640 () Bool)

(assert (=> b!594536 (=> (not res!380640) (not e!339695))))

(declare-fun arrayNoDuplicates!0 (array!36935 (_ BitVec 32) List!11822) Bool)

(assert (=> b!594536 (= res!380640 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11819))))

(declare-fun b!594537 () Bool)

(assert (=> b!594537 (= e!339693 e!339697)))

(declare-fun res!380654 () Bool)

(assert (=> b!594537 (=> res!380654 e!339697)))

(assert (=> b!594537 (= res!380654 (or (not (= (select (arr!17728 a!2986) j!136) lt!269956)) (not (= (select (arr!17728 a!2986) j!136) lt!269953)) (bvsge j!136 index!984)))))

(declare-fun b!594538 () Bool)

(declare-fun res!380651 () Bool)

(assert (=> b!594538 (=> (not res!380651) (not e!339688))))

(assert (=> b!594538 (= res!380651 (validKeyInArray!0 (select (arr!17728 a!2986) j!136)))))

(declare-fun b!594539 () Bool)

(declare-fun res!380647 () Bool)

(assert (=> b!594539 (=> (not res!380647) (not e!339695))))

(assert (=> b!594539 (= res!380647 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17728 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594540 () Bool)

(assert (=> b!594540 (= e!339690 (arrayContainsKey!0 lt!269961 (select (arr!17728 a!2986) j!136) index!984))))

(declare-fun b!594541 () Bool)

(assert (=> b!594541 (= e!339692 true)))

(declare-fun lt!269964 () Bool)

(assert (=> b!594541 (= lt!269964 (contains!2926 Nil!11819 k0!1786))))

(declare-fun b!594542 () Bool)

(declare-fun res!380655 () Bool)

(assert (=> b!594542 (=> res!380655 e!339692)))

(assert (=> b!594542 (= res!380655 (contains!2926 Nil!11819 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594543 () Bool)

(declare-fun e!339696 () Bool)

(assert (=> b!594543 (= e!339696 e!339691)))

(declare-fun res!380649 () Bool)

(assert (=> b!594543 (=> (not res!380649) (not e!339691))))

(assert (=> b!594543 (= res!380649 (and (= lt!269955 (Found!6175 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17728 a!2986) index!984) (select (arr!17728 a!2986) j!136))) (not (= (select (arr!17728 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594543 (= lt!269955 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17728 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594544 () Bool)

(declare-fun res!380648 () Bool)

(assert (=> b!594544 (=> (not res!380648) (not e!339688))))

(assert (=> b!594544 (= res!380648 (and (= (size!18092 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18092 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18092 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594545 () Bool)

(assert (=> b!594545 (= e!339695 e!339696)))

(declare-fun res!380645 () Bool)

(assert (=> b!594545 (=> (not res!380645) (not e!339696))))

(assert (=> b!594545 (= res!380645 (= (select (store (arr!17728 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594545 (= lt!269961 (array!36936 (store (arr!17728 a!2986) i!1108 k0!1786) (size!18092 a!2986)))))

(assert (= (and start!54512 res!380638) b!594544))

(assert (= (and b!594544 res!380648) b!594538))

(assert (= (and b!594538 res!380651) b!594535))

(assert (= (and b!594535 res!380643) b!594530))

(assert (= (and b!594530 res!380650) b!594525))

(assert (= (and b!594525 res!380656) b!594527))

(assert (= (and b!594527 res!380652) b!594536))

(assert (= (and b!594536 res!380640) b!594539))

(assert (= (and b!594539 res!380647) b!594545))

(assert (= (and b!594545 res!380645) b!594543))

(assert (= (and b!594543 res!380649) b!594529))

(assert (= (and b!594529 res!380642) b!594524))

(assert (= (and b!594529 c!67310) b!594534))

(assert (= (and b!594529 (not c!67310)) b!594523))

(assert (= (and b!594529 (not res!380639)) b!594533))

(assert (= (and b!594533 res!380644) b!594537))

(assert (= (and b!594537 (not res!380654)) b!594526))

(assert (= (and b!594526 res!380646) b!594540))

(assert (= (and b!594533 (not res!380637)) b!594531))

(assert (= (and b!594531 (not res!380653)) b!594528))

(assert (= (and b!594528 (not res!380657)) b!594542))

(assert (= (and b!594542 (not res!380655)) b!594532))

(assert (= (and b!594532 (not res!380641)) b!594541))

(declare-fun m!572335 () Bool)

(assert (=> b!594542 m!572335))

(declare-fun m!572337 () Bool)

(assert (=> b!594545 m!572337))

(declare-fun m!572339 () Bool)

(assert (=> b!594545 m!572339))

(declare-fun m!572341 () Bool)

(assert (=> b!594527 m!572341))

(declare-fun m!572343 () Bool)

(assert (=> b!594541 m!572343))

(declare-fun m!572345 () Bool)

(assert (=> b!594535 m!572345))

(declare-fun m!572347 () Bool)

(assert (=> start!54512 m!572347))

(declare-fun m!572349 () Bool)

(assert (=> start!54512 m!572349))

(declare-fun m!572351 () Bool)

(assert (=> b!594532 m!572351))

(declare-fun m!572353 () Bool)

(assert (=> b!594533 m!572353))

(assert (=> b!594533 m!572337))

(declare-fun m!572355 () Bool)

(assert (=> b!594533 m!572355))

(assert (=> b!594531 m!572353))

(assert (=> b!594531 m!572353))

(declare-fun m!572357 () Bool)

(assert (=> b!594531 m!572357))

(assert (=> b!594531 m!572353))

(declare-fun m!572359 () Bool)

(assert (=> b!594531 m!572359))

(assert (=> b!594537 m!572353))

(declare-fun m!572361 () Bool)

(assert (=> b!594536 m!572361))

(declare-fun m!572363 () Bool)

(assert (=> b!594525 m!572363))

(declare-fun m!572365 () Bool)

(assert (=> b!594529 m!572365))

(declare-fun m!572367 () Bool)

(assert (=> b!594529 m!572367))

(assert (=> b!594529 m!572353))

(assert (=> b!594529 m!572337))

(assert (=> b!594529 m!572353))

(declare-fun m!572369 () Bool)

(assert (=> b!594529 m!572369))

(declare-fun m!572371 () Bool)

(assert (=> b!594529 m!572371))

(declare-fun m!572373 () Bool)

(assert (=> b!594529 m!572373))

(declare-fun m!572375 () Bool)

(assert (=> b!594529 m!572375))

(assert (=> b!594540 m!572353))

(assert (=> b!594540 m!572353))

(declare-fun m!572377 () Bool)

(assert (=> b!594540 m!572377))

(declare-fun m!572379 () Bool)

(assert (=> b!594539 m!572379))

(declare-fun m!572381 () Bool)

(assert (=> b!594528 m!572381))

(declare-fun m!572383 () Bool)

(assert (=> b!594543 m!572383))

(assert (=> b!594543 m!572353))

(assert (=> b!594543 m!572353))

(declare-fun m!572385 () Bool)

(assert (=> b!594543 m!572385))

(assert (=> b!594538 m!572353))

(assert (=> b!594538 m!572353))

(declare-fun m!572387 () Bool)

(assert (=> b!594538 m!572387))

(assert (=> b!594526 m!572353))

(assert (=> b!594526 m!572353))

(declare-fun m!572389 () Bool)

(assert (=> b!594526 m!572389))

(declare-fun m!572391 () Bool)

(assert (=> b!594530 m!572391))

(check-sat (not b!594543) (not b!594530) (not start!54512) (not b!594525) (not b!594535) (not b!594528) (not b!594542) (not b!594531) (not b!594527) (not b!594538) (not b!594540) (not b!594536) (not b!594541) (not b!594526) (not b!594529) (not b!594532))
(check-sat)
