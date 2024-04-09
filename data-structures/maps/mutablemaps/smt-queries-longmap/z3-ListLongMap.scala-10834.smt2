; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126894 () Bool)

(assert start!126894)

(declare-fun b!1489642 () Bool)

(declare-fun res!1013157 () Bool)

(declare-fun e!834868 () Bool)

(assert (=> b!1489642 (=> (not res!1013157) (not e!834868))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489642 (= res!1013157 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489643 () Bool)

(declare-fun res!1013153 () Bool)

(declare-fun e!834869 () Bool)

(assert (=> b!1489643 (=> (not res!1013153) (not e!834869))))

(declare-datatypes ((array!99584 0))(
  ( (array!99585 (arr!48059 (Array (_ BitVec 32) (_ BitVec 64))) (size!48610 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99584)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489643 (= res!1013153 (validKeyInArray!0 (select (arr!48059 a!2862) i!1006)))))

(declare-fun b!1489644 () Bool)

(declare-fun res!1013148 () Bool)

(assert (=> b!1489644 (=> (not res!1013148) (not e!834868))))

(declare-fun e!834867 () Bool)

(assert (=> b!1489644 (= res!1013148 e!834867)))

(declare-fun c!137780 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489644 (= c!137780 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489645 () Bool)

(declare-fun res!1013150 () Bool)

(assert (=> b!1489645 (=> (not res!1013150) (not e!834869))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1489645 (= res!1013150 (and (= (size!48610 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48610 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48610 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489646 () Bool)

(declare-fun e!834872 () Bool)

(assert (=> b!1489646 (= e!834868 (not e!834872))))

(declare-fun res!1013143 () Bool)

(assert (=> b!1489646 (=> res!1013143 e!834872)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1489646 (= res!1013143 (or (and (= (select (arr!48059 a!2862) index!646) (select (store (arr!48059 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48059 a!2862) index!646) (select (arr!48059 a!2862) j!93))) (= (select (arr!48059 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12322 0))(
  ( (MissingZero!12322 (index!51679 (_ BitVec 32))) (Found!12322 (index!51680 (_ BitVec 32))) (Intermediate!12322 (undefined!13134 Bool) (index!51681 (_ BitVec 32)) (x!133277 (_ BitVec 32))) (Undefined!12322) (MissingVacant!12322 (index!51682 (_ BitVec 32))) )
))
(declare-fun lt!649609 () SeekEntryResult!12322)

(assert (=> b!1489646 (and (= lt!649609 (Found!12322 j!93)) (or (= (select (arr!48059 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48059 a!2862) intermediateBeforeIndex!19) (select (arr!48059 a!2862) j!93))) (let ((bdg!54740 (select (store (arr!48059 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48059 a!2862) index!646) bdg!54740) (= (select (arr!48059 a!2862) index!646) (select (arr!48059 a!2862) j!93))) (= (select (arr!48059 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54740 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99584 (_ BitVec 32)) SeekEntryResult!12322)

(assert (=> b!1489646 (= lt!649609 (seekEntryOrOpen!0 (select (arr!48059 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99584 (_ BitVec 32)) Bool)

(assert (=> b!1489646 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49932 0))(
  ( (Unit!49933) )
))
(declare-fun lt!649615 () Unit!49932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49932)

(assert (=> b!1489646 (= lt!649615 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489647 () Bool)

(declare-fun res!1013156 () Bool)

(declare-fun e!834866 () Bool)

(assert (=> b!1489647 (=> res!1013156 e!834866)))

(assert (=> b!1489647 (= res!1013156 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489648 () Bool)

(declare-fun e!834871 () Bool)

(assert (=> b!1489648 (= e!834869 e!834871)))

(declare-fun res!1013146 () Bool)

(assert (=> b!1489648 (=> (not res!1013146) (not e!834871))))

(assert (=> b!1489648 (= res!1013146 (= (select (store (arr!48059 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!649611 () array!99584)

(assert (=> b!1489648 (= lt!649611 (array!99585 (store (arr!48059 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48610 a!2862)))))

(declare-fun lt!649607 () (_ BitVec 64))

(declare-fun b!1489649 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99584 (_ BitVec 32)) SeekEntryResult!12322)

(assert (=> b!1489649 (= e!834867 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649607 lt!649611 mask!2687) (seekEntryOrOpen!0 lt!649607 lt!649611 mask!2687)))))

(declare-fun b!1489650 () Bool)

(declare-fun res!1013158 () Bool)

(assert (=> b!1489650 (=> (not res!1013158) (not e!834869))))

(assert (=> b!1489650 (= res!1013158 (validKeyInArray!0 (select (arr!48059 a!2862) j!93)))))

(declare-fun b!1489651 () Bool)

(declare-fun e!834864 () Bool)

(declare-fun lt!649613 () SeekEntryResult!12322)

(declare-fun lt!649614 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99584 (_ BitVec 32)) SeekEntryResult!12322)

(assert (=> b!1489651 (= e!834864 (not (= lt!649613 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649614 lt!649607 lt!649611 mask!2687))))))

(declare-fun b!1489652 () Bool)

(declare-fun res!1013160 () Bool)

(assert (=> b!1489652 (=> (not res!1013160) (not e!834869))))

(assert (=> b!1489652 (= res!1013160 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48610 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48610 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48610 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489653 () Bool)

(declare-fun e!834870 () Bool)

(assert (=> b!1489653 (= e!834870 e!834868)))

(declare-fun res!1013154 () Bool)

(assert (=> b!1489653 (=> (not res!1013154) (not e!834868))))

(assert (=> b!1489653 (= res!1013154 (= lt!649613 (Intermediate!12322 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489653 (= lt!649613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649607 mask!2687) lt!649607 lt!649611 mask!2687))))

(assert (=> b!1489653 (= lt!649607 (select (store (arr!48059 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489654 () Bool)

(assert (=> b!1489654 (= e!834872 e!834866)))

(declare-fun res!1013149 () Bool)

(assert (=> b!1489654 (=> res!1013149 e!834866)))

(assert (=> b!1489654 (= res!1013149 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649614 #b00000000000000000000000000000000) (bvsge lt!649614 (size!48610 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489654 (= lt!649614 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649612 () SeekEntryResult!12322)

(assert (=> b!1489654 (= lt!649612 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649607 lt!649611 mask!2687))))

(assert (=> b!1489654 (= lt!649612 (seekEntryOrOpen!0 lt!649607 lt!649611 mask!2687))))

(declare-fun b!1489655 () Bool)

(declare-fun res!1013144 () Bool)

(assert (=> b!1489655 (=> res!1013144 e!834866)))

(assert (=> b!1489655 (= res!1013144 e!834864)))

(declare-fun c!137779 () Bool)

(assert (=> b!1489655 (= c!137779 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489656 () Bool)

(assert (=> b!1489656 (= e!834864 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649614 intermediateAfterIndex!19 lt!649607 lt!649611 mask!2687) lt!649612)))))

(declare-fun b!1489657 () Bool)

(declare-fun res!1013145 () Bool)

(assert (=> b!1489657 (=> (not res!1013145) (not e!834870))))

(declare-fun lt!649608 () SeekEntryResult!12322)

(assert (=> b!1489657 (= res!1013145 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48059 a!2862) j!93) a!2862 mask!2687) lt!649608))))

(declare-fun res!1013147 () Bool)

(assert (=> start!126894 (=> (not res!1013147) (not e!834869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126894 (= res!1013147 (validMask!0 mask!2687))))

(assert (=> start!126894 e!834869))

(assert (=> start!126894 true))

(declare-fun array_inv!37004 (array!99584) Bool)

(assert (=> start!126894 (array_inv!37004 a!2862)))

(declare-fun b!1489658 () Bool)

(declare-fun res!1013159 () Bool)

(assert (=> b!1489658 (=> (not res!1013159) (not e!834869))))

(assert (=> b!1489658 (= res!1013159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489659 () Bool)

(declare-fun res!1013152 () Bool)

(assert (=> b!1489659 (=> (not res!1013152) (not e!834869))))

(declare-datatypes ((List!34740 0))(
  ( (Nil!34737) (Cons!34736 (h!36119 (_ BitVec 64)) (t!49441 List!34740)) )
))
(declare-fun arrayNoDuplicates!0 (array!99584 (_ BitVec 32) List!34740) Bool)

(assert (=> b!1489659 (= res!1013152 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34737))))

(declare-fun b!1489660 () Bool)

(assert (=> b!1489660 (= e!834866 true)))

(assert (=> b!1489660 (= lt!649609 lt!649612)))

(declare-fun lt!649610 () Unit!49932)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49932)

(assert (=> b!1489660 (= lt!649610 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649614 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489661 () Bool)

(assert (=> b!1489661 (= e!834871 e!834870)))

(declare-fun res!1013155 () Bool)

(assert (=> b!1489661 (=> (not res!1013155) (not e!834870))))

(assert (=> b!1489661 (= res!1013155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48059 a!2862) j!93) mask!2687) (select (arr!48059 a!2862) j!93) a!2862 mask!2687) lt!649608))))

(assert (=> b!1489661 (= lt!649608 (Intermediate!12322 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489662 () Bool)

(declare-fun res!1013151 () Bool)

(assert (=> b!1489662 (=> res!1013151 e!834866)))

(assert (=> b!1489662 (= res!1013151 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649614 (select (arr!48059 a!2862) j!93) a!2862 mask!2687) lt!649608)))))

(declare-fun b!1489663 () Bool)

(assert (=> b!1489663 (= e!834867 (= lt!649613 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649607 lt!649611 mask!2687)))))

(assert (= (and start!126894 res!1013147) b!1489645))

(assert (= (and b!1489645 res!1013150) b!1489643))

(assert (= (and b!1489643 res!1013153) b!1489650))

(assert (= (and b!1489650 res!1013158) b!1489658))

(assert (= (and b!1489658 res!1013159) b!1489659))

(assert (= (and b!1489659 res!1013152) b!1489652))

(assert (= (and b!1489652 res!1013160) b!1489648))

(assert (= (and b!1489648 res!1013146) b!1489661))

(assert (= (and b!1489661 res!1013155) b!1489657))

(assert (= (and b!1489657 res!1013145) b!1489653))

(assert (= (and b!1489653 res!1013154) b!1489644))

(assert (= (and b!1489644 c!137780) b!1489663))

(assert (= (and b!1489644 (not c!137780)) b!1489649))

(assert (= (and b!1489644 res!1013148) b!1489642))

(assert (= (and b!1489642 res!1013157) b!1489646))

(assert (= (and b!1489646 (not res!1013143)) b!1489654))

(assert (= (and b!1489654 (not res!1013149)) b!1489662))

(assert (= (and b!1489662 (not res!1013151)) b!1489655))

(assert (= (and b!1489655 c!137779) b!1489651))

(assert (= (and b!1489655 (not c!137779)) b!1489656))

(assert (= (and b!1489655 (not res!1013144)) b!1489647))

(assert (= (and b!1489647 (not res!1013156)) b!1489660))

(declare-fun m!1373907 () Bool)

(assert (=> b!1489662 m!1373907))

(assert (=> b!1489662 m!1373907))

(declare-fun m!1373909 () Bool)

(assert (=> b!1489662 m!1373909))

(declare-fun m!1373911 () Bool)

(assert (=> start!126894 m!1373911))

(declare-fun m!1373913 () Bool)

(assert (=> start!126894 m!1373913))

(declare-fun m!1373915 () Bool)

(assert (=> b!1489648 m!1373915))

(declare-fun m!1373917 () Bool)

(assert (=> b!1489648 m!1373917))

(declare-fun m!1373919 () Bool)

(assert (=> b!1489649 m!1373919))

(declare-fun m!1373921 () Bool)

(assert (=> b!1489649 m!1373921))

(declare-fun m!1373923 () Bool)

(assert (=> b!1489653 m!1373923))

(assert (=> b!1489653 m!1373923))

(declare-fun m!1373925 () Bool)

(assert (=> b!1489653 m!1373925))

(assert (=> b!1489653 m!1373915))

(declare-fun m!1373927 () Bool)

(assert (=> b!1489653 m!1373927))

(declare-fun m!1373929 () Bool)

(assert (=> b!1489643 m!1373929))

(assert (=> b!1489643 m!1373929))

(declare-fun m!1373931 () Bool)

(assert (=> b!1489643 m!1373931))

(declare-fun m!1373933 () Bool)

(assert (=> b!1489651 m!1373933))

(assert (=> b!1489661 m!1373907))

(assert (=> b!1489661 m!1373907))

(declare-fun m!1373935 () Bool)

(assert (=> b!1489661 m!1373935))

(assert (=> b!1489661 m!1373935))

(assert (=> b!1489661 m!1373907))

(declare-fun m!1373937 () Bool)

(assert (=> b!1489661 m!1373937))

(declare-fun m!1373939 () Bool)

(assert (=> b!1489656 m!1373939))

(declare-fun m!1373941 () Bool)

(assert (=> b!1489659 m!1373941))

(declare-fun m!1373943 () Bool)

(assert (=> b!1489658 m!1373943))

(assert (=> b!1489657 m!1373907))

(assert (=> b!1489657 m!1373907))

(declare-fun m!1373945 () Bool)

(assert (=> b!1489657 m!1373945))

(declare-fun m!1373947 () Bool)

(assert (=> b!1489660 m!1373947))

(assert (=> b!1489650 m!1373907))

(assert (=> b!1489650 m!1373907))

(declare-fun m!1373949 () Bool)

(assert (=> b!1489650 m!1373949))

(declare-fun m!1373951 () Bool)

(assert (=> b!1489654 m!1373951))

(assert (=> b!1489654 m!1373919))

(assert (=> b!1489654 m!1373921))

(declare-fun m!1373953 () Bool)

(assert (=> b!1489663 m!1373953))

(declare-fun m!1373955 () Bool)

(assert (=> b!1489646 m!1373955))

(assert (=> b!1489646 m!1373915))

(declare-fun m!1373957 () Bool)

(assert (=> b!1489646 m!1373957))

(declare-fun m!1373959 () Bool)

(assert (=> b!1489646 m!1373959))

(declare-fun m!1373961 () Bool)

(assert (=> b!1489646 m!1373961))

(assert (=> b!1489646 m!1373907))

(declare-fun m!1373963 () Bool)

(assert (=> b!1489646 m!1373963))

(declare-fun m!1373965 () Bool)

(assert (=> b!1489646 m!1373965))

(assert (=> b!1489646 m!1373907))

(check-sat (not b!1489649) (not b!1489651) (not start!126894) (not b!1489653) (not b!1489657) (not b!1489658) (not b!1489659) (not b!1489663) (not b!1489643) (not b!1489661) (not b!1489646) (not b!1489656) (not b!1489650) (not b!1489660) (not b!1489662) (not b!1489654))
(check-sat)
