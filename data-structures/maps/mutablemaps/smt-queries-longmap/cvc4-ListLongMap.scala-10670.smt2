; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125204 () Bool)

(assert start!125204)

(declare-fun b!1458904 () Bool)

(declare-fun e!820565 () Bool)

(declare-fun e!820564 () Bool)

(assert (=> b!1458904 (= e!820565 e!820564)))

(declare-fun res!989043 () Bool)

(assert (=> b!1458904 (=> (not res!989043) (not e!820564))))

(declare-datatypes ((SeekEntryResult!11843 0))(
  ( (MissingZero!11843 (index!49763 (_ BitVec 32))) (Found!11843 (index!49764 (_ BitVec 32))) (Intermediate!11843 (undefined!12655 Bool) (index!49765 (_ BitVec 32)) (x!131375 (_ BitVec 32))) (Undefined!11843) (MissingVacant!11843 (index!49766 (_ BitVec 32))) )
))
(declare-fun lt!639205 () SeekEntryResult!11843)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1458904 (= res!989043 (= lt!639205 (Intermediate!11843 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98569 0))(
  ( (array!98570 (arr!47568 (Array (_ BitVec 32) (_ BitVec 64))) (size!48119 (_ BitVec 32))) )
))
(declare-fun lt!639204 () array!98569)

