; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127050 () Bool)

(assert start!127050)

(declare-fun b!1492541 () Bool)

(declare-fun res!1015467 () Bool)

(declare-fun e!836196 () Bool)

(assert (=> b!1492541 (=> (not res!1015467) (not e!836196))))

(declare-fun e!836192 () Bool)

(assert (=> b!1492541 (= res!1015467 e!836192)))

(declare-fun c!138074 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492541 (= c!138074 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!836194 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1492542 () Bool)

(declare-datatypes ((array!99677 0))(
  ( (array!99678 (arr!48104 (Array (_ BitVec 32) (_ BitVec 64))) (size!48655 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99677)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1492542 (= e!836194 (or (= (select (arr!48104 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48104 a!2862) intermediateBeforeIndex!19) (select (arr!48104 a!2862) j!93))))))

(declare-datatypes ((SeekEntryResult!12367 0))(
  ( (MissingZero!12367 (index!51859 (_ BitVec 32))) (Found!12367 (index!51860 (_ BitVec 32))) (Intermediate!12367 (undefined!13179 Bool) (index!51861 (_ BitVec 32)) (x!133454 (_ BitVec 32))) (Undefined!12367) (MissingVacant!12367 (index!51862 (_ BitVec 32))) )
))
(declare-fun lt!650656 () SeekEntryResult!12367)

(declare-fun lt!650651 () (_ BitVec 64))

(declare-fun lt!650653 () array!99677)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1492543 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99677 (_ BitVec 32)) SeekEntryResult!12367)

(assert (=> b!1492543 (= e!836192 (= lt!650656 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650651 lt!650653 mask!2687)))))

(declare-fun b!1492544 () Bool)

(declare-fun res!1015461 () Bool)

(assert (=> b!1492544 (=> (not res!1015461) (not e!836196))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1492544 (= res!1015461 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492545 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99677 (_ BitVec 32)) SeekEntryResult!12367)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99677 (_ BitVec 32)) SeekEntryResult!12367)

(assert (=> b!1492545 (= e!836192 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650651 lt!650653 mask!2687) (seekEntryOrOpen!0 lt!650651 lt!650653 mask!2687)))))

(declare-fun b!1492546 () Bool)

(declare-fun res!1015468 () Bool)

(declare-fun e!836195 () Bool)

(assert (=> b!1492546 (=> (not res!1015468) (not e!836195))))

