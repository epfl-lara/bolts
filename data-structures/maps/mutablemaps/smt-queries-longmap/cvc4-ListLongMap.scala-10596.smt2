; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124760 () Bool)

(assert start!124760)

(declare-fun b!1445679 () Bool)

(declare-fun res!977633 () Bool)

(declare-fun e!814361 () Bool)

(assert (=> b!1445679 (=> (not res!977633) (not e!814361))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98125 0))(
  ( (array!98126 (arr!47346 (Array (_ BitVec 32) (_ BitVec 64))) (size!47897 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98125)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445679 (= res!977633 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47897 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47897 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47897 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!814364 () Bool)

(declare-fun b!1445680 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445680 (= e!814364 (or (= (select (arr!47346 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47346 a!2862) intermediateBeforeIndex!19) (select (arr!47346 a!2862) j!93))))))

(declare-fun b!1445681 () Bool)

(declare-fun e!814363 () Bool)

(assert (=> b!1445681 (= e!814361 e!814363)))

(declare-fun res!977625 () Bool)

(assert (=> b!1445681 (=> (not res!977625) (not e!814363))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1445681 (= res!977625 (= (select (store (arr!47346 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634533 () array!98125)

(assert (=> b!1445681 (= lt!634533 (array!98126 (store (arr!47346 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47897 a!2862)))))

(declare-fun b!1445682 () Bool)

(declare-fun res!977635 () Bool)

(declare-fun e!814362 () Bool)

(assert (=> b!1445682 (=> (not res!977635) (not e!814362))))

(declare-fun e!814359 () Bool)

(assert (=> b!1445682 (= res!977635 e!814359)))

(declare-fun c!133541 () Bool)

(assert (=> b!1445682 (= c!133541 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445683 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1445683 (= e!814362 (not (or (and (= (select (arr!47346 a!2862) index!646) (select (store (arr!47346 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47346 a!2862) index!646) (select (arr!47346 a!2862) j!93))) (not (= (select (arr!47346 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1445683 e!814364))

(declare-fun res!977636 () Bool)

(assert (=> b!1445683 (=> (not res!977636) (not e!814364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98125 (_ BitVec 32)) Bool)

(assert (=> b!1445683 (= res!977636 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48686 0))(
  ( (Unit!48687) )
))
(declare-fun lt!634532 () Unit!48686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48686)

(assert (=> b!1445683 (= lt!634532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445684 () Bool)

(declare-fun res!977631 () Bool)

(assert (=> b!1445684 (=> (not res!977631) (not e!814361))))

(assert (=> b!1445684 (= res!977631 (and (= (size!47897 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47897 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47897 a!2862)) (not (= i!1006 j!93))))))

(declare-datatypes ((SeekEntryResult!11621 0))(
  ( (MissingZero!11621 (index!48875 (_ BitVec 32))) (Found!11621 (index!48876 (_ BitVec 32))) (Intermediate!11621 (undefined!12433 Bool) (index!48877 (_ BitVec 32)) (x!130561 (_ BitVec 32))) (Undefined!11621) (MissingVacant!11621 (index!48878 (_ BitVec 32))) )
))
(declare-fun lt!634531 () SeekEntryResult!11621)

(declare-fun lt!634534 () (_ BitVec 64))

(declare-fun b!1445685 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98125 (_ BitVec 32)) SeekEntryResult!11621)

(assert (=> b!1445685 (= e!814359 (= lt!634531 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634534 lt!634533 mask!2687)))))

(declare-fun b!1445686 () Bool)

(declare-fun res!977623 () Bool)

(declare-fun e!814360 () Bool)

(assert (=> b!1445686 (=> (not res!977623) (not e!814360))))

(declare-fun lt!634530 () SeekEntryResult!11621)

(assert (=> b!1445686 (= res!977623 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47346 a!2862) j!93) a!2862 mask!2687) lt!634530))))

(declare-fun b!1445687 () Bool)

(declare-fun res!977628 () Bool)

(assert (=> b!1445687 (=> (not res!977628) (not e!814362))))

(assert (=> b!1445687 (= res!977628 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445688 () Bool)

(assert (=> b!1445688 (= e!814360 e!814362)))

(declare-fun res!977627 () Bool)

(assert (=> b!1445688 (=> (not res!977627) (not e!814362))))

(assert (=> b!1445688 (= res!977627 (= lt!634531 (Intermediate!11621 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445688 (= lt!634531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634534 mask!2687) lt!634534 lt!634533 mask!2687))))

(assert (=> b!1445688 (= lt!634534 (select (store (arr!47346 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445689 () Bool)

(declare-fun res!977629 () Bool)

(assert (=> b!1445689 (=> (not res!977629) (not e!814361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445689 (= res!977629 (validKeyInArray!0 (select (arr!47346 a!2862) i!1006)))))

(declare-fun b!1445690 () Bool)

(assert (=> b!1445690 (= e!814363 e!814360)))

(declare-fun res!977626 () Bool)

(assert (=> b!1445690 (=> (not res!977626) (not e!814360))))

(assert (=> b!1445690 (= res!977626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47346 a!2862) j!93) mask!2687) (select (arr!47346 a!2862) j!93) a!2862 mask!2687) lt!634530))))

(assert (=> b!1445690 (= lt!634530 (Intermediate!11621 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445691 () Bool)

(declare-fun res!977630 () Bool)

(assert (=> b!1445691 (=> (not res!977630) (not e!814361))))

(declare-datatypes ((List!34027 0))(
  ( (Nil!34024) (Cons!34023 (h!35373 (_ BitVec 64)) (t!48728 List!34027)) )
))
(declare-fun arrayNoDuplicates!0 (array!98125 (_ BitVec 32) List!34027) Bool)

(assert (=> b!1445691 (= res!977630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34024))))

(declare-fun b!1445692 () Bool)

(declare-fun res!977624 () Bool)

(assert (=> b!1445692 (=> (not res!977624) (not e!814364))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98125 (_ BitVec 32)) SeekEntryResult!11621)

(assert (=> b!1445692 (= res!977624 (= (seekEntryOrOpen!0 (select (arr!47346 a!2862) j!93) a!2862 mask!2687) (Found!11621 j!93)))))

(declare-fun res!977632 () Bool)

(assert (=> start!124760 (=> (not res!977632) (not e!814361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124760 (= res!977632 (validMask!0 mask!2687))))

(assert (=> start!124760 e!814361))

(assert (=> start!124760 true))

(declare-fun array_inv!36291 (array!98125) Bool)

(assert (=> start!124760 (array_inv!36291 a!2862)))

(declare-fun b!1445693 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98125 (_ BitVec 32)) SeekEntryResult!11621)

(assert (=> b!1445693 (= e!814359 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634534 lt!634533 mask!2687) (seekEntryOrOpen!0 lt!634534 lt!634533 mask!2687)))))

(declare-fun b!1445694 () Bool)

(declare-fun res!977634 () Bool)

(assert (=> b!1445694 (=> (not res!977634) (not e!814361))))

(assert (=> b!1445694 (= res!977634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445695 () Bool)

(declare-fun res!977637 () Bool)

(assert (=> b!1445695 (=> (not res!977637) (not e!814361))))

(assert (=> b!1445695 (= res!977637 (validKeyInArray!0 (select (arr!47346 a!2862) j!93)))))

(assert (= (and start!124760 res!977632) b!1445684))

(assert (= (and b!1445684 res!977631) b!1445689))

(assert (= (and b!1445689 res!977629) b!1445695))

(assert (= (and b!1445695 res!977637) b!1445694))

(assert (= (and b!1445694 res!977634) b!1445691))

(assert (= (and b!1445691 res!977630) b!1445679))

(assert (= (and b!1445679 res!977633) b!1445681))

(assert (= (and b!1445681 res!977625) b!1445690))

(assert (= (and b!1445690 res!977626) b!1445686))

(assert (= (and b!1445686 res!977623) b!1445688))

(assert (= (and b!1445688 res!977627) b!1445682))

(assert (= (and b!1445682 c!133541) b!1445685))

(assert (= (and b!1445682 (not c!133541)) b!1445693))

(assert (= (and b!1445682 res!977635) b!1445687))

(assert (= (and b!1445687 res!977628) b!1445683))

(assert (= (and b!1445683 res!977636) b!1445692))

(assert (= (and b!1445692 res!977624) b!1445680))

(declare-fun m!1334671 () Bool)

(assert (=> b!1445680 m!1334671))

(declare-fun m!1334673 () Bool)

(assert (=> b!1445680 m!1334673))

(assert (=> b!1445692 m!1334673))

(assert (=> b!1445692 m!1334673))

(declare-fun m!1334675 () Bool)

(assert (=> b!1445692 m!1334675))

(declare-fun m!1334677 () Bool)

(assert (=> b!1445681 m!1334677))

(declare-fun m!1334679 () Bool)

(assert (=> b!1445681 m!1334679))

(assert (=> b!1445690 m!1334673))

(assert (=> b!1445690 m!1334673))

(declare-fun m!1334681 () Bool)

(assert (=> b!1445690 m!1334681))

(assert (=> b!1445690 m!1334681))

(assert (=> b!1445690 m!1334673))

(declare-fun m!1334683 () Bool)

(assert (=> b!1445690 m!1334683))

(assert (=> b!1445695 m!1334673))

(assert (=> b!1445695 m!1334673))

(declare-fun m!1334685 () Bool)

(assert (=> b!1445695 m!1334685))

(declare-fun m!1334687 () Bool)

(assert (=> b!1445691 m!1334687))

(assert (=> b!1445686 m!1334673))

(assert (=> b!1445686 m!1334673))

(declare-fun m!1334689 () Bool)

(assert (=> b!1445686 m!1334689))

(declare-fun m!1334691 () Bool)

(assert (=> b!1445683 m!1334691))

(assert (=> b!1445683 m!1334677))

(declare-fun m!1334693 () Bool)

(assert (=> b!1445683 m!1334693))

(declare-fun m!1334695 () Bool)

(assert (=> b!1445683 m!1334695))

(declare-fun m!1334697 () Bool)

(assert (=> b!1445683 m!1334697))

(assert (=> b!1445683 m!1334673))

(declare-fun m!1334699 () Bool)

(assert (=> b!1445694 m!1334699))

(declare-fun m!1334701 () Bool)

(assert (=> b!1445689 m!1334701))

(assert (=> b!1445689 m!1334701))

(declare-fun m!1334703 () Bool)

(assert (=> b!1445689 m!1334703))

(declare-fun m!1334705 () Bool)

(assert (=> b!1445685 m!1334705))

(declare-fun m!1334707 () Bool)

(assert (=> start!124760 m!1334707))

(declare-fun m!1334709 () Bool)

(assert (=> start!124760 m!1334709))

(declare-fun m!1334711 () Bool)

(assert (=> b!1445693 m!1334711))

(declare-fun m!1334713 () Bool)

(assert (=> b!1445693 m!1334713))

(declare-fun m!1334715 () Bool)

(assert (=> b!1445688 m!1334715))

(assert (=> b!1445688 m!1334715))

(declare-fun m!1334717 () Bool)

(assert (=> b!1445688 m!1334717))

(assert (=> b!1445688 m!1334677))

(declare-fun m!1334719 () Bool)

(assert (=> b!1445688 m!1334719))

(push 1)

(assert (not b!1445688))

(assert (not b!1445694))

(assert (not b!1445686))

(assert (not b!1445683))

(assert (not b!1445691))

(assert (not b!1445695))

(assert (not b!1445690))

(assert (not start!124760))

(assert (not b!1445693))

(assert (not b!1445692))

(assert (not b!1445689))

(assert (not b!1445685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

