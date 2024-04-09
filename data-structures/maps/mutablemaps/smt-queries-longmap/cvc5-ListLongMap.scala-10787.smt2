; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126262 () Bool)

(assert start!126262)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!829569 () Bool)

(declare-fun lt!645783 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1478835 () Bool)

(declare-datatypes ((array!99285 0))(
  ( (array!99286 (arr!47917 (Array (_ BitVec 32) (_ BitVec 64))) (size!48468 (_ BitVec 32))) )
))
(declare-fun lt!645780 () array!99285)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12180 0))(
  ( (MissingZero!12180 (index!51111 (_ BitVec 32))) (Found!12180 (index!51112 (_ BitVec 32))) (Intermediate!12180 (undefined!12992 Bool) (index!51113 (_ BitVec 32)) (x!132702 (_ BitVec 32))) (Undefined!12180) (MissingVacant!12180 (index!51114 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99285 (_ BitVec 32)) SeekEntryResult!12180)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99285 (_ BitVec 32)) SeekEntryResult!12180)

(assert (=> b!1478835 (= e!829569 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645783 lt!645780 mask!2687) (seekEntryOrOpen!0 lt!645783 lt!645780 mask!2687)))))

(declare-fun b!1478836 () Bool)

(declare-fun res!1004904 () Bool)

(declare-fun e!829572 () Bool)

(assert (=> b!1478836 (=> (not res!1004904) (not e!829572))))

(declare-fun lt!645782 () SeekEntryResult!12180)

(declare-fun a!2862 () array!99285)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99285 (_ BitVec 32)) SeekEntryResult!12180)

(assert (=> b!1478836 (= res!1004904 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47917 a!2862) j!93) a!2862 mask!2687) lt!645782))))

(declare-fun b!1478837 () Bool)

(declare-fun res!1004908 () Bool)

(declare-fun e!829574 () Bool)

