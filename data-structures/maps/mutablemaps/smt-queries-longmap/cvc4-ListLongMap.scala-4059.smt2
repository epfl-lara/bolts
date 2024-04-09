; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55594 () Bool)

(assert start!55594)

(declare-fun b!608682 () Bool)

(declare-fun res!391475 () Bool)

(declare-fun e!348608 () Bool)

(assert (=> b!608682 (=> (not res!391475) (not e!348608))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37288 0))(
  ( (array!37289 (arr!17891 (Array (_ BitVec 32) (_ BitVec 64))) (size!18255 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37288)

(assert (=> b!608682 (= res!391475 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17891 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608683 () Bool)

(declare-fun e!348596 () Bool)

(declare-fun e!348604 () Bool)

(assert (=> b!608683 (= e!348596 e!348604)))

(declare-fun res!391481 () Bool)

(assert (=> b!608683 (=> res!391481 e!348604)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278199 () (_ BitVec 64))

(declare-fun lt!278195 () (_ BitVec 64))

(assert (=> b!608683 (= res!391481 (or (not (= (select (arr!17891 a!2986) j!136) lt!278195)) (not (= (select (arr!17891 a!2986) j!136) lt!278199)) (bvsge j!136 index!984)))))

(declare-fun b!608684 () Bool)

(declare-fun e!348600 () Bool)

(declare-fun e!348599 () Bool)

(assert (=> b!608684 (= e!348600 e!348599)))

(declare-fun res!391463 () Bool)

(assert (=> b!608684 (=> res!391463 e!348599)))

(assert (=> b!608684 (= res!391463 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19456 0))(
  ( (Unit!19457) )
))
(declare-fun lt!278203 () Unit!19456)

(declare-fun e!348607 () Unit!19456)

(assert (=> b!608684 (= lt!278203 e!348607)))

(declare-fun c!68978 () Bool)

(assert (=> b!608684 (= c!68978 (bvslt j!136 index!984))))

(declare-fun b!608686 () Bool)

(declare-fun e!348598 () Unit!19456)

(declare-fun Unit!19458 () Unit!19456)

(assert (=> b!608686 (= e!348598 Unit!19458)))

(declare-fun b!608687 () Bool)

(declare-fun e!348602 () Bool)

(declare-fun e!348610 () Bool)

(assert (=> b!608687 (= e!348602 (not e!348610))))

(declare-fun res!391482 () Bool)

(assert (=> b!608687 (=> res!391482 e!348610)))

(declare-datatypes ((SeekEntryResult!6338 0))(
  ( (MissingZero!6338 (index!27626 (_ BitVec 32))) (Found!6338 (index!27627 (_ BitVec 32))) (Intermediate!6338 (undefined!7150 Bool) (index!27628 (_ BitVec 32)) (x!56456 (_ BitVec 32))) (Undefined!6338) (MissingVacant!6338 (index!27629 (_ BitVec 32))) )
))
(declare-fun lt!278197 () SeekEntryResult!6338)

(assert (=> b!608687 (= res!391482 (not (= lt!278197 (Found!6338 index!984))))))

(declare-fun lt!278205 () Unit!19456)

(assert (=> b!608687 (= lt!278205 e!348598)))

(declare-fun c!68977 () Bool)

(assert (=> b!608687 (= c!68977 (= lt!278197 Undefined!6338))))

(declare-fun lt!278194 () array!37288)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37288 (_ BitVec 32)) SeekEntryResult!6338)

(assert (=> b!608687 (= lt!278197 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278195 lt!278194 mask!3053))))

(declare-fun e!348603 () Bool)

(assert (=> b!608687 e!348603))

(declare-fun res!391478 () Bool)

(assert (=> b!608687 (=> (not res!391478) (not e!348603))))

(declare-fun lt!278207 () SeekEntryResult!6338)

(declare-fun lt!278206 () (_ BitVec 32))

(assert (=> b!608687 (= res!391478 (= lt!278207 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278206 vacantSpotIndex!68 lt!278195 lt!278194 mask!3053)))))

(assert (=> b!608687 (= lt!278207 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278206 vacantSpotIndex!68 (select (arr!17891 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!608687 (= lt!278195 (select (store (arr!17891 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278192 () Unit!19456)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37288 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19456)

(assert (=> b!608687 (= lt!278192 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278206 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608687 (= lt!278206 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608688 () Bool)

(assert (=> b!608688 (= e!348610 e!348600)))

(declare-fun res!391468 () Bool)

(assert (=> b!608688 (=> res!391468 e!348600)))

(assert (=> b!608688 (= res!391468 (or (not (= (select (arr!17891 a!2986) j!136) lt!278195)) (not (= (select (arr!17891 a!2986) j!136) lt!278199))))))

(assert (=> b!608688 e!348596))

(declare-fun res!391479 () Bool)

(assert (=> b!608688 (=> (not res!391479) (not e!348596))))

(assert (=> b!608688 (= res!391479 (= lt!278199 (select (arr!17891 a!2986) j!136)))))

(assert (=> b!608688 (= lt!278199 (select (store (arr!17891 a!2986) i!1108 k!1786) index!984))))

(declare-fun e!348601 () Bool)

(declare-fun b!608689 () Bool)

(declare-fun arrayContainsKey!0 (array!37288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608689 (= e!348601 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) index!984))))

(declare-fun b!608690 () Bool)

(declare-fun Unit!19459 () Unit!19456)

(assert (=> b!608690 (= e!348607 Unit!19459)))

(declare-fun lt!278201 () Unit!19456)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37288 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19456)

(assert (=> b!608690 (= lt!278201 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278194 (select (arr!17891 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608690 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278204 () Unit!19456)

(declare-datatypes ((List!11985 0))(
  ( (Nil!11982) (Cons!11981 (h!13026 (_ BitVec 64)) (t!18221 List!11985)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37288 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11985) Unit!19456)

(assert (=> b!608690 (= lt!278204 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11982))))

(declare-fun arrayNoDuplicates!0 (array!37288 (_ BitVec 32) List!11985) Bool)

(assert (=> b!608690 (arrayNoDuplicates!0 lt!278194 #b00000000000000000000000000000000 Nil!11982)))

(declare-fun lt!278198 () Unit!19456)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37288 (_ BitVec 32) (_ BitVec 32)) Unit!19456)

(assert (=> b!608690 (= lt!278198 (lemmaNoDuplicateFromThenFromBigger!0 lt!278194 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608690 (arrayNoDuplicates!0 lt!278194 j!136 Nil!11982)))

(declare-fun lt!278200 () Unit!19456)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37288 (_ BitVec 64) (_ BitVec 32) List!11985) Unit!19456)

(assert (=> b!608690 (= lt!278200 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278194 (select (arr!17891 a!2986) j!136) j!136 Nil!11982))))

(assert (=> b!608690 false))

(declare-fun b!608691 () Bool)

(declare-fun res!391477 () Bool)

(declare-fun e!348606 () Bool)

(assert (=> b!608691 (=> res!391477 e!348606)))

(declare-fun contains!3031 (List!11985 (_ BitVec 64)) Bool)

(assert (=> b!608691 (= res!391477 (contains!3031 Nil!11982 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608692 () Bool)

(declare-fun e!348595 () Bool)

(assert (=> b!608692 (= e!348608 e!348595)))

(declare-fun res!391470 () Bool)

(assert (=> b!608692 (=> (not res!391470) (not e!348595))))

(assert (=> b!608692 (= res!391470 (= (select (store (arr!17891 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608692 (= lt!278194 (array!37289 (store (arr!17891 a!2986) i!1108 k!1786) (size!18255 a!2986)))))

(declare-fun b!608693 () Bool)

(declare-fun res!391471 () Bool)

(declare-fun e!348605 () Bool)

(assert (=> b!608693 (=> (not res!391471) (not e!348605))))

(assert (=> b!608693 (= res!391471 (and (= (size!18255 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18255 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18255 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608694 () Bool)

(declare-fun res!391469 () Bool)

(assert (=> b!608694 (=> (not res!391469) (not e!348605))))

(assert (=> b!608694 (= res!391469 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608695 () Bool)

(declare-fun res!391465 () Bool)

(assert (=> b!608695 (=> res!391465 e!348606)))

(assert (=> b!608695 (= res!391465 (contains!3031 Nil!11982 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608696 () Bool)

(declare-fun e!348597 () Bool)

(assert (=> b!608696 (= e!348604 e!348597)))

(declare-fun res!391480 () Bool)

(assert (=> b!608696 (=> (not res!391480) (not e!348597))))

(assert (=> b!608696 (= res!391480 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) j!136))))

(declare-fun b!608697 () Bool)

(declare-fun Unit!19460 () Unit!19456)

(assert (=> b!608697 (= e!348607 Unit!19460)))

(declare-fun b!608698 () Bool)

(assert (=> b!608698 (= e!348595 e!348602)))

(declare-fun res!391466 () Bool)

(assert (=> b!608698 (=> (not res!391466) (not e!348602))))

(declare-fun lt!278208 () SeekEntryResult!6338)

(assert (=> b!608698 (= res!391466 (and (= lt!278208 (Found!6338 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17891 a!2986) index!984) (select (arr!17891 a!2986) j!136))) (not (= (select (arr!17891 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!608698 (= lt!278208 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17891 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608699 () Bool)

(assert (=> b!608699 (= e!348597 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) index!984))))

(declare-fun b!608685 () Bool)

(declare-fun res!391473 () Bool)

(assert (=> b!608685 (=> (not res!391473) (not e!348605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608685 (= res!391473 (validKeyInArray!0 k!1786))))

(declare-fun res!391467 () Bool)

(assert (=> start!55594 (=> (not res!391467) (not e!348605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55594 (= res!391467 (validMask!0 mask!3053))))

(assert (=> start!55594 e!348605))

(assert (=> start!55594 true))

(declare-fun array_inv!13665 (array!37288) Bool)

(assert (=> start!55594 (array_inv!13665 a!2986)))

(declare-fun b!608700 () Bool)

(assert (=> b!608700 (= e!348605 e!348608)))

(declare-fun res!391483 () Bool)

(assert (=> b!608700 (=> (not res!391483) (not e!348608))))

(declare-fun lt!278193 () SeekEntryResult!6338)

(assert (=> b!608700 (= res!391483 (or (= lt!278193 (MissingZero!6338 i!1108)) (= lt!278193 (MissingVacant!6338 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37288 (_ BitVec 32)) SeekEntryResult!6338)

(assert (=> b!608700 (= lt!278193 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608701 () Bool)

(assert (=> b!608701 (= e!348599 e!348606)))

(declare-fun res!391472 () Bool)

(assert (=> b!608701 (=> res!391472 e!348606)))

(assert (=> b!608701 (= res!391472 (or (bvsge (size!18255 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18255 a!2986))))))

(assert (=> b!608701 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278202 () Unit!19456)

(assert (=> b!608701 (= lt!278202 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278194 (select (arr!17891 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608701 e!348601))

(declare-fun res!391474 () Bool)

(assert (=> b!608701 (=> (not res!391474) (not e!348601))))

(assert (=> b!608701 (= res!391474 (arrayContainsKey!0 lt!278194 (select (arr!17891 a!2986) j!136) j!136))))

(declare-fun b!608702 () Bool)

(declare-fun res!391476 () Bool)

(assert (=> b!608702 (=> (not res!391476) (not e!348608))))

(assert (=> b!608702 (= res!391476 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11982))))

(declare-fun b!608703 () Bool)

(declare-fun Unit!19461 () Unit!19456)

(assert (=> b!608703 (= e!348598 Unit!19461)))

(assert (=> b!608703 false))

(declare-fun b!608704 () Bool)

(declare-fun res!391464 () Bool)

(assert (=> b!608704 (=> (not res!391464) (not e!348605))))

(assert (=> b!608704 (= res!391464 (validKeyInArray!0 (select (arr!17891 a!2986) j!136)))))

(declare-fun b!608705 () Bool)

(assert (=> b!608705 (= e!348606 true)))

(declare-fun lt!278196 () Bool)

(assert (=> b!608705 (= lt!278196 (contains!3031 Nil!11982 k!1786))))

(declare-fun b!608706 () Bool)

(declare-fun res!391484 () Bool)

(assert (=> b!608706 (=> (not res!391484) (not e!348608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37288 (_ BitVec 32)) Bool)

(assert (=> b!608706 (= res!391484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608707 () Bool)

(declare-fun res!391462 () Bool)

(assert (=> b!608707 (=> res!391462 e!348606)))

(declare-fun noDuplicate!333 (List!11985) Bool)

(assert (=> b!608707 (= res!391462 (not (noDuplicate!333 Nil!11982)))))

(declare-fun b!608708 () Bool)

(assert (=> b!608708 (= e!348603 (= lt!278208 lt!278207))))

(assert (= (and start!55594 res!391467) b!608693))

(assert (= (and b!608693 res!391471) b!608704))

(assert (= (and b!608704 res!391464) b!608685))

(assert (= (and b!608685 res!391473) b!608694))

(assert (= (and b!608694 res!391469) b!608700))

(assert (= (and b!608700 res!391483) b!608706))

(assert (= (and b!608706 res!391484) b!608702))

(assert (= (and b!608702 res!391476) b!608682))

(assert (= (and b!608682 res!391475) b!608692))

(assert (= (and b!608692 res!391470) b!608698))

(assert (= (and b!608698 res!391466) b!608687))

(assert (= (and b!608687 res!391478) b!608708))

(assert (= (and b!608687 c!68977) b!608703))

(assert (= (and b!608687 (not c!68977)) b!608686))

(assert (= (and b!608687 (not res!391482)) b!608688))

(assert (= (and b!608688 res!391479) b!608683))

(assert (= (and b!608683 (not res!391481)) b!608696))

(assert (= (and b!608696 res!391480) b!608699))

(assert (= (and b!608688 (not res!391468)) b!608684))

(assert (= (and b!608684 c!68978) b!608690))

(assert (= (and b!608684 (not c!68978)) b!608697))

(assert (= (and b!608684 (not res!391463)) b!608701))

(assert (= (and b!608701 res!391474) b!608689))

(assert (= (and b!608701 (not res!391472)) b!608707))

(assert (= (and b!608707 (not res!391462)) b!608691))

(assert (= (and b!608691 (not res!391477)) b!608695))

(assert (= (and b!608695 (not res!391465)) b!608705))

(declare-fun m!585309 () Bool)

(assert (=> b!608704 m!585309))

(assert (=> b!608704 m!585309))

(declare-fun m!585311 () Bool)

(assert (=> b!608704 m!585311))

(assert (=> b!608696 m!585309))

(assert (=> b!608696 m!585309))

(declare-fun m!585313 () Bool)

(assert (=> b!608696 m!585313))

(declare-fun m!585315 () Bool)

(assert (=> b!608685 m!585315))

(assert (=> b!608688 m!585309))

(declare-fun m!585317 () Bool)

(assert (=> b!608688 m!585317))

(declare-fun m!585319 () Bool)

(assert (=> b!608688 m!585319))

(declare-fun m!585321 () Bool)

(assert (=> b!608700 m!585321))

(declare-fun m!585323 () Bool)

(assert (=> b!608707 m!585323))

(declare-fun m!585325 () Bool)

(assert (=> b!608706 m!585325))

(declare-fun m!585327 () Bool)

(assert (=> b!608695 m!585327))

(declare-fun m!585329 () Bool)

(assert (=> b!608698 m!585329))

(assert (=> b!608698 m!585309))

(assert (=> b!608698 m!585309))

(declare-fun m!585331 () Bool)

(assert (=> b!608698 m!585331))

(declare-fun m!585333 () Bool)

(assert (=> start!55594 m!585333))

(declare-fun m!585335 () Bool)

(assert (=> start!55594 m!585335))

(assert (=> b!608701 m!585309))

(assert (=> b!608701 m!585309))

(declare-fun m!585337 () Bool)

(assert (=> b!608701 m!585337))

(assert (=> b!608701 m!585309))

(declare-fun m!585339 () Bool)

(assert (=> b!608701 m!585339))

(assert (=> b!608701 m!585309))

(assert (=> b!608701 m!585313))

(assert (=> b!608683 m!585309))

(declare-fun m!585341 () Bool)

(assert (=> b!608682 m!585341))

(declare-fun m!585343 () Bool)

(assert (=> b!608705 m!585343))

(declare-fun m!585345 () Bool)

(assert (=> b!608691 m!585345))

(declare-fun m!585347 () Bool)

(assert (=> b!608702 m!585347))

(declare-fun m!585349 () Bool)

(assert (=> b!608694 m!585349))

(declare-fun m!585351 () Bool)

(assert (=> b!608690 m!585351))

(assert (=> b!608690 m!585309))

(assert (=> b!608690 m!585309))

(declare-fun m!585353 () Bool)

(assert (=> b!608690 m!585353))

(declare-fun m!585355 () Bool)

(assert (=> b!608690 m!585355))

(assert (=> b!608690 m!585309))

(declare-fun m!585357 () Bool)

(assert (=> b!608690 m!585357))

(declare-fun m!585359 () Bool)

(assert (=> b!608690 m!585359))

(declare-fun m!585361 () Bool)

(assert (=> b!608690 m!585361))

(assert (=> b!608690 m!585309))

(declare-fun m!585363 () Bool)

(assert (=> b!608690 m!585363))

(assert (=> b!608699 m!585309))

(assert (=> b!608699 m!585309))

(declare-fun m!585365 () Bool)

(assert (=> b!608699 m!585365))

(assert (=> b!608692 m!585317))

(declare-fun m!585367 () Bool)

(assert (=> b!608692 m!585367))

(declare-fun m!585369 () Bool)

(assert (=> b!608687 m!585369))

(declare-fun m!585371 () Bool)

(assert (=> b!608687 m!585371))

(declare-fun m!585373 () Bool)

(assert (=> b!608687 m!585373))

(assert (=> b!608687 m!585309))

(assert (=> b!608687 m!585317))

(assert (=> b!608687 m!585309))

(declare-fun m!585375 () Bool)

(assert (=> b!608687 m!585375))

(declare-fun m!585377 () Bool)

(assert (=> b!608687 m!585377))

(declare-fun m!585379 () Bool)

(assert (=> b!608687 m!585379))

(assert (=> b!608689 m!585309))

(assert (=> b!608689 m!585309))

(assert (=> b!608689 m!585365))

(push 1)

