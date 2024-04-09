; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126606 () Bool)

(assert start!126606)

(declare-fun b!1485470 () Bool)

(declare-fun res!1010259 () Bool)

(declare-fun e!832791 () Bool)

(assert (=> b!1485470 (=> (not res!1010259) (not e!832791))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12277 0))(
  ( (MissingZero!12277 (index!51499 (_ BitVec 32))) (Found!12277 (index!51500 (_ BitVec 32))) (Intermediate!12277 (undefined!13089 Bool) (index!51501 (_ BitVec 32)) (x!133076 (_ BitVec 32))) (Undefined!12277) (MissingVacant!12277 (index!51502 (_ BitVec 32))) )
))
(declare-fun lt!648073 () SeekEntryResult!12277)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99485 0))(
  ( (array!99486 (arr!48014 (Array (_ BitVec 32) (_ BitVec 64))) (size!48565 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99485)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99485 (_ BitVec 32)) SeekEntryResult!12277)

(assert (=> b!1485470 (= res!1010259 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48014 a!2862) j!93) a!2862 mask!2687) lt!648073))))

(declare-fun b!1485471 () Bool)

(declare-fun res!1010260 () Bool)

(declare-fun e!832793 () Bool)

(assert (=> b!1485471 (=> (not res!1010260) (not e!832793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99485 (_ BitVec 32)) Bool)

(assert (=> b!1485471 (= res!1010260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485472 () Bool)

(declare-fun res!1010266 () Bool)

(declare-fun e!832794 () Bool)

(assert (=> b!1485472 (=> (not res!1010266) (not e!832794))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99485 (_ BitVec 32)) SeekEntryResult!12277)

(assert (=> b!1485472 (= res!1010266 (= (seekEntryOrOpen!0 (select (arr!48014 a!2862) j!93) a!2862 mask!2687) (Found!12277 j!93)))))

(declare-fun b!1485473 () Bool)

(declare-fun res!1010250 () Bool)

(assert (=> b!1485473 (=> (not res!1010250) (not e!832793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485473 (= res!1010250 (validKeyInArray!0 (select (arr!48014 a!2862) j!93)))))

(declare-fun b!1485474 () Bool)

(declare-fun res!1010264 () Bool)

(assert (=> b!1485474 (=> (not res!1010264) (not e!832793))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485474 (= res!1010264 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48565 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48565 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48565 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1010252 () Bool)

(assert (=> start!126606 (=> (not res!1010252) (not e!832793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126606 (= res!1010252 (validMask!0 mask!2687))))

(assert (=> start!126606 e!832793))

(assert (=> start!126606 true))

(declare-fun array_inv!36959 (array!99485) Bool)

(assert (=> start!126606 (array_inv!36959 a!2862)))

(declare-fun b!1485475 () Bool)

(declare-fun res!1010262 () Bool)

(declare-fun e!832795 () Bool)

(assert (=> b!1485475 (=> (not res!1010262) (not e!832795))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485475 (= res!1010262 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485476 () Bool)

(declare-fun e!832799 () Bool)

(assert (=> b!1485476 (= e!832799 true)))

(declare-fun lt!648075 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485476 (= lt!648075 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485477 () Bool)

(declare-fun res!1010263 () Bool)

(assert (=> b!1485477 (=> (not res!1010263) (not e!832793))))

(assert (=> b!1485477 (= res!1010263 (validKeyInArray!0 (select (arr!48014 a!2862) i!1006)))))

(declare-fun b!1485478 () Bool)

(declare-fun res!1010257 () Bool)

(assert (=> b!1485478 (=> (not res!1010257) (not e!832793))))

(declare-datatypes ((List!34695 0))(
  ( (Nil!34692) (Cons!34691 (h!36065 (_ BitVec 64)) (t!49396 List!34695)) )
))
(declare-fun arrayNoDuplicates!0 (array!99485 (_ BitVec 32) List!34695) Bool)

(assert (=> b!1485478 (= res!1010257 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34692))))

(declare-fun b!1485479 () Bool)

(declare-fun res!1010265 () Bool)

(assert (=> b!1485479 (=> (not res!1010265) (not e!832794))))

(assert (=> b!1485479 (= res!1010265 (or (= (select (arr!48014 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48014 a!2862) intermediateBeforeIndex!19) (select (arr!48014 a!2862) j!93))))))

(declare-fun b!1485480 () Bool)

(declare-fun res!1010261 () Bool)

(assert (=> b!1485480 (=> (not res!1010261) (not e!832795))))

(declare-fun e!832792 () Bool)

(assert (=> b!1485480 (= res!1010261 e!832792)))

(declare-fun c!137135 () Bool)

(assert (=> b!1485480 (= c!137135 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485481 () Bool)

(declare-fun lt!648070 () array!99485)

(declare-fun lt!648076 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99485 (_ BitVec 32)) SeekEntryResult!12277)

(assert (=> b!1485481 (= e!832792 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648076 lt!648070 mask!2687) (seekEntryOrOpen!0 lt!648076 lt!648070 mask!2687)))))

(declare-fun b!1485482 () Bool)

(declare-fun e!832790 () Bool)

(assert (=> b!1485482 (= e!832793 e!832790)))

(declare-fun res!1010256 () Bool)

(assert (=> b!1485482 (=> (not res!1010256) (not e!832790))))

(assert (=> b!1485482 (= res!1010256 (= (select (store (arr!48014 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485482 (= lt!648070 (array!99486 (store (arr!48014 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48565 a!2862)))))

(declare-fun b!1485483 () Bool)

(assert (=> b!1485483 (= e!832791 e!832795)))

(declare-fun res!1010267 () Bool)

(assert (=> b!1485483 (=> (not res!1010267) (not e!832795))))

(declare-fun lt!648072 () SeekEntryResult!12277)

(assert (=> b!1485483 (= res!1010267 (= lt!648072 (Intermediate!12277 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485483 (= lt!648072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648076 mask!2687) lt!648076 lt!648070 mask!2687))))

(assert (=> b!1485483 (= lt!648076 (select (store (arr!48014 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485484 () Bool)

(declare-fun e!832796 () Bool)

(assert (=> b!1485484 (= e!832796 (= (seekEntryOrOpen!0 lt!648076 lt!648070 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648076 lt!648070 mask!2687)))))

(declare-fun b!1485485 () Bool)

(declare-fun res!1010268 () Bool)

(assert (=> b!1485485 (=> (not res!1010268) (not e!832793))))

(assert (=> b!1485485 (= res!1010268 (and (= (size!48565 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48565 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48565 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485486 () Bool)

(declare-fun e!832798 () Bool)

(assert (=> b!1485486 (= e!832794 e!832798)))

(declare-fun res!1010251 () Bool)

(assert (=> b!1485486 (=> res!1010251 e!832798)))

(declare-fun lt!648071 () (_ BitVec 64))

(assert (=> b!1485486 (= res!1010251 (or (and (= (select (arr!48014 a!2862) index!646) lt!648071) (= (select (arr!48014 a!2862) index!646) (select (arr!48014 a!2862) j!93))) (= (select (arr!48014 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485486 (= lt!648071 (select (store (arr!48014 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485487 () Bool)

(assert (=> b!1485487 (= e!832795 (not e!832799))))

(declare-fun res!1010254 () Bool)

(assert (=> b!1485487 (=> res!1010254 e!832799)))

(assert (=> b!1485487 (= res!1010254 (or (and (= (select (arr!48014 a!2862) index!646) (select (store (arr!48014 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48014 a!2862) index!646) (select (arr!48014 a!2862) j!93))) (= (select (arr!48014 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485487 e!832794))

(declare-fun res!1010255 () Bool)

(assert (=> b!1485487 (=> (not res!1010255) (not e!832794))))

(assert (=> b!1485487 (= res!1010255 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49842 0))(
  ( (Unit!49843) )
))
(declare-fun lt!648074 () Unit!49842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49842)

(assert (=> b!1485487 (= lt!648074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485488 () Bool)

(assert (=> b!1485488 (= e!832790 e!832791)))

(declare-fun res!1010258 () Bool)

(assert (=> b!1485488 (=> (not res!1010258) (not e!832791))))

(assert (=> b!1485488 (= res!1010258 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48014 a!2862) j!93) mask!2687) (select (arr!48014 a!2862) j!93) a!2862 mask!2687) lt!648073))))

(assert (=> b!1485488 (= lt!648073 (Intermediate!12277 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485489 () Bool)

(assert (=> b!1485489 (= e!832798 e!832796)))

(declare-fun res!1010253 () Bool)

(assert (=> b!1485489 (=> (not res!1010253) (not e!832796))))

(assert (=> b!1485489 (= res!1010253 (and (= index!646 intermediateAfterIndex!19) (= lt!648071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485490 () Bool)

(assert (=> b!1485490 (= e!832792 (= lt!648072 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648076 lt!648070 mask!2687)))))

(assert (= (and start!126606 res!1010252) b!1485485))

(assert (= (and b!1485485 res!1010268) b!1485477))

(assert (= (and b!1485477 res!1010263) b!1485473))

(assert (= (and b!1485473 res!1010250) b!1485471))

(assert (= (and b!1485471 res!1010260) b!1485478))

(assert (= (and b!1485478 res!1010257) b!1485474))

(assert (= (and b!1485474 res!1010264) b!1485482))

(assert (= (and b!1485482 res!1010256) b!1485488))

(assert (= (and b!1485488 res!1010258) b!1485470))

(assert (= (and b!1485470 res!1010259) b!1485483))

(assert (= (and b!1485483 res!1010267) b!1485480))

(assert (= (and b!1485480 c!137135) b!1485490))

(assert (= (and b!1485480 (not c!137135)) b!1485481))

(assert (= (and b!1485480 res!1010261) b!1485475))

(assert (= (and b!1485475 res!1010262) b!1485487))

(assert (= (and b!1485487 res!1010255) b!1485472))

(assert (= (and b!1485472 res!1010266) b!1485479))

(assert (= (and b!1485479 res!1010265) b!1485486))

(assert (= (and b!1485486 (not res!1010251)) b!1485489))

(assert (= (and b!1485489 res!1010253) b!1485484))

(assert (= (and b!1485487 (not res!1010254)) b!1485476))

(declare-fun m!1370641 () Bool)

(assert (=> b!1485471 m!1370641))

(declare-fun m!1370643 () Bool)

(assert (=> b!1485481 m!1370643))

(declare-fun m!1370645 () Bool)

(assert (=> b!1485481 m!1370645))

(declare-fun m!1370647 () Bool)

(assert (=> b!1485479 m!1370647))

(declare-fun m!1370649 () Bool)

(assert (=> b!1485479 m!1370649))

(declare-fun m!1370651 () Bool)

(assert (=> b!1485482 m!1370651))

(declare-fun m!1370653 () Bool)

(assert (=> b!1485482 m!1370653))

(declare-fun m!1370655 () Bool)

(assert (=> b!1485490 m!1370655))

(assert (=> b!1485484 m!1370645))

(assert (=> b!1485484 m!1370643))

(declare-fun m!1370657 () Bool)

(assert (=> b!1485486 m!1370657))

(assert (=> b!1485486 m!1370649))

(assert (=> b!1485486 m!1370651))

(declare-fun m!1370659 () Bool)

(assert (=> b!1485486 m!1370659))

(declare-fun m!1370661 () Bool)

(assert (=> b!1485483 m!1370661))

(assert (=> b!1485483 m!1370661))

(declare-fun m!1370663 () Bool)

(assert (=> b!1485483 m!1370663))

(assert (=> b!1485483 m!1370651))

(declare-fun m!1370665 () Bool)

(assert (=> b!1485483 m!1370665))

(declare-fun m!1370667 () Bool)

(assert (=> b!1485477 m!1370667))

(assert (=> b!1485477 m!1370667))

(declare-fun m!1370669 () Bool)

(assert (=> b!1485477 m!1370669))

(assert (=> b!1485488 m!1370649))

(assert (=> b!1485488 m!1370649))

(declare-fun m!1370671 () Bool)

(assert (=> b!1485488 m!1370671))

(assert (=> b!1485488 m!1370671))

(assert (=> b!1485488 m!1370649))

(declare-fun m!1370673 () Bool)

(assert (=> b!1485488 m!1370673))

(declare-fun m!1370675 () Bool)

(assert (=> b!1485476 m!1370675))

(declare-fun m!1370677 () Bool)

(assert (=> b!1485478 m!1370677))

(declare-fun m!1370679 () Bool)

(assert (=> start!126606 m!1370679))

(declare-fun m!1370681 () Bool)

(assert (=> start!126606 m!1370681))

(assert (=> b!1485470 m!1370649))

(assert (=> b!1485470 m!1370649))

(declare-fun m!1370683 () Bool)

(assert (=> b!1485470 m!1370683))

(declare-fun m!1370685 () Bool)

(assert (=> b!1485487 m!1370685))

(assert (=> b!1485487 m!1370651))

(assert (=> b!1485487 m!1370659))

(assert (=> b!1485487 m!1370657))

(declare-fun m!1370687 () Bool)

(assert (=> b!1485487 m!1370687))

(assert (=> b!1485487 m!1370649))

(assert (=> b!1485472 m!1370649))

(assert (=> b!1485472 m!1370649))

(declare-fun m!1370689 () Bool)

(assert (=> b!1485472 m!1370689))

(assert (=> b!1485473 m!1370649))

(assert (=> b!1485473 m!1370649))

(declare-fun m!1370691 () Bool)

(assert (=> b!1485473 m!1370691))

(check-sat (not b!1485472) (not start!126606) (not b!1485488) (not b!1485476) (not b!1485477) (not b!1485487) (not b!1485478) (not b!1485484) (not b!1485473) (not b!1485471) (not b!1485490) (not b!1485483) (not b!1485470) (not b!1485481))
(check-sat)
