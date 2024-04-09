; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125226 () Bool)

(assert start!125226)

(declare-fun b!1459630 () Bool)

(declare-fun res!989630 () Bool)

(declare-fun e!820854 () Bool)

(assert (=> b!1459630 (=> (not res!989630) (not e!820854))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11854 0))(
  ( (MissingZero!11854 (index!49807 (_ BitVec 32))) (Found!11854 (index!49808 (_ BitVec 32))) (Intermediate!11854 (undefined!12666 Bool) (index!49809 (_ BitVec 32)) (x!131418 (_ BitVec 32))) (Undefined!11854) (MissingVacant!11854 (index!49810 (_ BitVec 32))) )
))
(declare-fun lt!639499 () SeekEntryResult!11854)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98591 0))(
  ( (array!98592 (arr!47579 (Array (_ BitVec 32) (_ BitVec 64))) (size!48130 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98591)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98591 (_ BitVec 32)) SeekEntryResult!11854)

(assert (=> b!1459630 (= res!989630 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47579 a!2862) j!93) a!2862 mask!2687) lt!639499))))

(declare-fun b!1459631 () Bool)

(declare-fun e!820860 () Bool)

(declare-fun e!820855 () Bool)

(assert (=> b!1459631 (= e!820860 (not e!820855))))

(declare-fun res!989642 () Bool)

