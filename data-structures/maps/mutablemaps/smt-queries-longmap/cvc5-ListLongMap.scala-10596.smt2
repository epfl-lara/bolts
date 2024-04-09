; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124756 () Bool)

(assert start!124756)

(declare-fun b!1445577 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!814317 () Bool)

(declare-datatypes ((array!98121 0))(
  ( (array!98122 (arr!47344 (Array (_ BitVec 32) (_ BitVec 64))) (size!47895 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98121)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445577 (= e!814317 (or (= (select (arr!47344 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47344 a!2862) intermediateBeforeIndex!19) (select (arr!47344 a!2862) j!93))))))

(declare-fun b!1445578 () Bool)

(declare-fun res!977541 () Bool)

(declare-fun e!814316 () Bool)

(assert (=> b!1445578 (=> (not res!977541) (not e!814316))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445578 (= res!977541 (validKeyInArray!0 (select (arr!47344 a!2862) i!1006)))))

(declare-fun b!1445579 () Bool)

(declare-fun res!977533 () Bool)

(declare-fun e!814322 () Bool)

(assert (=> b!1445579 (=> (not res!977533) (not e!814322))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445579 (= res!977533 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1445580 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445580 (= e!814322 (not (or (and (= (select (arr!47344 a!2862) index!646) (select (store (arr!47344 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47344 a!2862) index!646) (select (arr!47344 a!2862) j!93))) (not (= (select (arr!47344 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1445580 e!814317))

(declare-fun res!977535 () Bool)

(assert (=> b!1445580 (=> (not res!977535) (not e!814317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98121 (_ BitVec 32)) Bool)

(assert (=> b!1445580 (= res!977535 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48682 0))(
  ( (Unit!48683) )
))
(declare-fun lt!634502 () Unit!48682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48682)

(assert (=> b!1445580 (= lt!634502 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445581 () Bool)

(declare-fun res!977539 () Bool)

(declare-fun e!814321 () Bool)

(assert (=> b!1445581 (=> (not res!977539) (not e!814321))))

(declare-datatypes ((SeekEntryResult!11619 0))(
  ( (MissingZero!11619 (index!48867 (_ BitVec 32))) (Found!11619 (index!48868 (_ BitVec 32))) (Intermediate!11619 (undefined!12431 Bool) (index!48869 (_ BitVec 32)) (x!130559 (_ BitVec 32))) (Undefined!11619) (MissingVacant!11619 (index!48870 (_ BitVec 32))) )
))
(declare-fun lt!634500 () SeekEntryResult!11619)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98121 (_ BitVec 32)) SeekEntryResult!11619)

(assert (=> b!1445581 (= res!977539 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47344 a!2862) j!93) a!2862 mask!2687) lt!634500))))

(declare-fun b!1445582 () Bool)

(declare-fun e!814318 () Bool)

(assert (=> b!1445582 (= e!814316 e!814318)))

(declare-fun res!977542 () Bool)

(assert (=> b!1445582 (=> (not res!977542) (not e!814318))))

(assert (=> b!1445582 (= res!977542 (= (select (store (arr!47344 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634503 () array!98121)

(assert (=> b!1445582 (= lt!634503 (array!98122 (store (arr!47344 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47895 a!2862)))))

(declare-fun b!1445583 () Bool)

(declare-fun res!977546 () Bool)

(assert (=> b!1445583 (=> (not res!977546) (not e!814316))))

(assert (=> b!1445583 (= res!977546 (and (= (size!47895 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47895 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47895 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445584 () Bool)

(declare-fun res!977547 () Bool)

(assert (=> b!1445584 (=> (not res!977547) (not e!814316))))

(declare-datatypes ((List!34025 0))(
  ( (Nil!34022) (Cons!34021 (h!35371 (_ BitVec 64)) (t!48726 List!34025)) )
))
(declare-fun arrayNoDuplicates!0 (array!98121 (_ BitVec 32) List!34025) Bool)

(assert (=> b!1445584 (= res!977547 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34022))))

(declare-fun e!814320 () Bool)

(declare-fun b!1445585 () Bool)

(declare-fun lt!634504 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98121 (_ BitVec 32)) SeekEntryResult!11619)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98121 (_ BitVec 32)) SeekEntryResult!11619)

(assert (=> b!1445585 (= e!814320 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634504 lt!634503 mask!2687) (seekEntryOrOpen!0 lt!634504 lt!634503 mask!2687)))))

(declare-fun lt!634501 () SeekEntryResult!11619)

(declare-fun b!1445586 () Bool)

(assert (=> b!1445586 (= e!814320 (= lt!634501 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634504 lt!634503 mask!2687)))))

(declare-fun b!1445588 () Bool)

(declare-fun res!977540 () Bool)

(assert (=> b!1445588 (=> (not res!977540) (not e!814322))))

(assert (=> b!1445588 (= res!977540 e!814320)))

(declare-fun c!133535 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445588 (= c!133535 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445589 () Bool)

(declare-fun res!977545 () Bool)

(assert (=> b!1445589 (=> (not res!977545) (not e!814316))))

(assert (=> b!1445589 (= res!977545 (validKeyInArray!0 (select (arr!47344 a!2862) j!93)))))

(declare-fun b!1445590 () Bool)

(declare-fun res!977537 () Bool)

(assert (=> b!1445590 (=> (not res!977537) (not e!814317))))

(assert (=> b!1445590 (= res!977537 (= (seekEntryOrOpen!0 (select (arr!47344 a!2862) j!93) a!2862 mask!2687) (Found!11619 j!93)))))

(declare-fun b!1445591 () Bool)

(declare-fun res!977534 () Bool)

(assert (=> b!1445591 (=> (not res!977534) (not e!814316))))

(assert (=> b!1445591 (= res!977534 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47895 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47895 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47895 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445592 () Bool)

(assert (=> b!1445592 (= e!814321 e!814322)))

(declare-fun res!977543 () Bool)

(assert (=> b!1445592 (=> (not res!977543) (not e!814322))))

(assert (=> b!1445592 (= res!977543 (= lt!634501 (Intermediate!11619 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445592 (= lt!634501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634504 mask!2687) lt!634504 lt!634503 mask!2687))))

(assert (=> b!1445592 (= lt!634504 (select (store (arr!47344 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445593 () Bool)

(declare-fun res!977536 () Bool)

(assert (=> b!1445593 (=> (not res!977536) (not e!814316))))

(assert (=> b!1445593 (= res!977536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445587 () Bool)

(assert (=> b!1445587 (= e!814318 e!814321)))

(declare-fun res!977538 () Bool)

(assert (=> b!1445587 (=> (not res!977538) (not e!814321))))

(assert (=> b!1445587 (= res!977538 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47344 a!2862) j!93) mask!2687) (select (arr!47344 a!2862) j!93) a!2862 mask!2687) lt!634500))))

(assert (=> b!1445587 (= lt!634500 (Intermediate!11619 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!977544 () Bool)

(assert (=> start!124756 (=> (not res!977544) (not e!814316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124756 (= res!977544 (validMask!0 mask!2687))))

(assert (=> start!124756 e!814316))

(assert (=> start!124756 true))

(declare-fun array_inv!36289 (array!98121) Bool)

(assert (=> start!124756 (array_inv!36289 a!2862)))

(assert (= (and start!124756 res!977544) b!1445583))

(assert (= (and b!1445583 res!977546) b!1445578))

(assert (= (and b!1445578 res!977541) b!1445589))

(assert (= (and b!1445589 res!977545) b!1445593))

(assert (= (and b!1445593 res!977536) b!1445584))

(assert (= (and b!1445584 res!977547) b!1445591))

(assert (= (and b!1445591 res!977534) b!1445582))

(assert (= (and b!1445582 res!977542) b!1445587))

(assert (= (and b!1445587 res!977538) b!1445581))

(assert (= (and b!1445581 res!977539) b!1445592))

(assert (= (and b!1445592 res!977543) b!1445588))

(assert (= (and b!1445588 c!133535) b!1445586))

(assert (= (and b!1445588 (not c!133535)) b!1445585))

(assert (= (and b!1445588 res!977540) b!1445579))

(assert (= (and b!1445579 res!977533) b!1445580))

(assert (= (and b!1445580 res!977535) b!1445590))

(assert (= (and b!1445590 res!977537) b!1445577))

(declare-fun m!1334571 () Bool)

(assert (=> b!1445590 m!1334571))

(assert (=> b!1445590 m!1334571))

(declare-fun m!1334573 () Bool)

(assert (=> b!1445590 m!1334573))

(declare-fun m!1334575 () Bool)

(assert (=> start!124756 m!1334575))

(declare-fun m!1334577 () Bool)

(assert (=> start!124756 m!1334577))

(declare-fun m!1334579 () Bool)

(assert (=> b!1445586 m!1334579))

(assert (=> b!1445589 m!1334571))

(assert (=> b!1445589 m!1334571))

(declare-fun m!1334581 () Bool)

(assert (=> b!1445589 m!1334581))

(declare-fun m!1334583 () Bool)

(assert (=> b!1445577 m!1334583))

(assert (=> b!1445577 m!1334571))

(declare-fun m!1334585 () Bool)

(assert (=> b!1445593 m!1334585))

(declare-fun m!1334587 () Bool)

(assert (=> b!1445582 m!1334587))

(declare-fun m!1334589 () Bool)

(assert (=> b!1445582 m!1334589))

(declare-fun m!1334591 () Bool)

(assert (=> b!1445580 m!1334591))

(assert (=> b!1445580 m!1334587))

(declare-fun m!1334593 () Bool)

(assert (=> b!1445580 m!1334593))

(declare-fun m!1334595 () Bool)

(assert (=> b!1445580 m!1334595))

(declare-fun m!1334597 () Bool)

(assert (=> b!1445580 m!1334597))

(assert (=> b!1445580 m!1334571))

(declare-fun m!1334599 () Bool)

(assert (=> b!1445578 m!1334599))

(assert (=> b!1445578 m!1334599))

(declare-fun m!1334601 () Bool)

(assert (=> b!1445578 m!1334601))

(declare-fun m!1334603 () Bool)

(assert (=> b!1445585 m!1334603))

(declare-fun m!1334605 () Bool)

(assert (=> b!1445585 m!1334605))

(declare-fun m!1334607 () Bool)

(assert (=> b!1445592 m!1334607))

(assert (=> b!1445592 m!1334607))

(declare-fun m!1334609 () Bool)

(assert (=> b!1445592 m!1334609))

(assert (=> b!1445592 m!1334587))

(declare-fun m!1334611 () Bool)

(assert (=> b!1445592 m!1334611))

(assert (=> b!1445581 m!1334571))

(assert (=> b!1445581 m!1334571))

(declare-fun m!1334613 () Bool)

(assert (=> b!1445581 m!1334613))

(assert (=> b!1445587 m!1334571))

(assert (=> b!1445587 m!1334571))

(declare-fun m!1334615 () Bool)

(assert (=> b!1445587 m!1334615))

(assert (=> b!1445587 m!1334615))

(assert (=> b!1445587 m!1334571))

(declare-fun m!1334617 () Bool)

(assert (=> b!1445587 m!1334617))

(declare-fun m!1334619 () Bool)

(assert (=> b!1445584 m!1334619))

(push 1)

(assert (not b!1445581))

(assert (not b!1445585))

(assert (not b!1445580))

(assert (not b!1445590))

(assert (not b!1445586))

(assert (not b!1445578))

(assert (not b!1445592))

(assert (not b!1445584))

(assert (not b!1445593))

(assert (not b!1445587))

(assert (not b!1445589))

(assert (not start!124756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