(declare-fun lt!639202 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98569 (_ BitVec 32)) SeekEntryResult!11843)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458904 (= lt!639205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639202 mask!2687) lt!639202 lt!639204 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98569)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1458904 (= lt!639202 (select (store (arr!47568 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!989046 () Bool)

(declare-fun e!820558 () Bool)

(assert (=> start!125204 (=> (not res!989046) (not e!820558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125204 (= res!989046 (validMask!0 mask!2687))))

(assert (=> start!125204 e!820558))

(assert (=> start!125204 true))

(declare-fun array_inv!36513 (array!98569) Bool)

(assert (=> start!125204 (array_inv!36513 a!2862)))

(declare-fun b!1458905 () Bool)

(declare-fun e!820560 () Bool)

(assert (=> b!1458905 (= e!820560 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!639203 () SeekEntryResult!11843)

(declare-fun lt!639199 () SeekEntryResult!11843)

(assert (=> b!1458905 (= lt!639203 lt!639199)))

(declare-datatypes ((Unit!49130 0))(
  ( (Unit!49131) )
))
(declare-fun lt!639197 () Unit!49130)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639201 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49130)

(assert (=> b!1458905 (= lt!639197 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639201 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458906 () Bool)

(declare-fun res!989045 () Bool)

(assert (=> b!1458906 (=> (not res!989045) (not e!820558))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1458906 (= res!989045 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48119 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48119 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48119 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458907 () Bool)

(declare-fun res!989048 () Bool)

(assert (=> b!1458907 (=> (not res!989048) (not e!820564))))

(assert (=> b!1458907 (= res!989048 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458908 () Bool)

(declare-fun res!989041 () Bool)

(assert (=> b!1458908 (=> (not res!989041) (not e!820558))))

(declare-datatypes ((List!34249 0))(
  ( (Nil!34246) (Cons!34245 (h!35595 (_ BitVec 64)) (t!48950 List!34249)) )
))
(declare-fun arrayNoDuplicates!0 (array!98569 (_ BitVec 32) List!34249) Bool)

(assert (=> b!1458908 (= res!989041 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34246))))

(declare-fun b!1458909 () Bool)

(declare-fun res!989037 () Bool)

(assert (=> b!1458909 (=> (not res!989037) (not e!820558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98569 (_ BitVec 32)) Bool)

(assert (=> b!1458909 (= res!989037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458910 () Bool)

(declare-fun res!989035 () Bool)

(assert (=> b!1458910 (=> (not res!989035) (not e!820564))))

(declare-fun e!820559 () Bool)

(assert (=> b!1458910 (= res!989035 e!820559)))

(declare-fun c!134449 () Bool)

(assert (=> b!1458910 (= c!134449 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458911 () Bool)

(declare-fun res!989033 () Bool)

(assert (=> b!1458911 (=> (not res!989033) (not e!820565))))

(declare-fun lt!639198 () SeekEntryResult!11843)

(assert (=> b!1458911 (= res!989033 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47568 a!2862) j!93) a!2862 mask!2687) lt!639198))))

(declare-fun e!820562 () Bool)

(declare-fun b!1458912 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98569 (_ BitVec 32)) SeekEntryResult!11843)

(assert (=> b!1458912 (= e!820562 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639201 intermediateAfterIndex!19 lt!639202 lt!639204 mask!2687) lt!639199)))))

(declare-fun b!1458913 () Bool)

(assert (=> b!1458913 (= e!820559 (= lt!639205 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639202 lt!639204 mask!2687)))))

(declare-fun b!1458914 () Bool)

(declare-fun e!820561 () Bool)

(assert (=> b!1458914 (= e!820558 e!820561)))

(declare-fun res!989044 () Bool)

(assert (=> b!1458914 (=> (not res!989044) (not e!820561))))

(assert (=> b!1458914 (= res!989044 (= (select (store (arr!47568 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458914 (= lt!639204 (array!98570 (store (arr!47568 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48119 a!2862)))))

(declare-fun b!1458915 () Bool)

(declare-fun res!989034 () Bool)

(assert (=> b!1458915 (=> (not res!989034) (not e!820558))))

(assert (=> b!1458915 (= res!989034 (and (= (size!48119 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48119 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48119 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458916 () Bool)

(declare-fun res!989042 () Bool)

(assert (=> b!1458916 (=> res!989042 e!820560)))

(assert (=> b!1458916 (= res!989042 e!820562)))

(declare-fun c!134450 () Bool)

(assert (=> b!1458916 (= c!134450 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458917 () Bool)

(assert (=> b!1458917 (= e!820561 e!820565)))

(declare-fun res!989038 () Bool)

(assert (=> b!1458917 (=> (not res!989038) (not e!820565))))

(assert (=> b!1458917 (= res!989038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47568 a!2862) j!93) mask!2687) (select (arr!47568 a!2862) j!93) a!2862 mask!2687) lt!639198))))

(assert (=> b!1458917 (= lt!639198 (Intermediate!11843 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458918 () Bool)

(declare-fun res!989047 () Bool)

(assert (=> b!1458918 (=> (not res!989047) (not e!820558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458918 (= res!989047 (validKeyInArray!0 (select (arr!47568 a!2862) i!1006)))))

(declare-fun b!1458919 () Bool)

(assert (=> b!1458919 (= e!820562 (not (= lt!639205 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639201 lt!639202 lt!639204 mask!2687))))))

(declare-fun b!1458920 () Bool)

(declare-fun res!989049 () Bool)

(assert (=> b!1458920 (=> (not res!989049) (not e!820558))))

(assert (=> b!1458920 (= res!989049 (validKeyInArray!0 (select (arr!47568 a!2862) j!93)))))

(declare-fun b!1458921 () Bool)

(declare-fun res!989032 () Bool)

(assert (=> b!1458921 (=> res!989032 e!820560)))

(assert (=> b!1458921 (= res!989032 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458922 () Bool)

(declare-fun e!820557 () Bool)

(assert (=> b!1458922 (= e!820557 e!820560)))

(declare-fun res!989040 () Bool)

(assert (=> b!1458922 (=> res!989040 e!820560)))

(assert (=> b!1458922 (= res!989040 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639201 #b00000000000000000000000000000000) (bvsge lt!639201 (size!48119 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458922 (= lt!639201 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458922 (= lt!639199 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639202 lt!639204 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98569 (_ BitVec 32)) SeekEntryResult!11843)

(assert (=> b!1458922 (= lt!639199 (seekEntryOrOpen!0 lt!639202 lt!639204 mask!2687))))

(declare-fun b!1458923 () Bool)

(declare-fun res!989039 () Bool)

(assert (=> b!1458923 (=> res!989039 e!820560)))

(assert (=> b!1458923 (= res!989039 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639201 (select (arr!47568 a!2862) j!93) a!2862 mask!2687) lt!639198)))))

(declare-fun b!1458924 () Bool)

(assert (=> b!1458924 (= e!820564 (not e!820557))))

(declare-fun res!989036 () Bool)

(assert (=> b!1458924 (=> res!989036 e!820557)))

(assert (=> b!1458924 (= res!989036 (or (and (= (select (arr!47568 a!2862) index!646) (select (store (arr!47568 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47568 a!2862) index!646) (select (arr!47568 a!2862) j!93))) (= (select (arr!47568 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458924 (and (= lt!639203 (Found!11843 j!93)) (or (= (select (arr!47568 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47568 a!2862) intermediateBeforeIndex!19) (select (arr!47568 a!2862) j!93))) (let ((bdg!53469 (select (store (arr!47568 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47568 a!2862) index!646) bdg!53469) (= (select (arr!47568 a!2862) index!646) (select (arr!47568 a!2862) j!93))) (= (select (arr!47568 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53469 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1458924 (= lt!639203 (seekEntryOrOpen!0 (select (arr!47568 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1458924 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639200 () Unit!49130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49130)

(assert (=> b!1458924 (= lt!639200 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458925 () Bool)

(assert (=> b!1458925 (= e!820559 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639202 lt!639204 mask!2687) (seekEntryOrOpen!0 lt!639202 lt!639204 mask!2687)))))

(assert (= (and start!125204 res!989046) b!1458915))

(assert (= (and b!1458915 res!989034) b!1458918))

(assert (= (and b!1458918 res!989047) b!1458920))

(assert (= (and b!1458920 res!989049) b!1458909))

(assert (= (and b!1458909 res!989037) b!1458908))

(assert (= (and b!1458908 res!989041) b!1458906))

(assert (= (and b!1458906 res!989045) b!1458914))

(assert (= (and b!1458914 res!989044) b!1458917))

(assert (= (and b!1458917 res!989038) b!1458911))

(assert (= (and b!1458911 res!989033) b!1458904))

(assert (= (and b!1458904 res!989043) b!1458910))

(assert (= (and b!1458910 c!134449) b!1458913))

(assert (= (and b!1458910 (not c!134449)) b!1458925))

(assert (= (and b!1458910 res!989035) b!1458907))

(assert (= (and b!1458907 res!989048) b!1458924))

(assert (= (and b!1458924 (not res!989036)) b!1458922))

(assert (= (and b!1458922 (not res!989040)) b!1458923))

(assert (= (and b!1458923 (not res!989039)) b!1458916))

(assert (= (and b!1458916 c!134450) b!1458919))

(assert (= (and b!1458916 (not c!134450)) b!1458912))

(assert (= (and b!1458916 (not res!989042)) b!1458921))

(assert (= (and b!1458921 (not res!989032)) b!1458905))

(declare-fun m!1346763 () Bool)

(assert (=> b!1458917 m!1346763))

(assert (=> b!1458917 m!1346763))

(declare-fun m!1346765 () Bool)

(assert (=> b!1458917 m!1346765))

(assert (=> b!1458917 m!1346765))

(assert (=> b!1458917 m!1346763))

(declare-fun m!1346767 () Bool)

(assert (=> b!1458917 m!1346767))

(declare-fun m!1346769 () Bool)

(assert (=> b!1458922 m!1346769))

(declare-fun m!1346771 () Bool)

(assert (=> b!1458922 m!1346771))

(declare-fun m!1346773 () Bool)

(assert (=> b!1458922 m!1346773))

(declare-fun m!1346775 () Bool)

(assert (=> b!1458912 m!1346775))

(declare-fun m!1346777 () Bool)

(assert (=> b!1458918 m!1346777))

(assert (=> b!1458918 m!1346777))

(declare-fun m!1346779 () Bool)

(assert (=> b!1458918 m!1346779))

(declare-fun m!1346781 () Bool)

(assert (=> b!1458913 m!1346781))

(assert (=> b!1458925 m!1346771))

(assert (=> b!1458925 m!1346773))

(declare-fun m!1346783 () Bool)

(assert (=> b!1458905 m!1346783))

(declare-fun m!1346785 () Bool)

(assert (=> b!1458914 m!1346785))

(declare-fun m!1346787 () Bool)

(assert (=> b!1458914 m!1346787))

(declare-fun m!1346789 () Bool)

(assert (=> start!125204 m!1346789))

(declare-fun m!1346791 () Bool)

(assert (=> start!125204 m!1346791))

(declare-fun m!1346793 () Bool)

(assert (=> b!1458909 m!1346793))

(declare-fun m!1346795 () Bool)

(assert (=> b!1458908 m!1346795))

(declare-fun m!1346797 () Bool)

(assert (=> b!1458904 m!1346797))

(assert (=> b!1458904 m!1346797))

(declare-fun m!1346799 () Bool)

(assert (=> b!1458904 m!1346799))

(assert (=> b!1458904 m!1346785))

(declare-fun m!1346801 () Bool)

(assert (=> b!1458904 m!1346801))

(assert (=> b!1458911 m!1346763))

(assert (=> b!1458911 m!1346763))

(declare-fun m!1346803 () Bool)

(assert (=> b!1458911 m!1346803))

(assert (=> b!1458923 m!1346763))

(assert (=> b!1458923 m!1346763))

(declare-fun m!1346805 () Bool)

(assert (=> b!1458923 m!1346805))

(declare-fun m!1346807 () Bool)

(assert (=> b!1458919 m!1346807))

(assert (=> b!1458920 m!1346763))

(assert (=> b!1458920 m!1346763))

(declare-fun m!1346809 () Bool)

(assert (=> b!1458920 m!1346809))

(declare-fun m!1346811 () Bool)

(assert (=> b!1458924 m!1346811))

(assert (=> b!1458924 m!1346785))

(declare-fun m!1346813 () Bool)

(assert (=> b!1458924 m!1346813))

(declare-fun m!1346815 () Bool)

(assert (=> b!1458924 m!1346815))

(declare-fun m!1346817 () Bool)

(assert (=> b!1458924 m!1346817))

(assert (=> b!1458924 m!1346763))

(declare-fun m!1346819 () Bool)

(assert (=> b!1458924 m!1346819))

(declare-fun m!1346821 () Bool)

(assert (=> b!1458924 m!1346821))

(assert (=> b!1458924 m!1346763))

(push 1)

(assert (not b!1458923))

(assert (not b!1458919))

(assert (not b!1458918))

(assert (not b!1458912))

(assert (not b!1458913))

