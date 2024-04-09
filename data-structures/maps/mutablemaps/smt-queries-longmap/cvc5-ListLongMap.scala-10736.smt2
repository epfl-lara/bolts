; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125596 () Bool)

(assert start!125596)

(declare-fun b!1468907 () Bool)

(declare-fun res!997562 () Bool)

(declare-fun e!824750 () Bool)

(assert (=> b!1468907 (=> (not res!997562) (not e!824750))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98961 0))(
  ( (array!98962 (arr!47764 (Array (_ BitVec 32) (_ BitVec 64))) (size!48315 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98961)

(assert (=> b!1468907 (= res!997562 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48315 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48315 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48315 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47764 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468908 () Bool)

(declare-fun e!824748 () Bool)

(assert (=> b!1468908 (= e!824750 e!824748)))

(declare-fun res!997557 () Bool)

(assert (=> b!1468908 (=> (not res!997557) (not e!824748))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12027 0))(
  ( (MissingZero!12027 (index!50499 (_ BitVec 32))) (Found!12027 (index!50500 (_ BitVec 32))) (Intermediate!12027 (undefined!12839 Bool) (index!50501 (_ BitVec 32)) (x!132087 (_ BitVec 32))) (Undefined!12027) (MissingVacant!12027 (index!50502 (_ BitVec 32))) )
))
(declare-fun lt!642351 () SeekEntryResult!12027)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98961 (_ BitVec 32)) SeekEntryResult!12027)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468908 (= res!997557 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47764 a!2862) j!93) mask!2687) (select (arr!47764 a!2862) j!93) a!2862 mask!2687) lt!642351))))

(assert (=> b!1468908 (= lt!642351 (Intermediate!12027 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468909 () Bool)

(declare-fun res!997561 () Bool)

(assert (=> b!1468909 (=> (not res!997561) (not e!824750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468909 (= res!997561 (validKeyInArray!0 (select (arr!47764 a!2862) j!93)))))

(declare-fun b!1468910 () Bool)

(declare-fun res!997555 () Bool)

(assert (=> b!1468910 (=> (not res!997555) (not e!824748))))

(assert (=> b!1468910 (= res!997555 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47764 a!2862) j!93) a!2862 mask!2687) lt!642351))))

(declare-fun res!997558 () Bool)

(assert (=> start!125596 (=> (not res!997558) (not e!824750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125596 (= res!997558 (validMask!0 mask!2687))))

(assert (=> start!125596 e!824750))

(assert (=> start!125596 true))

(declare-fun array_inv!36709 (array!98961) Bool)

(assert (=> start!125596 (array_inv!36709 a!2862)))

(declare-fun b!1468911 () Bool)

(declare-fun res!997563 () Bool)

(assert (=> b!1468911 (=> (not res!997563) (not e!824750))))

(assert (=> b!1468911 (= res!997563 (validKeyInArray!0 (select (arr!47764 a!2862) i!1006)))))

(declare-fun b!1468912 () Bool)

(declare-fun res!997556 () Bool)

(assert (=> b!1468912 (=> (not res!997556) (not e!824750))))

(assert (=> b!1468912 (= res!997556 (and (= (size!48315 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48315 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48315 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468913 () Bool)

(assert (=> b!1468913 (= e!824748 false)))

(declare-fun lt!642352 () SeekEntryResult!12027)

(assert (=> b!1468913 (= lt!642352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47764 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47764 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98962 (store (arr!47764 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48315 a!2862)) mask!2687))))

(declare-fun b!1468914 () Bool)

(declare-fun res!997559 () Bool)

(assert (=> b!1468914 (=> (not res!997559) (not e!824750))))

(declare-datatypes ((List!34445 0))(
  ( (Nil!34442) (Cons!34441 (h!35791 (_ BitVec 64)) (t!49146 List!34445)) )
))
(declare-fun arrayNoDuplicates!0 (array!98961 (_ BitVec 32) List!34445) Bool)

(assert (=> b!1468914 (= res!997559 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34442))))

(declare-fun b!1468915 () Bool)

(declare-fun res!997560 () Bool)

(assert (=> b!1468915 (=> (not res!997560) (not e!824750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98961 (_ BitVec 32)) Bool)

(assert (=> b!1468915 (= res!997560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125596 res!997558) b!1468912))

(assert (= (and b!1468912 res!997556) b!1468911))

(assert (= (and b!1468911 res!997563) b!1468909))

(assert (= (and b!1468909 res!997561) b!1468915))

(assert (= (and b!1468915 res!997560) b!1468914))

(assert (= (and b!1468914 res!997559) b!1468907))

(assert (= (and b!1468907 res!997562) b!1468908))

(assert (= (and b!1468908 res!997557) b!1468910))

(assert (= (and b!1468910 res!997555) b!1468913))

(declare-fun m!1356129 () Bool)

(assert (=> b!1468913 m!1356129))

(declare-fun m!1356131 () Bool)

(assert (=> b!1468913 m!1356131))

(assert (=> b!1468913 m!1356131))

(declare-fun m!1356133 () Bool)

(assert (=> b!1468913 m!1356133))

(assert (=> b!1468913 m!1356133))

(assert (=> b!1468913 m!1356131))

(declare-fun m!1356135 () Bool)

(assert (=> b!1468913 m!1356135))

(declare-fun m!1356137 () Bool)

(assert (=> b!1468914 m!1356137))

(declare-fun m!1356139 () Bool)

(assert (=> start!125596 m!1356139))

(declare-fun m!1356141 () Bool)

(assert (=> start!125596 m!1356141))

(declare-fun m!1356143 () Bool)

(assert (=> b!1468911 m!1356143))

(assert (=> b!1468911 m!1356143))

(declare-fun m!1356145 () Bool)

(assert (=> b!1468911 m!1356145))

(assert (=> b!1468907 m!1356129))

(declare-fun m!1356147 () Bool)

(assert (=> b!1468907 m!1356147))

(declare-fun m!1356149 () Bool)

(assert (=> b!1468909 m!1356149))

(assert (=> b!1468909 m!1356149))

(declare-fun m!1356151 () Bool)

(assert (=> b!1468909 m!1356151))

(assert (=> b!1468908 m!1356149))

(assert (=> b!1468908 m!1356149))

(declare-fun m!1356153 () Bool)

(assert (=> b!1468908 m!1356153))

(assert (=> b!1468908 m!1356153))

(assert (=> b!1468908 m!1356149))

(declare-fun m!1356155 () Bool)

(assert (=> b!1468908 m!1356155))

(declare-fun m!1356157 () Bool)

(assert (=> b!1468915 m!1356157))

(assert (=> b!1468910 m!1356149))

(assert (=> b!1468910 m!1356149))

(declare-fun m!1356159 () Bool)

(assert (=> b!1468910 m!1356159))

(push 1)

