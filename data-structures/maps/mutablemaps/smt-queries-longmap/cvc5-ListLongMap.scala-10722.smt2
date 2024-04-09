; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125512 () Bool)

(assert start!125512)

(declare-fun b!1467773 () Bool)

(declare-fun res!996421 () Bool)

(declare-fun e!824371 () Bool)

(assert (=> b!1467773 (=> (not res!996421) (not e!824371))))

(declare-datatypes ((array!98877 0))(
  ( (array!98878 (arr!47722 (Array (_ BitVec 32) (_ BitVec 64))) (size!48273 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98877)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467773 (= res!996421 (validKeyInArray!0 (select (arr!47722 a!2862) j!93)))))

(declare-fun b!1467774 () Bool)

(declare-fun e!824370 () Bool)

(assert (=> b!1467774 (= e!824371 e!824370)))

(declare-fun res!996428 () Bool)

(assert (=> b!1467774 (=> (not res!996428) (not e!824370))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11985 0))(
  ( (MissingZero!11985 (index!50331 (_ BitVec 32))) (Found!11985 (index!50332 (_ BitVec 32))) (Intermediate!11985 (undefined!12797 Bool) (index!50333 (_ BitVec 32)) (x!131933 (_ BitVec 32))) (Undefined!11985) (MissingVacant!11985 (index!50334 (_ BitVec 32))) )
))
(declare-fun lt!642100 () SeekEntryResult!11985)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98877 (_ BitVec 32)) SeekEntryResult!11985)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467774 (= res!996428 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47722 a!2862) j!93) mask!2687) (select (arr!47722 a!2862) j!93) a!2862 mask!2687) lt!642100))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467774 (= lt!642100 (Intermediate!11985 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467776 () Bool)

(declare-fun res!996429 () Bool)

(assert (=> b!1467776 (=> (not res!996429) (not e!824371))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467776 (= res!996429 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48273 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48273 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48273 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47722 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467777 () Bool)

(declare-fun res!996423 () Bool)

(assert (=> b!1467777 (=> (not res!996423) (not e!824371))))

(assert (=> b!1467777 (= res!996423 (and (= (size!48273 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48273 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48273 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467778 () Bool)

(declare-fun res!996425 () Bool)

(assert (=> b!1467778 (=> (not res!996425) (not e!824371))))

(assert (=> b!1467778 (= res!996425 (validKeyInArray!0 (select (arr!47722 a!2862) i!1006)))))

(declare-fun b!1467779 () Bool)

(declare-fun res!996422 () Bool)

(assert (=> b!1467779 (=> (not res!996422) (not e!824371))))

(declare-datatypes ((List!34403 0))(
  ( (Nil!34400) (Cons!34399 (h!35749 (_ BitVec 64)) (t!49104 List!34403)) )
))
(declare-fun arrayNoDuplicates!0 (array!98877 (_ BitVec 32) List!34403) Bool)

(assert (=> b!1467779 (= res!996422 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34400))))

(declare-fun res!996426 () Bool)

(assert (=> start!125512 (=> (not res!996426) (not e!824371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125512 (= res!996426 (validMask!0 mask!2687))))

(assert (=> start!125512 e!824371))

(assert (=> start!125512 true))

(declare-fun array_inv!36667 (array!98877) Bool)

(assert (=> start!125512 (array_inv!36667 a!2862)))

(declare-fun b!1467775 () Bool)

(declare-fun res!996427 () Bool)

(assert (=> b!1467775 (=> (not res!996427) (not e!824371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98877 (_ BitVec 32)) Bool)

(assert (=> b!1467775 (= res!996427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467780 () Bool)

(assert (=> b!1467780 (= e!824370 false)))

(declare-fun lt!642099 () (_ BitVec 32))

(assert (=> b!1467780 (= lt!642099 (toIndex!0 (select (store (arr!47722 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1467781 () Bool)

(declare-fun res!996424 () Bool)

(assert (=> b!1467781 (=> (not res!996424) (not e!824370))))

(assert (=> b!1467781 (= res!996424 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47722 a!2862) j!93) a!2862 mask!2687) lt!642100))))

(assert (= (and start!125512 res!996426) b!1467777))

(assert (= (and b!1467777 res!996423) b!1467778))

(assert (= (and b!1467778 res!996425) b!1467773))

(assert (= (and b!1467773 res!996421) b!1467775))

(assert (= (and b!1467775 res!996427) b!1467779))

(assert (= (and b!1467779 res!996422) b!1467776))

(assert (= (and b!1467776 res!996429) b!1467774))

(assert (= (and b!1467774 res!996428) b!1467781))

(assert (= (and b!1467781 res!996424) b!1467780))

(declare-fun m!1354797 () Bool)

(assert (=> b!1467775 m!1354797))

(declare-fun m!1354799 () Bool)

(assert (=> start!125512 m!1354799))

(declare-fun m!1354801 () Bool)

(assert (=> start!125512 m!1354801))

(declare-fun m!1354803 () Bool)

(assert (=> b!1467778 m!1354803))

(assert (=> b!1467778 m!1354803))

(declare-fun m!1354805 () Bool)

(assert (=> b!1467778 m!1354805))

(declare-fun m!1354807 () Bool)

(assert (=> b!1467776 m!1354807))

(declare-fun m!1354809 () Bool)

(assert (=> b!1467776 m!1354809))

(declare-fun m!1354811 () Bool)

(assert (=> b!1467779 m!1354811))

(assert (=> b!1467780 m!1354807))

(declare-fun m!1354813 () Bool)

(assert (=> b!1467780 m!1354813))

(assert (=> b!1467780 m!1354813))

(declare-fun m!1354815 () Bool)

(assert (=> b!1467780 m!1354815))

(declare-fun m!1354817 () Bool)

(assert (=> b!1467774 m!1354817))

(assert (=> b!1467774 m!1354817))

(declare-fun m!1354819 () Bool)

(assert (=> b!1467774 m!1354819))

(assert (=> b!1467774 m!1354819))

(assert (=> b!1467774 m!1354817))

(declare-fun m!1354821 () Bool)

(assert (=> b!1467774 m!1354821))

(assert (=> b!1467781 m!1354817))

(assert (=> b!1467781 m!1354817))

(declare-fun m!1354823 () Bool)

(assert (=> b!1467781 m!1354823))

(assert (=> b!1467773 m!1354817))

(assert (=> b!1467773 m!1354817))

(declare-fun m!1354825 () Bool)

(assert (=> b!1467773 m!1354825))

(push 1)

