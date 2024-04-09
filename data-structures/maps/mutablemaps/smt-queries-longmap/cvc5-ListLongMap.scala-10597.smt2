; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124762 () Bool)

(assert start!124762)

(declare-fun lt!634549 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98127 0))(
  ( (array!98128 (arr!47347 (Array (_ BitVec 32) (_ BitVec 64))) (size!47898 (_ BitVec 32))) )
))
(declare-fun lt!634547 () array!98127)

(declare-datatypes ((SeekEntryResult!11622 0))(
  ( (MissingZero!11622 (index!48879 (_ BitVec 32))) (Found!11622 (index!48880 (_ BitVec 32))) (Intermediate!11622 (undefined!12434 Bool) (index!48881 (_ BitVec 32)) (x!130570 (_ BitVec 32))) (Undefined!11622) (MissingVacant!11622 (index!48882 (_ BitVec 32))) )
))
(declare-fun lt!634546 () SeekEntryResult!11622)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!814382 () Bool)

(declare-fun b!1445730 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98127 (_ BitVec 32)) SeekEntryResult!11622)

(assert (=> b!1445730 (= e!814382 (= lt!634546 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634549 lt!634547 mask!2687)))))

(declare-fun b!1445731 () Bool)

(declare-fun res!977672 () Bool)

(declare-fun e!814379 () Bool)

(assert (=> b!1445731 (=> (not res!977672) (not e!814379))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun a!2862 () array!98127)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445731 (= res!977672 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47898 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47898 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47898 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!814380 () Bool)

(declare-fun b!1445732 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445732 (= e!814380 (or (= (select (arr!47347 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47347 a!2862) intermediateBeforeIndex!19) (select (arr!47347 a!2862) j!93))))))

(declare-fun b!1445733 () Bool)

(declare-fun res!977670 () Bool)

(assert (=> b!1445733 (=> (not res!977670) (not e!814379))))

(declare-datatypes ((List!34028 0))(
  ( (Nil!34025) (Cons!34024 (h!35374 (_ BitVec 64)) (t!48729 List!34028)) )
))
(declare-fun arrayNoDuplicates!0 (array!98127 (_ BitVec 32) List!34028) Bool)

(assert (=> b!1445733 (= res!977670 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34025))))

(declare-fun b!1445734 () Bool)

(declare-fun res!977679 () Bool)

(assert (=> b!1445734 (=> (not res!977679) (not e!814379))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445734 (= res!977679 (validKeyInArray!0 (select (arr!47347 a!2862) i!1006)))))

(declare-fun b!1445735 () Bool)

(declare-fun e!814385 () Bool)

(declare-fun e!814384 () Bool)

(assert (=> b!1445735 (= e!814385 e!814384)))

(declare-fun res!977681 () Bool)

(assert (=> b!1445735 (=> (not res!977681) (not e!814384))))

