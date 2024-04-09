; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124766 () Bool)

(assert start!124766)

(declare-fun b!1445832 () Bool)

(declare-fun e!814423 () Bool)

(declare-fun e!814424 () Bool)

(assert (=> b!1445832 (= e!814423 e!814424)))

(declare-fun res!977764 () Bool)

(assert (=> b!1445832 (=> (not res!977764) (not e!814424))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98131 0))(
  ( (array!98132 (arr!47349 (Array (_ BitVec 32) (_ BitVec 64))) (size!47900 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98131)

(assert (=> b!1445832 (= res!977764 (= (select (store (arr!47349 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634576 () array!98131)

(assert (=> b!1445832 (= lt!634576 (array!98132 (store (arr!47349 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47900 a!2862)))))

(declare-fun b!1445833 () Bool)

(declare-fun res!977767 () Bool)

(assert (=> b!1445833 (=> (not res!977767) (not e!814423))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445833 (= res!977767 (validKeyInArray!0 (select (arr!47349 a!2862) j!93)))))

(declare-fun b!1445834 () Bool)

(declare-fun res!977772 () Bool)

(declare-fun e!814422 () Bool)

(assert (=> b!1445834 (=> (not res!977772) (not e!814422))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11624 0))(
  ( (MissingZero!11624 (index!48887 (_ BitVec 32))) (Found!11624 (index!48888 (_ BitVec 32))) (Intermediate!11624 (undefined!12436 Bool) (index!48889 (_ BitVec 32)) (x!130572 (_ BitVec 32))) (Undefined!11624) (MissingVacant!11624 (index!48890 (_ BitVec 32))) )
))
(declare-fun lt!634579 () SeekEntryResult!11624)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98131 (_ BitVec 32)) SeekEntryResult!11624)

(assert (=> b!1445834 (= res!977772 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47349 a!2862) j!93) a!2862 mask!2687) lt!634579))))

(declare-fun lt!634578 () (_ BitVec 64))

(declare-fun e!814421 () Bool)

(declare-fun b!1445835 () Bool)

(declare-fun lt!634577 () SeekEntryResult!11624)

(assert (=> b!1445835 (= e!814421 (= lt!634577 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634578 lt!634576 mask!2687)))))

(declare-fun b!1445836 () Bool)

(assert (=> b!1445836 (= e!814424 e!814422)))

(declare-fun res!977766 () Bool)

(assert (=> b!1445836 (=> (not res!977766) (not e!814422))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445836 (= res!977766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47349 a!2862) j!93) mask!2687) (select (arr!47349 a!2862) j!93) a!2862 mask!2687) lt!634579))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445836 (= lt!634579 (Intermediate!11624 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445837 () Bool)

(declare-fun res!977770 () Bool)

(declare-fun e!814427 () Bool)

(assert (=> b!1445837 (=> (not res!977770) (not e!814427))))

(assert (=> b!1445837 (= res!977770 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445839 () Bool)

(declare-fun res!977759 () Bool)

(assert (=> b!1445839 (=> (not res!977759) (not e!814423))))

(assert (=> b!1445839 (= res!977759 (and (= (size!47900 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47900 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47900 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445840 () Bool)

(assert (=> b!1445840 (= e!814427 (not true))))

(declare-fun e!814426 () Bool)

(assert (=> b!1445840 e!814426))

(declare-fun res!977768 () Bool)

(assert (=> b!1445840 (=> (not res!977768) (not e!814426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98131 (_ BitVec 32)) Bool)

(assert (=> b!1445840 (= res!977768 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48692 0))(
  ( (Unit!48693) )
))
(declare-fun lt!634575 () Unit!48692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48692)

(assert (=> b!1445840 (= lt!634575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445841 () Bool)

(declare-fun res!977762 () Bool)

(assert (=> b!1445841 (=> (not res!977762) (not e!814423))))

(assert (=> b!1445841 (= res!977762 (validKeyInArray!0 (select (arr!47349 a!2862) i!1006)))))

(declare-fun b!1445842 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98131 (_ BitVec 32)) SeekEntryResult!11624)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98131 (_ BitVec 32)) SeekEntryResult!11624)

(assert (=> b!1445842 (= e!814421 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634578 lt!634576 mask!2687) (seekEntryOrOpen!0 lt!634578 lt!634576 mask!2687)))))

(declare-fun b!1445843 () Bool)

(declare-fun res!977761 () Bool)

(assert (=> b!1445843 (=> (not res!977761) (not e!814423))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445843 (= res!977761 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47900 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47900 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47900 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445844 () Bool)

(declare-fun res!977765 () Bool)

(assert (=> b!1445844 (=> (not res!977765) (not e!814427))))

(assert (=> b!1445844 (= res!977765 e!814421)))

(declare-fun c!133550 () Bool)

(assert (=> b!1445844 (= c!133550 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445845 () Bool)

(assert (=> b!1445845 (= e!814422 e!814427)))

(declare-fun res!977758 () Bool)

(assert (=> b!1445845 (=> (not res!977758) (not e!814427))))

(assert (=> b!1445845 (= res!977758 (= lt!634577 (Intermediate!11624 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445845 (= lt!634577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634578 mask!2687) lt!634578 lt!634576 mask!2687))))

(assert (=> b!1445845 (= lt!634578 (select (store (arr!47349 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!977771 () Bool)

(assert (=> start!124766 (=> (not res!977771) (not e!814423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124766 (= res!977771 (validMask!0 mask!2687))))

(assert (=> start!124766 e!814423))

(assert (=> start!124766 true))

(declare-fun array_inv!36294 (array!98131) Bool)

(assert (=> start!124766 (array_inv!36294 a!2862)))

(declare-fun b!1445838 () Bool)

(assert (=> b!1445838 (= e!814426 (or (= (select (arr!47349 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47349 a!2862) intermediateBeforeIndex!19) (select (arr!47349 a!2862) j!93))))))

(declare-fun b!1445846 () Bool)

(declare-fun res!977769 () Bool)

(assert (=> b!1445846 (=> (not res!977769) (not e!814426))))

(assert (=> b!1445846 (= res!977769 (= (seekEntryOrOpen!0 (select (arr!47349 a!2862) j!93) a!2862 mask!2687) (Found!11624 j!93)))))

(declare-fun b!1445847 () Bool)

(declare-fun res!977760 () Bool)

(assert (=> b!1445847 (=> (not res!977760) (not e!814423))))

(declare-datatypes ((List!34030 0))(
  ( (Nil!34027) (Cons!34026 (h!35376 (_ BitVec 64)) (t!48731 List!34030)) )
))
(declare-fun arrayNoDuplicates!0 (array!98131 (_ BitVec 32) List!34030) Bool)

(assert (=> b!1445847 (= res!977760 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34027))))

(declare-fun b!1445848 () Bool)

(declare-fun res!977763 () Bool)

(assert (=> b!1445848 (=> (not res!977763) (not e!814423))))

(assert (=> b!1445848 (= res!977763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124766 res!977771) b!1445839))

(assert (= (and b!1445839 res!977759) b!1445841))

(assert (= (and b!1445841 res!977762) b!1445833))

(assert (= (and b!1445833 res!977767) b!1445848))

(assert (= (and b!1445848 res!977763) b!1445847))

(assert (= (and b!1445847 res!977760) b!1445843))

(assert (= (and b!1445843 res!977761) b!1445832))

(assert (= (and b!1445832 res!977764) b!1445836))

(assert (= (and b!1445836 res!977766) b!1445834))

(assert (= (and b!1445834 res!977772) b!1445845))

(assert (= (and b!1445845 res!977758) b!1445844))

(assert (= (and b!1445844 c!133550) b!1445835))

(assert (= (and b!1445844 (not c!133550)) b!1445842))

(assert (= (and b!1445844 res!977765) b!1445837))

(assert (= (and b!1445837 res!977770) b!1445840))

(assert (= (and b!1445840 res!977768) b!1445846))

(assert (= (and b!1445846 res!977769) b!1445838))

(declare-fun m!1334813 () Bool)

(assert (=> b!1445833 m!1334813))

(assert (=> b!1445833 m!1334813))

(declare-fun m!1334815 () Bool)

(assert (=> b!1445833 m!1334815))

(assert (=> b!1445834 m!1334813))

(assert (=> b!1445834 m!1334813))

(declare-fun m!1334817 () Bool)

(assert (=> b!1445834 m!1334817))

(declare-fun m!1334819 () Bool)

(assert (=> b!1445840 m!1334819))

(declare-fun m!1334821 () Bool)

(assert (=> b!1445840 m!1334821))

(declare-fun m!1334823 () Bool)

(assert (=> start!124766 m!1334823))

(declare-fun m!1334825 () Bool)

(assert (=> start!124766 m!1334825))

(declare-fun m!1334827 () Bool)

(assert (=> b!1445838 m!1334827))

(assert (=> b!1445838 m!1334813))

(declare-fun m!1334829 () Bool)

(assert (=> b!1445842 m!1334829))

(declare-fun m!1334831 () Bool)

(assert (=> b!1445842 m!1334831))

(assert (=> b!1445846 m!1334813))

(assert (=> b!1445846 m!1334813))

(declare-fun m!1334833 () Bool)

(assert (=> b!1445846 m!1334833))

(declare-fun m!1334835 () Bool)

(assert (=> b!1445832 m!1334835))

(declare-fun m!1334837 () Bool)

(assert (=> b!1445832 m!1334837))

(declare-fun m!1334839 () Bool)

(assert (=> b!1445848 m!1334839))

(declare-fun m!1334841 () Bool)

(assert (=> b!1445847 m!1334841))

(assert (=> b!1445836 m!1334813))

(assert (=> b!1445836 m!1334813))

(declare-fun m!1334843 () Bool)

(assert (=> b!1445836 m!1334843))

(assert (=> b!1445836 m!1334843))

(assert (=> b!1445836 m!1334813))

(declare-fun m!1334845 () Bool)

(assert (=> b!1445836 m!1334845))

(declare-fun m!1334847 () Bool)

(assert (=> b!1445841 m!1334847))

(assert (=> b!1445841 m!1334847))

(declare-fun m!1334849 () Bool)

(assert (=> b!1445841 m!1334849))

(declare-fun m!1334851 () Bool)

(assert (=> b!1445845 m!1334851))

(assert (=> b!1445845 m!1334851))

(declare-fun m!1334853 () Bool)

(assert (=> b!1445845 m!1334853))

(assert (=> b!1445845 m!1334835))

(declare-fun m!1334855 () Bool)

(assert (=> b!1445845 m!1334855))

(declare-fun m!1334857 () Bool)

(assert (=> b!1445835 m!1334857))

(push 1)

(assert (not b!1445833))

(assert (not b!1445835))

(assert (not b!1445841))

(assert (not b!1445846))

(assert (not b!1445834))

(assert (not b!1445840))

(assert (not b!1445836))

(assert (not b!1445842))

(assert (not b!1445845))

(assert (not start!124766))

(assert (not b!1445847))

(assert (not b!1445848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

