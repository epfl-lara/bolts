; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125580 () Bool)

(assert start!125580)

(declare-fun b!1468691 () Bool)

(declare-fun res!997339 () Bool)

(declare-fun e!824676 () Bool)

(assert (=> b!1468691 (=> (not res!997339) (not e!824676))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98945 0))(
  ( (array!98946 (arr!47756 (Array (_ BitVec 32) (_ BitVec 64))) (size!48307 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98945)

(assert (=> b!1468691 (= res!997339 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48307 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48307 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48307 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47756 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468692 () Bool)

(declare-fun e!824677 () Bool)

(assert (=> b!1468692 (= e!824677 false)))

(declare-datatypes ((SeekEntryResult!12019 0))(
  ( (MissingZero!12019 (index!50467 (_ BitVec 32))) (Found!12019 (index!50468 (_ BitVec 32))) (Intermediate!12019 (undefined!12831 Bool) (index!50469 (_ BitVec 32)) (x!132055 (_ BitVec 32))) (Undefined!12019) (MissingVacant!12019 (index!50470 (_ BitVec 32))) )
))
(declare-fun lt!642303 () SeekEntryResult!12019)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98945 (_ BitVec 32)) SeekEntryResult!12019)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468692 (= lt!642303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47756 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47756 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98946 (store (arr!47756 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48307 a!2862)) mask!2687))))

(declare-fun b!1468693 () Bool)

(declare-fun res!997344 () Bool)

(assert (=> b!1468693 (=> (not res!997344) (not e!824676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98945 (_ BitVec 32)) Bool)

(assert (=> b!1468693 (= res!997344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468694 () Bool)

(declare-fun res!997347 () Bool)

(assert (=> b!1468694 (=> (not res!997347) (not e!824676))))

(assert (=> b!1468694 (= res!997347 (and (= (size!48307 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48307 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48307 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468695 () Bool)

(declare-fun res!997346 () Bool)

(assert (=> b!1468695 (=> (not res!997346) (not e!824677))))

(declare-fun lt!642304 () SeekEntryResult!12019)

(assert (=> b!1468695 (= res!997346 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47756 a!2862) j!93) a!2862 mask!2687) lt!642304))))

(declare-fun res!997341 () Bool)

(assert (=> start!125580 (=> (not res!997341) (not e!824676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125580 (= res!997341 (validMask!0 mask!2687))))

(assert (=> start!125580 e!824676))

(assert (=> start!125580 true))

(declare-fun array_inv!36701 (array!98945) Bool)

(assert (=> start!125580 (array_inv!36701 a!2862)))

(declare-fun b!1468696 () Bool)

(declare-fun res!997345 () Bool)

(assert (=> b!1468696 (=> (not res!997345) (not e!824676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468696 (= res!997345 (validKeyInArray!0 (select (arr!47756 a!2862) j!93)))))

(declare-fun b!1468697 () Bool)

(declare-fun res!997343 () Bool)

(assert (=> b!1468697 (=> (not res!997343) (not e!824676))))

(assert (=> b!1468697 (= res!997343 (validKeyInArray!0 (select (arr!47756 a!2862) i!1006)))))

(declare-fun b!1468698 () Bool)

(declare-fun res!997342 () Bool)

(assert (=> b!1468698 (=> (not res!997342) (not e!824676))))

(declare-datatypes ((List!34437 0))(
  ( (Nil!34434) (Cons!34433 (h!35783 (_ BitVec 64)) (t!49138 List!34437)) )
))
(declare-fun arrayNoDuplicates!0 (array!98945 (_ BitVec 32) List!34437) Bool)

(assert (=> b!1468698 (= res!997342 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34434))))

(declare-fun b!1468699 () Bool)

(assert (=> b!1468699 (= e!824676 e!824677)))

(declare-fun res!997340 () Bool)

(assert (=> b!1468699 (=> (not res!997340) (not e!824677))))

(assert (=> b!1468699 (= res!997340 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47756 a!2862) j!93) mask!2687) (select (arr!47756 a!2862) j!93) a!2862 mask!2687) lt!642304))))

(assert (=> b!1468699 (= lt!642304 (Intermediate!12019 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125580 res!997341) b!1468694))

(assert (= (and b!1468694 res!997347) b!1468697))

(assert (= (and b!1468697 res!997343) b!1468696))

(assert (= (and b!1468696 res!997345) b!1468693))

(assert (= (and b!1468693 res!997344) b!1468698))

(assert (= (and b!1468698 res!997342) b!1468691))

(assert (= (and b!1468691 res!997339) b!1468699))

(assert (= (and b!1468699 res!997340) b!1468695))

(assert (= (and b!1468695 res!997346) b!1468692))

(declare-fun m!1355873 () Bool)

(assert (=> b!1468691 m!1355873))

(declare-fun m!1355875 () Bool)

(assert (=> b!1468691 m!1355875))

(declare-fun m!1355877 () Bool)

(assert (=> b!1468696 m!1355877))

(assert (=> b!1468696 m!1355877))

(declare-fun m!1355879 () Bool)

(assert (=> b!1468696 m!1355879))

(declare-fun m!1355881 () Bool)

(assert (=> b!1468697 m!1355881))

(assert (=> b!1468697 m!1355881))

(declare-fun m!1355883 () Bool)

(assert (=> b!1468697 m!1355883))

(declare-fun m!1355885 () Bool)

(assert (=> b!1468698 m!1355885))

(assert (=> b!1468692 m!1355873))

(declare-fun m!1355887 () Bool)

(assert (=> b!1468692 m!1355887))

(assert (=> b!1468692 m!1355887))

(declare-fun m!1355889 () Bool)

(assert (=> b!1468692 m!1355889))

(assert (=> b!1468692 m!1355889))

(assert (=> b!1468692 m!1355887))

(declare-fun m!1355891 () Bool)

(assert (=> b!1468692 m!1355891))

(declare-fun m!1355893 () Bool)

(assert (=> start!125580 m!1355893))

(declare-fun m!1355895 () Bool)

(assert (=> start!125580 m!1355895))

(assert (=> b!1468695 m!1355877))

(assert (=> b!1468695 m!1355877))

(declare-fun m!1355897 () Bool)

(assert (=> b!1468695 m!1355897))

(assert (=> b!1468699 m!1355877))

(assert (=> b!1468699 m!1355877))

(declare-fun m!1355899 () Bool)

(assert (=> b!1468699 m!1355899))

(assert (=> b!1468699 m!1355899))

(assert (=> b!1468699 m!1355877))

(declare-fun m!1355901 () Bool)

(assert (=> b!1468699 m!1355901))

(declare-fun m!1355903 () Bool)

(assert (=> b!1468693 m!1355903))

(check-sat (not b!1468696) (not b!1468695) (not b!1468692) (not start!125580) (not b!1468699) (not b!1468698) (not b!1468697) (not b!1468693))
(check-sat)