(assert (=> b!1445735 (= res!977681 (= lt!634546 (Intermediate!11622 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445735 (= lt!634546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634549 mask!2687) lt!634549 lt!634547 mask!2687))))

(assert (=> b!1445735 (= lt!634549 (select (store (arr!47347 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445736 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98127 (_ BitVec 32)) SeekEntryResult!11622)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98127 (_ BitVec 32)) SeekEntryResult!11622)

(assert (=> b!1445736 (= e!814382 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634549 lt!634547 mask!2687) (seekEntryOrOpen!0 lt!634549 lt!634547 mask!2687)))))

(declare-fun b!1445737 () Bool)

(declare-fun res!977675 () Bool)

(assert (=> b!1445737 (=> (not res!977675) (not e!814379))))

(assert (=> b!1445737 (= res!977675 (validKeyInArray!0 (select (arr!47347 a!2862) j!93)))))

(declare-fun b!1445738 () Bool)

(declare-fun res!977676 () Bool)

(assert (=> b!1445738 (=> (not res!977676) (not e!814384))))

(assert (=> b!1445738 (= res!977676 e!814382)))

(declare-fun c!133544 () Bool)

(assert (=> b!1445738 (= c!133544 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!977680 () Bool)

(assert (=> start!124762 (=> (not res!977680) (not e!814379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124762 (= res!977680 (validMask!0 mask!2687))))

(assert (=> start!124762 e!814379))

(assert (=> start!124762 true))

(declare-fun array_inv!36292 (array!98127) Bool)

(assert (=> start!124762 (array_inv!36292 a!2862)))

(declare-fun b!1445739 () Bool)

(declare-fun res!977671 () Bool)

(assert (=> b!1445739 (=> (not res!977671) (not e!814379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98127 (_ BitVec 32)) Bool)

(assert (=> b!1445739 (= res!977671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445740 () Bool)

(declare-fun res!977669 () Bool)

(assert (=> b!1445740 (=> (not res!977669) (not e!814380))))

(assert (=> b!1445740 (= res!977669 (= (seekEntryOrOpen!0 (select (arr!47347 a!2862) j!93) a!2862 mask!2687) (Found!11622 j!93)))))

(declare-fun b!1445741 () Bool)

(assert (=> b!1445741 (= e!814384 (not true))))

(assert (=> b!1445741 e!814380))

(declare-fun res!977678 () Bool)

(assert (=> b!1445741 (=> (not res!977678) (not e!814380))))

(assert (=> b!1445741 (= res!977678 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48688 0))(
  ( (Unit!48689) )
))
(declare-fun lt!634548 () Unit!48688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48688)

(assert (=> b!1445741 (= lt!634548 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445742 () Bool)

(declare-fun res!977668 () Bool)

(assert (=> b!1445742 (=> (not res!977668) (not e!814385))))

(declare-fun lt!634545 () SeekEntryResult!11622)

(assert (=> b!1445742 (= res!977668 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47347 a!2862) j!93) a!2862 mask!2687) lt!634545))))

(declare-fun b!1445743 () Bool)

(declare-fun e!814383 () Bool)

(assert (=> b!1445743 (= e!814383 e!814385)))

(declare-fun res!977677 () Bool)

(assert (=> b!1445743 (=> (not res!977677) (not e!814385))))

(assert (=> b!1445743 (= res!977677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47347 a!2862) j!93) mask!2687) (select (arr!47347 a!2862) j!93) a!2862 mask!2687) lt!634545))))

(assert (=> b!1445743 (= lt!634545 (Intermediate!11622 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445744 () Bool)

(assert (=> b!1445744 (= e!814379 e!814383)))

(declare-fun res!977682 () Bool)

(assert (=> b!1445744 (=> (not res!977682) (not e!814383))))

(assert (=> b!1445744 (= res!977682 (= (select (store (arr!47347 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445744 (= lt!634547 (array!98128 (store (arr!47347 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47898 a!2862)))))

(declare-fun b!1445745 () Bool)

(declare-fun res!977674 () Bool)

(assert (=> b!1445745 (=> (not res!977674) (not e!814384))))

(assert (=> b!1445745 (= res!977674 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445746 () Bool)

(declare-fun res!977673 () Bool)

(assert (=> b!1445746 (=> (not res!977673) (not e!814379))))

(assert (=> b!1445746 (= res!977673 (and (= (size!47898 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47898 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47898 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124762 res!977680) b!1445746))

(assert (= (and b!1445746 res!977673) b!1445734))

(assert (= (and b!1445734 res!977679) b!1445737))

(assert (= (and b!1445737 res!977675) b!1445739))

(assert (= (and b!1445739 res!977671) b!1445733))

(assert (= (and b!1445733 res!977670) b!1445731))

(assert (= (and b!1445731 res!977672) b!1445744))

(assert (= (and b!1445744 res!977682) b!1445743))

(assert (= (and b!1445743 res!977677) b!1445742))

(assert (= (and b!1445742 res!977668) b!1445735))

(assert (= (and b!1445735 res!977681) b!1445738))

(assert (= (and b!1445738 c!133544) b!1445730))

(assert (= (and b!1445738 (not c!133544)) b!1445736))

(assert (= (and b!1445738 res!977676) b!1445745))

(assert (= (and b!1445745 res!977674) b!1445741))

(assert (= (and b!1445741 res!977678) b!1445740))

(assert (= (and b!1445740 res!977669) b!1445732))

(declare-fun m!1334721 () Bool)

(assert (=> start!124762 m!1334721))

(declare-fun m!1334723 () Bool)

(assert (=> start!124762 m!1334723))

(declare-fun m!1334725 () Bool)

(assert (=> b!1445732 m!1334725))

(declare-fun m!1334727 () Bool)

(assert (=> b!1445732 m!1334727))

(assert (=> b!1445742 m!1334727))

(assert (=> b!1445742 m!1334727))

(declare-fun m!1334729 () Bool)

(assert (=> b!1445742 m!1334729))

(declare-fun m!1334731 () Bool)

(assert (=> b!1445730 m!1334731))

(declare-fun m!1334733 () Bool)

(assert (=> b!1445735 m!1334733))

(assert (=> b!1445735 m!1334733))

(declare-fun m!1334735 () Bool)

(assert (=> b!1445735 m!1334735))

(declare-fun m!1334737 () Bool)

(assert (=> b!1445735 m!1334737))

(declare-fun m!1334739 () Bool)

(assert (=> b!1445735 m!1334739))

(assert (=> b!1445740 m!1334727))

(assert (=> b!1445740 m!1334727))

(declare-fun m!1334741 () Bool)

(assert (=> b!1445740 m!1334741))

(assert (=> b!1445737 m!1334727))

(assert (=> b!1445737 m!1334727))

(declare-fun m!1334743 () Bool)

(assert (=> b!1445737 m!1334743))

(declare-fun m!1334745 () Bool)

(assert (=> b!1445739 m!1334745))

(assert (=> b!1445744 m!1334737))

(declare-fun m!1334747 () Bool)

(assert (=> b!1445744 m!1334747))

(declare-fun m!1334749 () Bool)

(assert (=> b!1445736 m!1334749))

(declare-fun m!1334751 () Bool)

(assert (=> b!1445736 m!1334751))

(declare-fun m!1334753 () Bool)

(assert (=> b!1445734 m!1334753))

(assert (=> b!1445734 m!1334753))

(declare-fun m!1334755 () Bool)

(assert (=> b!1445734 m!1334755))

(assert (=> b!1445743 m!1334727))

(assert (=> b!1445743 m!1334727))

(declare-fun m!1334757 () Bool)

(assert (=> b!1445743 m!1334757))

(assert (=> b!1445743 m!1334757))

(assert (=> b!1445743 m!1334727))

(declare-fun m!1334759 () Bool)

(assert (=> b!1445743 m!1334759))

(declare-fun m!1334761 () Bool)

(assert (=> b!1445741 m!1334761))

(declare-fun m!1334763 () Bool)

(assert (=> b!1445741 m!1334763))

(declare-fun m!1334765 () Bool)

(assert (=> b!1445733 m!1334765))

(push 1)

