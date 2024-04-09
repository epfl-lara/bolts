; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125544 () Bool)

(assert start!125544)

(declare-fun b!1468205 () Bool)

(declare-fun res!996855 () Bool)

(declare-fun e!824516 () Bool)

(assert (=> b!1468205 (=> (not res!996855) (not e!824516))))

(declare-datatypes ((array!98909 0))(
  ( (array!98910 (arr!47738 (Array (_ BitVec 32) (_ BitVec 64))) (size!48289 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98909)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98909 (_ BitVec 32)) Bool)

(assert (=> b!1468205 (= res!996855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468206 () Bool)

(declare-fun res!996856 () Bool)

(assert (=> b!1468206 (=> (not res!996856) (not e!824516))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468206 (= res!996856 (validKeyInArray!0 (select (arr!47738 a!2862) i!1006)))))

(declare-fun res!996861 () Bool)

(assert (=> start!125544 (=> (not res!996861) (not e!824516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125544 (= res!996861 (validMask!0 mask!2687))))

(assert (=> start!125544 e!824516))

(assert (=> start!125544 true))

(declare-fun array_inv!36683 (array!98909) Bool)

(assert (=> start!125544 (array_inv!36683 a!2862)))

(declare-fun b!1468207 () Bool)

(declare-fun res!996857 () Bool)

(assert (=> b!1468207 (=> (not res!996857) (not e!824516))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1468207 (= res!996857 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48289 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48289 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48289 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47738 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468208 () Bool)

(declare-fun res!996859 () Bool)

(assert (=> b!1468208 (=> (not res!996859) (not e!824516))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468208 (= res!996859 (and (= (size!48289 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48289 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48289 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468209 () Bool)

(declare-fun res!996860 () Bool)

(assert (=> b!1468209 (=> (not res!996860) (not e!824516))))

(assert (=> b!1468209 (= res!996860 (validKeyInArray!0 (select (arr!47738 a!2862) j!93)))))

(declare-fun b!1468210 () Bool)

(declare-fun res!996858 () Bool)

(declare-fun e!824515 () Bool)

(assert (=> b!1468210 (=> (not res!996858) (not e!824515))))

(declare-datatypes ((SeekEntryResult!12001 0))(
  ( (MissingZero!12001 (index!50395 (_ BitVec 32))) (Found!12001 (index!50396 (_ BitVec 32))) (Intermediate!12001 (undefined!12813 Bool) (index!50397 (_ BitVec 32)) (x!131989 (_ BitVec 32))) (Undefined!12001) (MissingVacant!12001 (index!50398 (_ BitVec 32))) )
))
(declare-fun lt!642195 () SeekEntryResult!12001)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98909 (_ BitVec 32)) SeekEntryResult!12001)

(assert (=> b!1468210 (= res!996858 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47738 a!2862) j!93) a!2862 mask!2687) lt!642195))))

(declare-fun b!1468211 () Bool)

(assert (=> b!1468211 (= e!824516 e!824515)))

(declare-fun res!996853 () Bool)

(assert (=> b!1468211 (=> (not res!996853) (not e!824515))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468211 (= res!996853 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47738 a!2862) j!93) mask!2687) (select (arr!47738 a!2862) j!93) a!2862 mask!2687) lt!642195))))

(assert (=> b!1468211 (= lt!642195 (Intermediate!12001 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468212 () Bool)

(assert (=> b!1468212 (= e!824515 false)))

(declare-fun lt!642196 () SeekEntryResult!12001)

(assert (=> b!1468212 (= lt!642196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47738 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47738 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98910 (store (arr!47738 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48289 a!2862)) mask!2687))))

(declare-fun b!1468213 () Bool)

(declare-fun res!996854 () Bool)

(assert (=> b!1468213 (=> (not res!996854) (not e!824516))))

(declare-datatypes ((List!34419 0))(
  ( (Nil!34416) (Cons!34415 (h!35765 (_ BitVec 64)) (t!49120 List!34419)) )
))
(declare-fun arrayNoDuplicates!0 (array!98909 (_ BitVec 32) List!34419) Bool)

(assert (=> b!1468213 (= res!996854 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34416))))

(assert (= (and start!125544 res!996861) b!1468208))

(assert (= (and b!1468208 res!996859) b!1468206))

(assert (= (and b!1468206 res!996856) b!1468209))

(assert (= (and b!1468209 res!996860) b!1468205))

(assert (= (and b!1468205 res!996855) b!1468213))

(assert (= (and b!1468213 res!996854) b!1468207))

(assert (= (and b!1468207 res!996857) b!1468211))

(assert (= (and b!1468211 res!996853) b!1468210))

(assert (= (and b!1468210 res!996858) b!1468212))

(declare-fun m!1355297 () Bool)

(assert (=> b!1468213 m!1355297))

(declare-fun m!1355299 () Bool)

(assert (=> b!1468206 m!1355299))

(assert (=> b!1468206 m!1355299))

(declare-fun m!1355301 () Bool)

(assert (=> b!1468206 m!1355301))

(declare-fun m!1355303 () Bool)

(assert (=> b!1468210 m!1355303))

(assert (=> b!1468210 m!1355303))

(declare-fun m!1355305 () Bool)

(assert (=> b!1468210 m!1355305))

(assert (=> b!1468209 m!1355303))

(assert (=> b!1468209 m!1355303))

(declare-fun m!1355307 () Bool)

(assert (=> b!1468209 m!1355307))

(declare-fun m!1355309 () Bool)

(assert (=> b!1468207 m!1355309))

(declare-fun m!1355311 () Bool)

(assert (=> b!1468207 m!1355311))

(declare-fun m!1355313 () Bool)

(assert (=> start!125544 m!1355313))

(declare-fun m!1355315 () Bool)

(assert (=> start!125544 m!1355315))

(assert (=> b!1468211 m!1355303))

(assert (=> b!1468211 m!1355303))

(declare-fun m!1355317 () Bool)

(assert (=> b!1468211 m!1355317))

(assert (=> b!1468211 m!1355317))

(assert (=> b!1468211 m!1355303))

(declare-fun m!1355319 () Bool)

(assert (=> b!1468211 m!1355319))

(assert (=> b!1468212 m!1355309))

(declare-fun m!1355321 () Bool)

(assert (=> b!1468212 m!1355321))

(assert (=> b!1468212 m!1355321))

(declare-fun m!1355323 () Bool)

(assert (=> b!1468212 m!1355323))

(assert (=> b!1468212 m!1355323))

(assert (=> b!1468212 m!1355321))

(declare-fun m!1355325 () Bool)

(assert (=> b!1468212 m!1355325))

(declare-fun m!1355327 () Bool)

(assert (=> b!1468205 m!1355327))

(check-sat (not start!125544) (not b!1468211) (not b!1468212) (not b!1468206) (not b!1468213) (not b!1468209) (not b!1468210) (not b!1468205))
(check-sat)
