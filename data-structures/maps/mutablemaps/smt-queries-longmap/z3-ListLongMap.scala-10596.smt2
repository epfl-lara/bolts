; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124758 () Bool)

(assert start!124758)

(declare-fun b!1445628 () Bool)

(declare-fun e!814339 () Bool)

(declare-fun e!814342 () Bool)

(assert (=> b!1445628 (= e!814339 e!814342)))

(declare-fun res!977587 () Bool)

(assert (=> b!1445628 (=> (not res!977587) (not e!814342))))

(declare-datatypes ((SeekEntryResult!11620 0))(
  ( (MissingZero!11620 (index!48871 (_ BitVec 32))) (Found!11620 (index!48872 (_ BitVec 32))) (Intermediate!11620 (undefined!12432 Bool) (index!48873 (_ BitVec 32)) (x!130560 (_ BitVec 32))) (Undefined!11620) (MissingVacant!11620 (index!48874 (_ BitVec 32))) )
))
(declare-fun lt!634518 () SeekEntryResult!11620)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445628 (= res!977587 (= lt!634518 (Intermediate!11620 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!634515 () (_ BitVec 64))

(declare-datatypes ((array!98123 0))(
  ( (array!98124 (arr!47345 (Array (_ BitVec 32) (_ BitVec 64))) (size!47896 (_ BitVec 32))) )
))
(declare-fun lt!634517 () array!98123)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98123 (_ BitVec 32)) SeekEntryResult!11620)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445628 (= lt!634518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634515 mask!2687) lt!634515 lt!634517 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98123)

