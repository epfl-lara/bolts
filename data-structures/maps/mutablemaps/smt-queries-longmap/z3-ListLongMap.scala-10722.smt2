; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125514 () Bool)

(assert start!125514)

(declare-fun b!1467800 () Bool)

(declare-fun res!996452 () Bool)

(declare-fun e!824380 () Bool)

(assert (=> b!1467800 (=> (not res!996452) (not e!824380))))

(declare-datatypes ((array!98879 0))(
  ( (array!98880 (arr!47723 (Array (_ BitVec 32) (_ BitVec 64))) (size!48274 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98879)

(declare-datatypes ((List!34404 0))(
  ( (Nil!34401) (Cons!34400 (h!35750 (_ BitVec 64)) (t!49105 List!34404)) )
))
(declare-fun arrayNoDuplicates!0 (array!98879 (_ BitVec 32) List!34404) Bool)

(assert (=> b!1467800 (= res!996452 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34401))))

(declare-fun b!1467801 () Bool)

(declare-fun e!824381 () Bool)

(assert (=> b!1467801 (= e!824380 e!824381)))

(declare-fun res!996448 () Bool)

(assert (=> b!1467801 (=> (not res!996448) (not e!824381))))

(declare-datatypes ((SeekEntryResult!11986 0))(
  ( (MissingZero!11986 (index!50335 (_ BitVec 32))) (Found!11986 (index!50336 (_ BitVec 32))) (Intermediate!11986 (undefined!12798 Bool) (index!50337 (_ BitVec 32)) (x!131934 (_ BitVec 32))) (Undefined!11986) (MissingVacant!11986 (index!50338 (_ BitVec 32))) )
))
(declare-fun lt!642106 () SeekEntryResult!11986)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98879 (_ BitVec 32)) SeekEntryResult!11986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467801 (= res!996448 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47723 a!2862) j!93) mask!2687) (select (arr!47723 a!2862) j!93) a!2862 mask!2687) lt!642106))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467801 (= lt!642106 (Intermediate!11986 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467802 () Bool)

(declare-fun res!996449 () Bool)

(assert (=> b!1467802 (=> (not res!996449) (not e!824380))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467802 (= res!996449 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48274 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48274 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48274 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47723 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467803 () Bool)

(declare-fun res!996451 () Bool)

(assert (=> b!1467803 (=> (not res!996451) (not e!824381))))

(assert (=> b!1467803 (= res!996451 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47723 a!2862) j!93) a!2862 mask!2687) lt!642106))))

(declare-fun b!1467804 () Bool)

(declare-fun res!996454 () Bool)

(assert (=> b!1467804 (=> (not res!996454) (not e!824380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467804 (= res!996454 (validKeyInArray!0 (select (arr!47723 a!2862) i!1006)))))

(declare-fun b!1467805 () Bool)

(declare-fun res!996456 () Bool)

(assert (=> b!1467805 (=> (not res!996456) (not e!824380))))

(assert (=> b!1467805 (= res!996456 (and (= (size!48274 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48274 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48274 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467806 () Bool)

(declare-fun res!996450 () Bool)

(assert (=> b!1467806 (=> (not res!996450) (not e!824380))))

(assert (=> b!1467806 (= res!996450 (validKeyInArray!0 (select (arr!47723 a!2862) j!93)))))

(declare-fun b!1467807 () Bool)

(assert (=> b!1467807 (= e!824381 false)))

(declare-fun lt!642105 () (_ BitVec 32))

(assert (=> b!1467807 (= lt!642105 (toIndex!0 (select (store (arr!47723 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1467808 () Bool)

(declare-fun res!996453 () Bool)

(assert (=> b!1467808 (=> (not res!996453) (not e!824380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98879 (_ BitVec 32)) Bool)

(assert (=> b!1467808 (= res!996453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996455 () Bool)

(assert (=> start!125514 (=> (not res!996455) (not e!824380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125514 (= res!996455 (validMask!0 mask!2687))))

(assert (=> start!125514 e!824380))

(assert (=> start!125514 true))

(declare-fun array_inv!36668 (array!98879) Bool)

(assert (=> start!125514 (array_inv!36668 a!2862)))

(assert (= (and start!125514 res!996455) b!1467805))

(assert (= (and b!1467805 res!996456) b!1467804))

(assert (= (and b!1467804 res!996454) b!1467806))

(assert (= (and b!1467806 res!996450) b!1467808))

(assert (= (and b!1467808 res!996453) b!1467800))

(assert (= (and b!1467800 res!996452) b!1467802))

(assert (= (and b!1467802 res!996449) b!1467801))

(assert (= (and b!1467801 res!996448) b!1467803))

(assert (= (and b!1467803 res!996451) b!1467807))

(declare-fun m!1354827 () Bool)

(assert (=> b!1467803 m!1354827))

(assert (=> b!1467803 m!1354827))

(declare-fun m!1354829 () Bool)

(assert (=> b!1467803 m!1354829))

(declare-fun m!1354831 () Bool)

(assert (=> b!1467800 m!1354831))

(declare-fun m!1354833 () Bool)

(assert (=> b!1467804 m!1354833))

(assert (=> b!1467804 m!1354833))

(declare-fun m!1354835 () Bool)

(assert (=> b!1467804 m!1354835))

(declare-fun m!1354837 () Bool)

(assert (=> b!1467807 m!1354837))

(declare-fun m!1354839 () Bool)

(assert (=> b!1467807 m!1354839))

(assert (=> b!1467807 m!1354839))

(declare-fun m!1354841 () Bool)

(assert (=> b!1467807 m!1354841))

(assert (=> b!1467806 m!1354827))

(assert (=> b!1467806 m!1354827))

(declare-fun m!1354843 () Bool)

(assert (=> b!1467806 m!1354843))

(declare-fun m!1354845 () Bool)

(assert (=> b!1467808 m!1354845))

(assert (=> b!1467801 m!1354827))

(assert (=> b!1467801 m!1354827))

(declare-fun m!1354847 () Bool)

(assert (=> b!1467801 m!1354847))

(assert (=> b!1467801 m!1354847))

(assert (=> b!1467801 m!1354827))

(declare-fun m!1354849 () Bool)

(assert (=> b!1467801 m!1354849))

(declare-fun m!1354851 () Bool)

(assert (=> start!125514 m!1354851))

(declare-fun m!1354853 () Bool)

(assert (=> start!125514 m!1354853))

(assert (=> b!1467802 m!1354837))

(declare-fun m!1354855 () Bool)

(assert (=> b!1467802 m!1354855))

(check-sat (not b!1467808) (not b!1467804) (not b!1467800) (not b!1467803) (not start!125514) (not b!1467806) (not b!1467807) (not b!1467801))
(check-sat)