(assert (=> b!1492546 (= res!1015468 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48655 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48655 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48655 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492547 () Bool)

(declare-fun res!1015465 () Bool)

(assert (=> b!1492547 (=> (not res!1015465) (not e!836195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492547 (= res!1015465 (validKeyInArray!0 (select (arr!48104 a!2862) i!1006)))))

(declare-fun b!1492548 () Bool)

(declare-fun e!836193 () Bool)

(assert (=> b!1492548 (= e!836193 e!836196)))

(declare-fun res!1015464 () Bool)

(assert (=> b!1492548 (=> (not res!1015464) (not e!836196))))

(assert (=> b!1492548 (= res!1015464 (= lt!650656 (Intermediate!12367 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492548 (= lt!650656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650651 mask!2687) lt!650651 lt!650653 mask!2687))))

(assert (=> b!1492548 (= lt!650651 (select (store (arr!48104 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492549 () Bool)

(declare-fun res!1015460 () Bool)

(assert (=> b!1492549 (=> (not res!1015460) (not e!836194))))

(assert (=> b!1492549 (= res!1015460 (= (seekEntryOrOpen!0 (select (arr!48104 a!2862) j!93) a!2862 mask!2687) (Found!12367 j!93)))))

(declare-fun b!1492550 () Bool)

(declare-fun e!836197 () Bool)

(assert (=> b!1492550 (= e!836197 true)))

(declare-fun lt!650655 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492550 (= lt!650655 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492551 () Bool)

(declare-fun e!836198 () Bool)

(assert (=> b!1492551 (= e!836198 e!836193)))

(declare-fun res!1015463 () Bool)

(assert (=> b!1492551 (=> (not res!1015463) (not e!836193))))

(declare-fun lt!650652 () SeekEntryResult!12367)

(assert (=> b!1492551 (= res!1015463 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48104 a!2862) j!93) mask!2687) (select (arr!48104 a!2862) j!93) a!2862 mask!2687) lt!650652))))

(assert (=> b!1492551 (= lt!650652 (Intermediate!12367 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492552 () Bool)

(declare-fun res!1015466 () Bool)

(assert (=> b!1492552 (=> (not res!1015466) (not e!836195))))

(assert (=> b!1492552 (= res!1015466 (and (= (size!48655 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48655 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48655 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1015455 () Bool)

(assert (=> start!127050 (=> (not res!1015455) (not e!836195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127050 (= res!1015455 (validMask!0 mask!2687))))

(assert (=> start!127050 e!836195))

(assert (=> start!127050 true))

(declare-fun array_inv!37049 (array!99677) Bool)

(assert (=> start!127050 (array_inv!37049 a!2862)))

(declare-fun b!1492553 () Bool)

(assert (=> b!1492553 (= e!836196 (not e!836197))))

(declare-fun res!1015456 () Bool)

(assert (=> b!1492553 (=> res!1015456 e!836197)))

(assert (=> b!1492553 (= res!1015456 (or (and (= (select (arr!48104 a!2862) index!646) (select (store (arr!48104 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48104 a!2862) index!646) (select (arr!48104 a!2862) j!93))) (= (select (arr!48104 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492553 e!836194))

(declare-fun res!1015469 () Bool)

(assert (=> b!1492553 (=> (not res!1015469) (not e!836194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99677 (_ BitVec 32)) Bool)

(assert (=> b!1492553 (= res!1015469 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50022 0))(
  ( (Unit!50023) )
))
(declare-fun lt!650654 () Unit!50022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50022)

(assert (=> b!1492553 (= lt!650654 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492554 () Bool)

(declare-fun res!1015462 () Bool)

(assert (=> b!1492554 (=> (not res!1015462) (not e!836195))))

(assert (=> b!1492554 (= res!1015462 (validKeyInArray!0 (select (arr!48104 a!2862) j!93)))))

(declare-fun b!1492555 () Bool)

(declare-fun res!1015458 () Bool)

(assert (=> b!1492555 (=> (not res!1015458) (not e!836193))))

(assert (=> b!1492555 (= res!1015458 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48104 a!2862) j!93) a!2862 mask!2687) lt!650652))))

(declare-fun b!1492556 () Bool)

(declare-fun res!1015470 () Bool)

(assert (=> b!1492556 (=> (not res!1015470) (not e!836195))))

(assert (=> b!1492556 (= res!1015470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492557 () Bool)

(assert (=> b!1492557 (= e!836195 e!836198)))

(declare-fun res!1015457 () Bool)

(assert (=> b!1492557 (=> (not res!1015457) (not e!836198))))

(assert (=> b!1492557 (= res!1015457 (= (select (store (arr!48104 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492557 (= lt!650653 (array!99678 (store (arr!48104 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48655 a!2862)))))

(declare-fun b!1492558 () Bool)

(declare-fun res!1015459 () Bool)

(assert (=> b!1492558 (=> (not res!1015459) (not e!836195))))

(declare-datatypes ((List!34785 0))(
  ( (Nil!34782) (Cons!34781 (h!36167 (_ BitVec 64)) (t!49486 List!34785)) )
))
(declare-fun arrayNoDuplicates!0 (array!99677 (_ BitVec 32) List!34785) Bool)

(assert (=> b!1492558 (= res!1015459 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34782))))

(assert (= (and start!127050 res!1015455) b!1492552))

(assert (= (and b!1492552 res!1015466) b!1492547))

(assert (= (and b!1492547 res!1015465) b!1492554))

(assert (= (and b!1492554 res!1015462) b!1492556))

(assert (= (and b!1492556 res!1015470) b!1492558))

(assert (= (and b!1492558 res!1015459) b!1492546))

(assert (= (and b!1492546 res!1015468) b!1492557))

(assert (= (and b!1492557 res!1015457) b!1492551))

(assert (= (and b!1492551 res!1015463) b!1492555))

(assert (= (and b!1492555 res!1015458) b!1492548))

(assert (= (and b!1492548 res!1015464) b!1492541))

(assert (= (and b!1492541 c!138074) b!1492543))

(assert (= (and b!1492541 (not c!138074)) b!1492545))

(assert (= (and b!1492541 res!1015467) b!1492544))

(assert (= (and b!1492544 res!1015461) b!1492553))

(assert (= (and b!1492553 res!1015469) b!1492549))

(assert (= (and b!1492549 res!1015460) b!1492542))

(assert (= (and b!1492553 (not res!1015456)) b!1492550))

(declare-fun m!1376545 () Bool)

(assert (=> b!1492556 m!1376545))

(declare-fun m!1376547 () Bool)

(assert (=> b!1492547 m!1376547))

(assert (=> b!1492547 m!1376547))

(declare-fun m!1376549 () Bool)

(assert (=> b!1492547 m!1376549))

(declare-fun m!1376551 () Bool)

(assert (=> start!127050 m!1376551))

(declare-fun m!1376553 () Bool)

(assert (=> start!127050 m!1376553))

(declare-fun m!1376555 () Bool)

(assert (=> b!1492554 m!1376555))

(assert (=> b!1492554 m!1376555))

(declare-fun m!1376557 () Bool)

(assert (=> b!1492554 m!1376557))

(declare-fun m!1376559 () Bool)

(assert (=> b!1492550 m!1376559))

(declare-fun m!1376561 () Bool)

(assert (=> b!1492557 m!1376561))

(declare-fun m!1376563 () Bool)

(assert (=> b!1492557 m!1376563))

(assert (=> b!1492549 m!1376555))

(assert (=> b!1492549 m!1376555))

(declare-fun m!1376565 () Bool)

(assert (=> b!1492549 m!1376565))

(declare-fun m!1376567 () Bool)

(assert (=> b!1492548 m!1376567))

(assert (=> b!1492548 m!1376567))

(declare-fun m!1376569 () Bool)

(assert (=> b!1492548 m!1376569))

(assert (=> b!1492548 m!1376561))

(declare-fun m!1376571 () Bool)

(assert (=> b!1492548 m!1376571))

(declare-fun m!1376573 () Bool)

(assert (=> b!1492553 m!1376573))

(assert (=> b!1492553 m!1376561))

(declare-fun m!1376575 () Bool)

(assert (=> b!1492553 m!1376575))

(declare-fun m!1376577 () Bool)

(assert (=> b!1492553 m!1376577))

(declare-fun m!1376579 () Bool)

(assert (=> b!1492553 m!1376579))

(assert (=> b!1492553 m!1376555))

(assert (=> b!1492551 m!1376555))

(assert (=> b!1492551 m!1376555))

(declare-fun m!1376581 () Bool)

(assert (=> b!1492551 m!1376581))

(assert (=> b!1492551 m!1376581))

(assert (=> b!1492551 m!1376555))

(declare-fun m!1376583 () Bool)

(assert (=> b!1492551 m!1376583))

(declare-fun m!1376585 () Bool)

(assert (=> b!1492543 m!1376585))

(assert (=> b!1492555 m!1376555))

(assert (=> b!1492555 m!1376555))

(declare-fun m!1376587 () Bool)

(assert (=> b!1492555 m!1376587))

(declare-fun m!1376589 () Bool)

(assert (=> b!1492542 m!1376589))

(assert (=> b!1492542 m!1376555))

(declare-fun m!1376591 () Bool)

(assert (=> b!1492545 m!1376591))

(declare-fun m!1376593 () Bool)

(assert (=> b!1492545 m!1376593))

(declare-fun m!1376595 () Bool)

(assert (=> b!1492558 m!1376595))

(check-sat (not b!1492555) (not b!1492549) (not b!1492550) (not start!127050) (not b!1492558) (not b!1492551) (not b!1492547) (not b!1492545) (not b!1492556) (not b!1492553) (not b!1492543) (not b!1492554) (not b!1492548))
(check-sat)