(assert (=> b!1445628 (= lt!634515 (select (store (arr!47345 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445629 () Bool)

(declare-fun res!977592 () Bool)

(declare-fun e!814340 () Bool)

(assert (=> b!1445629 (=> (not res!977592) (not e!814340))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445629 (= res!977592 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47896 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47896 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47896 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445630 () Bool)

(declare-fun res!977582 () Bool)

(assert (=> b!1445630 (=> (not res!977582) (not e!814340))))

(declare-datatypes ((List!34026 0))(
  ( (Nil!34023) (Cons!34022 (h!35372 (_ BitVec 64)) (t!48727 List!34026)) )
))
(declare-fun arrayNoDuplicates!0 (array!98123 (_ BitVec 32) List!34026) Bool)

(assert (=> b!1445630 (= res!977582 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34023))))

(declare-fun b!1445631 () Bool)

(assert (=> b!1445631 (= e!814342 (not (or (and (= (select (arr!47345 a!2862) index!646) (select (store (arr!47345 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47345 a!2862) index!646) (select (arr!47345 a!2862) j!93))) (not (= (select (arr!47345 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun e!814341 () Bool)

(assert (=> b!1445631 e!814341))

(declare-fun res!977579 () Bool)

(assert (=> b!1445631 (=> (not res!977579) (not e!814341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98123 (_ BitVec 32)) Bool)

(assert (=> b!1445631 (= res!977579 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48684 0))(
  ( (Unit!48685) )
))
(declare-fun lt!634519 () Unit!48684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48684)

(assert (=> b!1445631 (= lt!634519 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!977589 () Bool)

(assert (=> start!124758 (=> (not res!977589) (not e!814340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124758 (= res!977589 (validMask!0 mask!2687))))

(assert (=> start!124758 e!814340))

(assert (=> start!124758 true))

(declare-fun array_inv!36290 (array!98123) Bool)

(assert (=> start!124758 (array_inv!36290 a!2862)))

(declare-fun b!1445632 () Bool)

(declare-fun res!977578 () Bool)

(assert (=> b!1445632 (=> (not res!977578) (not e!814339))))

(declare-fun lt!634516 () SeekEntryResult!11620)

(assert (=> b!1445632 (= res!977578 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47345 a!2862) j!93) a!2862 mask!2687) lt!634516))))

(declare-fun b!1445633 () Bool)

(declare-fun res!977584 () Bool)

(assert (=> b!1445633 (=> (not res!977584) (not e!814340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445633 (= res!977584 (validKeyInArray!0 (select (arr!47345 a!2862) j!93)))))

(declare-fun b!1445634 () Bool)

(declare-fun e!814343 () Bool)

(assert (=> b!1445634 (= e!814343 e!814339)))

(declare-fun res!977591 () Bool)

(assert (=> b!1445634 (=> (not res!977591) (not e!814339))))

(assert (=> b!1445634 (= res!977591 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47345 a!2862) j!93) mask!2687) (select (arr!47345 a!2862) j!93) a!2862 mask!2687) lt!634516))))

(assert (=> b!1445634 (= lt!634516 (Intermediate!11620 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445635 () Bool)

(declare-fun res!977588 () Bool)

(assert (=> b!1445635 (=> (not res!977588) (not e!814342))))

(assert (=> b!1445635 (= res!977588 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!814338 () Bool)

(declare-fun b!1445636 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98123 (_ BitVec 32)) SeekEntryResult!11620)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98123 (_ BitVec 32)) SeekEntryResult!11620)

(assert (=> b!1445636 (= e!814338 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634515 lt!634517 mask!2687) (seekEntryOrOpen!0 lt!634515 lt!634517 mask!2687)))))

(declare-fun b!1445637 () Bool)

(declare-fun res!977580 () Bool)

(assert (=> b!1445637 (=> (not res!977580) (not e!814340))))

(assert (=> b!1445637 (= res!977580 (validKeyInArray!0 (select (arr!47345 a!2862) i!1006)))))

(declare-fun b!1445638 () Bool)

(assert (=> b!1445638 (= e!814338 (= lt!634518 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634515 lt!634517 mask!2687)))))

(declare-fun b!1445639 () Bool)

(declare-fun res!977583 () Bool)

(assert (=> b!1445639 (=> (not res!977583) (not e!814342))))

(assert (=> b!1445639 (= res!977583 e!814338)))

(declare-fun c!133538 () Bool)

(assert (=> b!1445639 (= c!133538 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445640 () Bool)

(assert (=> b!1445640 (= e!814341 (or (= (select (arr!47345 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47345 a!2862) intermediateBeforeIndex!19) (select (arr!47345 a!2862) j!93))))))

(declare-fun b!1445641 () Bool)

(declare-fun res!977586 () Bool)

(assert (=> b!1445641 (=> (not res!977586) (not e!814340))))

(assert (=> b!1445641 (= res!977586 (and (= (size!47896 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47896 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47896 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445642 () Bool)

(assert (=> b!1445642 (= e!814340 e!814343)))

(declare-fun res!977585 () Bool)

(assert (=> b!1445642 (=> (not res!977585) (not e!814343))))

(assert (=> b!1445642 (= res!977585 (= (select (store (arr!47345 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445642 (= lt!634517 (array!98124 (store (arr!47345 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47896 a!2862)))))

(declare-fun b!1445643 () Bool)

(declare-fun res!977590 () Bool)

(assert (=> b!1445643 (=> (not res!977590) (not e!814341))))

(assert (=> b!1445643 (= res!977590 (= (seekEntryOrOpen!0 (select (arr!47345 a!2862) j!93) a!2862 mask!2687) (Found!11620 j!93)))))

(declare-fun b!1445644 () Bool)

(declare-fun res!977581 () Bool)

(assert (=> b!1445644 (=> (not res!977581) (not e!814340))))

(assert (=> b!1445644 (= res!977581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124758 res!977589) b!1445641))

(assert (= (and b!1445641 res!977586) b!1445637))

(assert (= (and b!1445637 res!977580) b!1445633))

(assert (= (and b!1445633 res!977584) b!1445644))

(assert (= (and b!1445644 res!977581) b!1445630))

(assert (= (and b!1445630 res!977582) b!1445629))

(assert (= (and b!1445629 res!977592) b!1445642))

(assert (= (and b!1445642 res!977585) b!1445634))

(assert (= (and b!1445634 res!977591) b!1445632))

(assert (= (and b!1445632 res!977578) b!1445628))

(assert (= (and b!1445628 res!977587) b!1445639))

(assert (= (and b!1445639 c!133538) b!1445638))

(assert (= (and b!1445639 (not c!133538)) b!1445636))

(assert (= (and b!1445639 res!977583) b!1445635))

(assert (= (and b!1445635 res!977588) b!1445631))

(assert (= (and b!1445631 res!977579) b!1445643))

(assert (= (and b!1445643 res!977590) b!1445640))

(declare-fun m!1334621 () Bool)

(assert (=> b!1445634 m!1334621))

(assert (=> b!1445634 m!1334621))

(declare-fun m!1334623 () Bool)

(assert (=> b!1445634 m!1334623))

(assert (=> b!1445634 m!1334623))

(assert (=> b!1445634 m!1334621))

(declare-fun m!1334625 () Bool)

(assert (=> b!1445634 m!1334625))

(declare-fun m!1334627 () Bool)

(assert (=> b!1445637 m!1334627))

(assert (=> b!1445637 m!1334627))

(declare-fun m!1334629 () Bool)

(assert (=> b!1445637 m!1334629))

(declare-fun m!1334631 () Bool)

(assert (=> b!1445628 m!1334631))

(assert (=> b!1445628 m!1334631))

(declare-fun m!1334633 () Bool)

(assert (=> b!1445628 m!1334633))

(declare-fun m!1334635 () Bool)

(assert (=> b!1445628 m!1334635))

(declare-fun m!1334637 () Bool)

(assert (=> b!1445628 m!1334637))

(assert (=> b!1445642 m!1334635))

(declare-fun m!1334639 () Bool)

(assert (=> b!1445642 m!1334639))

(declare-fun m!1334641 () Bool)

(assert (=> b!1445630 m!1334641))

(declare-fun m!1334643 () Bool)

(assert (=> b!1445638 m!1334643))

(declare-fun m!1334645 () Bool)

(assert (=> b!1445631 m!1334645))

(assert (=> b!1445631 m!1334635))

(declare-fun m!1334647 () Bool)

(assert (=> b!1445631 m!1334647))

(declare-fun m!1334649 () Bool)

(assert (=> b!1445631 m!1334649))

(declare-fun m!1334651 () Bool)

(assert (=> b!1445631 m!1334651))

(assert (=> b!1445631 m!1334621))

(declare-fun m!1334653 () Bool)

(assert (=> start!124758 m!1334653))

(declare-fun m!1334655 () Bool)

(assert (=> start!124758 m!1334655))

(assert (=> b!1445633 m!1334621))

(assert (=> b!1445633 m!1334621))

(declare-fun m!1334657 () Bool)

(assert (=> b!1445633 m!1334657))

(declare-fun m!1334659 () Bool)

(assert (=> b!1445636 m!1334659))

(declare-fun m!1334661 () Bool)

(assert (=> b!1445636 m!1334661))

(declare-fun m!1334663 () Bool)

(assert (=> b!1445640 m!1334663))

(assert (=> b!1445640 m!1334621))

(declare-fun m!1334665 () Bool)

(assert (=> b!1445644 m!1334665))

(assert (=> b!1445643 m!1334621))

(assert (=> b!1445643 m!1334621))

(declare-fun m!1334667 () Bool)

(assert (=> b!1445643 m!1334667))

(assert (=> b!1445632 m!1334621))

(assert (=> b!1445632 m!1334621))

(declare-fun m!1334669 () Bool)

(assert (=> b!1445632 m!1334669))

(check-sat (not b!1445628) (not b!1445632) (not b!1445638) (not b!1445637) (not b!1445633) (not b!1445630) (not b!1445634) (not b!1445631) (not start!124758) (not b!1445644) (not b!1445643) (not b!1445636))
(check-sat)