(assert (=> b!1478837 (=> (not res!1004908) (not e!829574))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478837 (= res!1004908 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48468 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48468 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48468 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478838 () Bool)

(declare-fun res!1004906 () Bool)

(assert (=> b!1478838 (=> (not res!1004906) (not e!829574))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1478838 (= res!1004906 (and (= (size!48468 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48468 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48468 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478839 () Bool)

(declare-fun e!829568 () Bool)

(declare-fun e!829571 () Bool)

(assert (=> b!1478839 (= e!829568 e!829571)))

(declare-fun res!1004907 () Bool)

(assert (=> b!1478839 (=> res!1004907 e!829571)))

(assert (=> b!1478839 (= res!1004907 (or (and (= (select (arr!47917 a!2862) index!646) (select (store (arr!47917 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47917 a!2862) index!646) (select (arr!47917 a!2862) j!93))) (not (= (select (arr!47917 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478840 () Bool)

(declare-fun res!1004910 () Bool)

(assert (=> b!1478840 (=> (not res!1004910) (not e!829574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99285 (_ BitVec 32)) Bool)

(assert (=> b!1478840 (= res!1004910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478841 () Bool)

(declare-fun res!1004917 () Bool)

(assert (=> b!1478841 (=> (not res!1004917) (not e!829574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478841 (= res!1004917 (validKeyInArray!0 (select (arr!47917 a!2862) i!1006)))))

(declare-fun b!1478842 () Bool)

(declare-fun res!1004915 () Bool)

(assert (=> b!1478842 (=> (not res!1004915) (not e!829574))))

(declare-datatypes ((List!34598 0))(
  ( (Nil!34595) (Cons!34594 (h!35962 (_ BitVec 64)) (t!49299 List!34598)) )
))
(declare-fun arrayNoDuplicates!0 (array!99285 (_ BitVec 32) List!34598) Bool)

(assert (=> b!1478842 (= res!1004915 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34595))))

(declare-fun b!1478834 () Bool)

(declare-fun e!829573 () Bool)

(assert (=> b!1478834 (= e!829571 e!829573)))

(declare-fun res!1004911 () Bool)

(assert (=> b!1478834 (=> (not res!1004911) (not e!829573))))

(declare-fun lt!645784 () SeekEntryResult!12180)

(assert (=> b!1478834 (= res!1004911 (= lt!645784 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47917 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1004905 () Bool)

(assert (=> start!126262 (=> (not res!1004905) (not e!829574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126262 (= res!1004905 (validMask!0 mask!2687))))

(assert (=> start!126262 e!829574))

(assert (=> start!126262 true))

(declare-fun array_inv!36862 (array!99285) Bool)

(assert (=> start!126262 (array_inv!36862 a!2862)))

(declare-fun b!1478843 () Bool)

(declare-fun e!829566 () Bool)

(assert (=> b!1478843 (= e!829572 e!829566)))

(declare-fun res!1004909 () Bool)

(assert (=> b!1478843 (=> (not res!1004909) (not e!829566))))

(declare-fun lt!645781 () SeekEntryResult!12180)

(assert (=> b!1478843 (= res!1004909 (= lt!645781 (Intermediate!12180 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478843 (= lt!645781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645783 mask!2687) lt!645783 lt!645780 mask!2687))))

(assert (=> b!1478843 (= lt!645783 (select (store (arr!47917 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478844 () Bool)

(declare-fun res!1004912 () Bool)

(assert (=> b!1478844 (=> (not res!1004912) (not e!829566))))

(assert (=> b!1478844 (= res!1004912 e!829569)))

(declare-fun c!136487 () Bool)

(assert (=> b!1478844 (= c!136487 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478845 () Bool)

(declare-fun e!829567 () Bool)

(assert (=> b!1478845 (= e!829574 e!829567)))

(declare-fun res!1004919 () Bool)

(assert (=> b!1478845 (=> (not res!1004919) (not e!829567))))

(assert (=> b!1478845 (= res!1004919 (= (select (store (arr!47917 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478845 (= lt!645780 (array!99286 (store (arr!47917 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48468 a!2862)))))

(declare-fun b!1478846 () Bool)

(assert (=> b!1478846 (= e!829573 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478847 () Bool)

(declare-fun res!1004914 () Bool)

(assert (=> b!1478847 (=> (not res!1004914) (not e!829574))))

(assert (=> b!1478847 (= res!1004914 (validKeyInArray!0 (select (arr!47917 a!2862) j!93)))))

(declare-fun b!1478848 () Bool)

(declare-fun res!1004916 () Bool)

(assert (=> b!1478848 (=> (not res!1004916) (not e!829566))))

(assert (=> b!1478848 (= res!1004916 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478849 () Bool)

(assert (=> b!1478849 (= e!829567 e!829572)))

(declare-fun res!1004918 () Bool)

(assert (=> b!1478849 (=> (not res!1004918) (not e!829572))))

(assert (=> b!1478849 (= res!1004918 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47917 a!2862) j!93) mask!2687) (select (arr!47917 a!2862) j!93) a!2862 mask!2687) lt!645782))))

(assert (=> b!1478849 (= lt!645782 (Intermediate!12180 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478850 () Bool)

(assert (=> b!1478850 (= e!829569 (= lt!645781 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645783 lt!645780 mask!2687)))))

(declare-fun b!1478851 () Bool)

(assert (=> b!1478851 (= e!829566 (not true))))

(assert (=> b!1478851 e!829568))

(declare-fun res!1004913 () Bool)

(assert (=> b!1478851 (=> (not res!1004913) (not e!829568))))

(assert (=> b!1478851 (= res!1004913 (and (= lt!645784 (Found!12180 j!93)) (or (= (select (arr!47917 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47917 a!2862) intermediateBeforeIndex!19) (select (arr!47917 a!2862) j!93)))))))

(assert (=> b!1478851 (= lt!645784 (seekEntryOrOpen!0 (select (arr!47917 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478851 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49648 0))(
  ( (Unit!49649) )
))
(declare-fun lt!645779 () Unit!49648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49648)

(assert (=> b!1478851 (= lt!645779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126262 res!1004905) b!1478838))

(assert (= (and b!1478838 res!1004906) b!1478841))

(assert (= (and b!1478841 res!1004917) b!1478847))

(assert (= (and b!1478847 res!1004914) b!1478840))

(assert (= (and b!1478840 res!1004910) b!1478842))

(assert (= (and b!1478842 res!1004915) b!1478837))

(assert (= (and b!1478837 res!1004908) b!1478845))

(assert (= (and b!1478845 res!1004919) b!1478849))

(assert (= (and b!1478849 res!1004918) b!1478836))

(assert (= (and b!1478836 res!1004904) b!1478843))

(assert (= (and b!1478843 res!1004909) b!1478844))

(assert (= (and b!1478844 c!136487) b!1478850))

(assert (= (and b!1478844 (not c!136487)) b!1478835))

(assert (= (and b!1478844 res!1004912) b!1478848))

(assert (= (and b!1478848 res!1004916) b!1478851))

(assert (= (and b!1478851 res!1004913) b!1478839))

(assert (= (and b!1478839 (not res!1004907)) b!1478834))

(assert (= (and b!1478834 res!1004911) b!1478846))

(declare-fun m!1364787 () Bool)

(assert (=> b!1478840 m!1364787))

(declare-fun m!1364789 () Bool)

(assert (=> b!1478835 m!1364789))

(declare-fun m!1364791 () Bool)

(assert (=> b!1478835 m!1364791))

(declare-fun m!1364793 () Bool)

(assert (=> b!1478845 m!1364793))

(declare-fun m!1364795 () Bool)

(assert (=> b!1478845 m!1364795))

(declare-fun m!1364797 () Bool)

(assert (=> b!1478834 m!1364797))

(assert (=> b!1478834 m!1364797))

(declare-fun m!1364799 () Bool)

(assert (=> b!1478834 m!1364799))

(declare-fun m!1364801 () Bool)

(assert (=> b!1478842 m!1364801))

(assert (=> b!1478849 m!1364797))

(assert (=> b!1478849 m!1364797))

(declare-fun m!1364803 () Bool)

(assert (=> b!1478849 m!1364803))

(assert (=> b!1478849 m!1364803))

(assert (=> b!1478849 m!1364797))

(declare-fun m!1364805 () Bool)

(assert (=> b!1478849 m!1364805))

(declare-fun m!1364807 () Bool)

(assert (=> b!1478843 m!1364807))

(assert (=> b!1478843 m!1364807))

(declare-fun m!1364809 () Bool)

(assert (=> b!1478843 m!1364809))

(assert (=> b!1478843 m!1364793))

(declare-fun m!1364811 () Bool)

(assert (=> b!1478843 m!1364811))

(assert (=> b!1478847 m!1364797))

(assert (=> b!1478847 m!1364797))

(declare-fun m!1364813 () Bool)

(assert (=> b!1478847 m!1364813))

(declare-fun m!1364815 () Bool)

(assert (=> b!1478841 m!1364815))

(assert (=> b!1478841 m!1364815))

(declare-fun m!1364817 () Bool)

(assert (=> b!1478841 m!1364817))

(declare-fun m!1364819 () Bool)

(assert (=> b!1478839 m!1364819))

(assert (=> b!1478839 m!1364793))

(declare-fun m!1364821 () Bool)

(assert (=> b!1478839 m!1364821))

(assert (=> b!1478839 m!1364797))

(declare-fun m!1364823 () Bool)

(assert (=> b!1478850 m!1364823))

(assert (=> b!1478836 m!1364797))

(assert (=> b!1478836 m!1364797))

(declare-fun m!1364825 () Bool)

(assert (=> b!1478836 m!1364825))

(declare-fun m!1364827 () Bool)

(assert (=> start!126262 m!1364827))

(declare-fun m!1364829 () Bool)

(assert (=> start!126262 m!1364829))

(declare-fun m!1364831 () Bool)

(assert (=> b!1478851 m!1364831))

(declare-fun m!1364833 () Bool)

(assert (=> b!1478851 m!1364833))

(assert (=> b!1478851 m!1364797))

(declare-fun m!1364835 () Bool)

(assert (=> b!1478851 m!1364835))

(declare-fun m!1364837 () Bool)

(assert (=> b!1478851 m!1364837))

(assert (=> b!1478851 m!1364797))

(push 1)