(assert (=> b!1459631 (=> res!989642 e!820855)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459631 (= res!989642 (or (and (= (select (arr!47579 a!2862) index!646) (select (store (arr!47579 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47579 a!2862) index!646) (select (arr!47579 a!2862) j!93))) (= (select (arr!47579 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639497 () SeekEntryResult!11854)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459631 (and (= lt!639497 (Found!11854 j!93)) (or (= (select (arr!47579 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47579 a!2862) intermediateBeforeIndex!19) (select (arr!47579 a!2862) j!93))) (let ((bdg!53531 (select (store (arr!47579 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47579 a!2862) index!646) bdg!53531) (= (select (arr!47579 a!2862) index!646) (select (arr!47579 a!2862) j!93))) (= (select (arr!47579 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53531 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98591 (_ BitVec 32)) SeekEntryResult!11854)

(assert (=> b!1459631 (= lt!639497 (seekEntryOrOpen!0 (select (arr!47579 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98591 (_ BitVec 32)) Bool)

(assert (=> b!1459631 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49152 0))(
  ( (Unit!49153) )
))
(declare-fun lt!639498 () Unit!49152)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49152)

(assert (=> b!1459631 (= lt!639498 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459632 () Bool)

(declare-fun res!989631 () Bool)

(assert (=> b!1459632 (=> (not res!989631) (not e!820860))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459632 (= res!989631 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!639496 () (_ BitVec 64))

(declare-fun e!820861 () Bool)

(declare-fun b!1459633 () Bool)

(declare-fun lt!639495 () array!98591)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98591 (_ BitVec 32)) SeekEntryResult!11854)

(assert (=> b!1459633 (= e!820861 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639496 lt!639495 mask!2687) (seekEntryOrOpen!0 lt!639496 lt!639495 mask!2687)))))

(declare-fun b!1459634 () Bool)

(declare-fun res!989636 () Bool)

(declare-fun e!820857 () Bool)

(assert (=> b!1459634 (=> (not res!989636) (not e!820857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459634 (= res!989636 (validKeyInArray!0 (select (arr!47579 a!2862) i!1006)))))

(declare-fun b!1459635 () Bool)

(assert (=> b!1459635 (= e!820854 e!820860)))

(declare-fun res!989643 () Bool)

(assert (=> b!1459635 (=> (not res!989643) (not e!820860))))

(declare-fun lt!639494 () SeekEntryResult!11854)

(assert (=> b!1459635 (= res!989643 (= lt!639494 (Intermediate!11854 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459635 (= lt!639494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639496 mask!2687) lt!639496 lt!639495 mask!2687))))

(assert (=> b!1459635 (= lt!639496 (select (store (arr!47579 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!820862 () Bool)

(declare-fun b!1459636 () Bool)

(declare-fun lt!639501 () (_ BitVec 32))

(assert (=> b!1459636 (= e!820862 (not (= lt!639494 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639501 lt!639496 lt!639495 mask!2687))))))

(declare-fun b!1459637 () Bool)

(declare-fun res!989640 () Bool)

(declare-fun e!820858 () Bool)

(assert (=> b!1459637 (=> res!989640 e!820858)))

(assert (=> b!1459637 (= res!989640 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639501 (select (arr!47579 a!2862) j!93) a!2862 mask!2687) lt!639499)))))

(declare-fun b!1459638 () Bool)

(declare-fun res!989632 () Bool)

(assert (=> b!1459638 (=> (not res!989632) (not e!820857))))

(assert (=> b!1459638 (= res!989632 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48130 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48130 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48130 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459639 () Bool)

(declare-fun res!989629 () Bool)

(assert (=> b!1459639 (=> (not res!989629) (not e!820860))))

(assert (=> b!1459639 (= res!989629 e!820861)))

(declare-fun c!134515 () Bool)

(assert (=> b!1459639 (= c!134515 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459640 () Bool)

(declare-fun res!989627 () Bool)

(assert (=> b!1459640 (=> res!989627 e!820858)))

(assert (=> b!1459640 (= res!989627 e!820862)))

(declare-fun c!134516 () Bool)

(assert (=> b!1459640 (= c!134516 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459641 () Bool)

(declare-fun e!820859 () Bool)

(assert (=> b!1459641 (= e!820859 e!820854)))

(declare-fun res!989633 () Bool)

(assert (=> b!1459641 (=> (not res!989633) (not e!820854))))

(assert (=> b!1459641 (= res!989633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47579 a!2862) j!93) mask!2687) (select (arr!47579 a!2862) j!93) a!2862 mask!2687) lt!639499))))

(assert (=> b!1459641 (= lt!639499 (Intermediate!11854 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459642 () Bool)

(assert (=> b!1459642 (= e!820861 (= lt!639494 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639496 lt!639495 mask!2687)))))

(declare-fun b!1459643 () Bool)

(declare-fun res!989635 () Bool)

(assert (=> b!1459643 (=> res!989635 e!820858)))

(assert (=> b!1459643 (= res!989635 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun res!989641 () Bool)

(assert (=> start!125226 (=> (not res!989641) (not e!820857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125226 (= res!989641 (validMask!0 mask!2687))))

(assert (=> start!125226 e!820857))

(assert (=> start!125226 true))

(declare-fun array_inv!36524 (array!98591) Bool)

(assert (=> start!125226 (array_inv!36524 a!2862)))

(declare-fun b!1459644 () Bool)

(declare-fun res!989639 () Bool)

(assert (=> b!1459644 (=> (not res!989639) (not e!820857))))

(assert (=> b!1459644 (= res!989639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459645 () Bool)

(assert (=> b!1459645 (= e!820857 e!820859)))

(declare-fun res!989628 () Bool)

(assert (=> b!1459645 (=> (not res!989628) (not e!820859))))

(assert (=> b!1459645 (= res!989628 (= (select (store (arr!47579 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459645 (= lt!639495 (array!98592 (store (arr!47579 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48130 a!2862)))))

(declare-fun b!1459646 () Bool)

(assert (=> b!1459646 (= e!820855 e!820858)))

(declare-fun res!989626 () Bool)

(assert (=> b!1459646 (=> res!989626 e!820858)))

(assert (=> b!1459646 (= res!989626 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639501 #b00000000000000000000000000000000) (bvsge lt!639501 (size!48130 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459646 (= lt!639501 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639500 () SeekEntryResult!11854)

(assert (=> b!1459646 (= lt!639500 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639496 lt!639495 mask!2687))))

(assert (=> b!1459646 (= lt!639500 (seekEntryOrOpen!0 lt!639496 lt!639495 mask!2687))))

(declare-fun b!1459647 () Bool)

(declare-fun res!989638 () Bool)

(assert (=> b!1459647 (=> (not res!989638) (not e!820857))))

(assert (=> b!1459647 (= res!989638 (and (= (size!48130 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48130 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48130 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459648 () Bool)

(assert (=> b!1459648 (= e!820862 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639501 intermediateAfterIndex!19 lt!639496 lt!639495 mask!2687) lt!639500)))))

(declare-fun b!1459649 () Bool)

(declare-fun res!989634 () Bool)

(assert (=> b!1459649 (=> (not res!989634) (not e!820857))))

(assert (=> b!1459649 (= res!989634 (validKeyInArray!0 (select (arr!47579 a!2862) j!93)))))

(declare-fun b!1459650 () Bool)

(assert (=> b!1459650 (= e!820858 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1459650 (= lt!639497 lt!639500)))

(declare-fun lt!639502 () Unit!49152)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49152)

(assert (=> b!1459650 (= lt!639502 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639501 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459651 () Bool)

(declare-fun res!989637 () Bool)

(assert (=> b!1459651 (=> (not res!989637) (not e!820857))))

(declare-datatypes ((List!34260 0))(
  ( (Nil!34257) (Cons!34256 (h!35606 (_ BitVec 64)) (t!48961 List!34260)) )
))
(declare-fun arrayNoDuplicates!0 (array!98591 (_ BitVec 32) List!34260) Bool)

(assert (=> b!1459651 (= res!989637 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34257))))

(assert (= (and start!125226 res!989641) b!1459647))

(assert (= (and b!1459647 res!989638) b!1459634))

(assert (= (and b!1459634 res!989636) b!1459649))

(assert (= (and b!1459649 res!989634) b!1459644))

(assert (= (and b!1459644 res!989639) b!1459651))

(assert (= (and b!1459651 res!989637) b!1459638))

(assert (= (and b!1459638 res!989632) b!1459645))

(assert (= (and b!1459645 res!989628) b!1459641))

(assert (= (and b!1459641 res!989633) b!1459630))

(assert (= (and b!1459630 res!989630) b!1459635))

(assert (= (and b!1459635 res!989643) b!1459639))

(assert (= (and b!1459639 c!134515) b!1459642))

(assert (= (and b!1459639 (not c!134515)) b!1459633))

(assert (= (and b!1459639 res!989629) b!1459632))

(assert (= (and b!1459632 res!989631) b!1459631))

(assert (= (and b!1459631 (not res!989642)) b!1459646))

(assert (= (and b!1459646 (not res!989626)) b!1459637))

(assert (= (and b!1459637 (not res!989640)) b!1459640))

(assert (= (and b!1459640 c!134516) b!1459636))

(assert (= (and b!1459640 (not c!134516)) b!1459648))

(assert (= (and b!1459640 (not res!989627)) b!1459643))

(assert (= (and b!1459643 (not res!989635)) b!1459650))

(declare-fun m!1347423 () Bool)

(assert (=> start!125226 m!1347423))

(declare-fun m!1347425 () Bool)

(assert (=> start!125226 m!1347425))

(declare-fun m!1347427 () Bool)

(assert (=> b!1459642 m!1347427))

(declare-fun m!1347429 () Bool)

(assert (=> b!1459636 m!1347429))

(declare-fun m!1347431 () Bool)

(assert (=> b!1459635 m!1347431))

(assert (=> b!1459635 m!1347431))

(declare-fun m!1347433 () Bool)

(assert (=> b!1459635 m!1347433))

(declare-fun m!1347435 () Bool)

(assert (=> b!1459635 m!1347435))

(declare-fun m!1347437 () Bool)

(assert (=> b!1459635 m!1347437))

(declare-fun m!1347439 () Bool)

(assert (=> b!1459648 m!1347439))

(assert (=> b!1459645 m!1347435))

(declare-fun m!1347441 () Bool)

(assert (=> b!1459645 m!1347441))

(declare-fun m!1347443 () Bool)

(assert (=> b!1459646 m!1347443))

(declare-fun m!1347445 () Bool)

(assert (=> b!1459646 m!1347445))

(declare-fun m!1347447 () Bool)

(assert (=> b!1459646 m!1347447))

(declare-fun m!1347449 () Bool)

(assert (=> b!1459631 m!1347449))

(assert (=> b!1459631 m!1347435))

(declare-fun m!1347451 () Bool)

(assert (=> b!1459631 m!1347451))

(declare-fun m!1347453 () Bool)

(assert (=> b!1459631 m!1347453))

(declare-fun m!1347455 () Bool)

(assert (=> b!1459631 m!1347455))

(declare-fun m!1347457 () Bool)

(assert (=> b!1459631 m!1347457))

(declare-fun m!1347459 () Bool)

(assert (=> b!1459631 m!1347459))

(declare-fun m!1347461 () Bool)

(assert (=> b!1459631 m!1347461))

(assert (=> b!1459631 m!1347457))

(assert (=> b!1459633 m!1347445))

(assert (=> b!1459633 m!1347447))

(declare-fun m!1347463 () Bool)

(assert (=> b!1459650 m!1347463))

(assert (=> b!1459637 m!1347457))

(assert (=> b!1459637 m!1347457))

(declare-fun m!1347465 () Bool)

(assert (=> b!1459637 m!1347465))

(assert (=> b!1459641 m!1347457))

(assert (=> b!1459641 m!1347457))

(declare-fun m!1347467 () Bool)

(assert (=> b!1459641 m!1347467))

(assert (=> b!1459641 m!1347467))

(assert (=> b!1459641 m!1347457))

(declare-fun m!1347469 () Bool)

(assert (=> b!1459641 m!1347469))

(assert (=> b!1459649 m!1347457))

(assert (=> b!1459649 m!1347457))

(declare-fun m!1347471 () Bool)

(assert (=> b!1459649 m!1347471))

(declare-fun m!1347473 () Bool)

(assert (=> b!1459651 m!1347473))

(assert (=> b!1459630 m!1347457))

(assert (=> b!1459630 m!1347457))

(declare-fun m!1347475 () Bool)

(assert (=> b!1459630 m!1347475))

(declare-fun m!1347477 () Bool)

(assert (=> b!1459644 m!1347477))

(declare-fun m!1347479 () Bool)

(assert (=> b!1459634 m!1347479))

(assert (=> b!1459634 m!1347479))

(declare-fun m!1347481 () Bool)

(assert (=> b!1459634 m!1347481))

(check-sat (not b!1459634) (not b!1459637) (not b!1459636) (not b!1459651) (not b!1459631) (not b!1459650) (not b!1459642) (not start!125226) (not b!1459635) (not b!1459648) (not b!1459641) (not b!1459630) (not b!1459633) (not b!1459644) (not b!1459649) (not b!1459646))
(check-sat)
