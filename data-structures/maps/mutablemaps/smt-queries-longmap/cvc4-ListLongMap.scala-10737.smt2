; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125606 () Bool)

(assert start!125606)

(declare-fun b!1469042 () Bool)

(declare-fun e!824793 () Bool)

(assert (=> b!1469042 (= e!824793 false)))

(declare-datatypes ((SeekEntryResult!12032 0))(
  ( (MissingZero!12032 (index!50519 (_ BitVec 32))) (Found!12032 (index!50520 (_ BitVec 32))) (Intermediate!12032 (undefined!12844 Bool) (index!50521 (_ BitVec 32)) (x!132100 (_ BitVec 32))) (Undefined!12032) (MissingVacant!12032 (index!50522 (_ BitVec 32))) )
))
(declare-fun lt!642382 () SeekEntryResult!12032)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98971 0))(
  ( (array!98972 (arr!47769 (Array (_ BitVec 32) (_ BitVec 64))) (size!48320 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98971)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98971 (_ BitVec 32)) SeekEntryResult!12032)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469042 (= lt!642382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47769 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47769 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98972 (store (arr!47769 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48320 a!2862)) mask!2687))))

(declare-fun b!1469043 () Bool)

(declare-fun res!997695 () Bool)

(declare-fun e!824794 () Bool)

(assert (=> b!1469043 (=> (not res!997695) (not e!824794))))

(assert (=> b!1469043 (= res!997695 (and (= (size!48320 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48320 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48320 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469044 () Bool)

(declare-fun res!997697 () Bool)

(assert (=> b!1469044 (=> (not res!997697) (not e!824793))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642381 () SeekEntryResult!12032)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469044 (= res!997697 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47769 a!2862) j!93) a!2862 mask!2687) lt!642381))))

(declare-fun b!1469045 () Bool)

(declare-fun res!997693 () Bool)

(assert (=> b!1469045 (=> (not res!997693) (not e!824794))))

(declare-datatypes ((List!34450 0))(
  ( (Nil!34447) (Cons!34446 (h!35796 (_ BitVec 64)) (t!49151 List!34450)) )
))
(declare-fun arrayNoDuplicates!0 (array!98971 (_ BitVec 32) List!34450) Bool)

(assert (=> b!1469045 (= res!997693 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34447))))

(declare-fun b!1469046 () Bool)

(declare-fun res!997694 () Bool)

(assert (=> b!1469046 (=> (not res!997694) (not e!824794))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469046 (= res!997694 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48320 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48320 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48320 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47769 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1469047 () Bool)

(declare-fun res!997698 () Bool)

(assert (=> b!1469047 (=> (not res!997698) (not e!824794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469047 (= res!997698 (validKeyInArray!0 (select (arr!47769 a!2862) j!93)))))

(declare-fun b!1469048 () Bool)

(declare-fun res!997690 () Bool)

(assert (=> b!1469048 (=> (not res!997690) (not e!824794))))

(assert (=> b!1469048 (= res!997690 (validKeyInArray!0 (select (arr!47769 a!2862) i!1006)))))

(declare-fun res!997696 () Bool)

(assert (=> start!125606 (=> (not res!997696) (not e!824794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125606 (= res!997696 (validMask!0 mask!2687))))

(assert (=> start!125606 e!824794))

(assert (=> start!125606 true))

(declare-fun array_inv!36714 (array!98971) Bool)

(assert (=> start!125606 (array_inv!36714 a!2862)))

(declare-fun b!1469049 () Bool)

(assert (=> b!1469049 (= e!824794 e!824793)))

(declare-fun res!997692 () Bool)

(assert (=> b!1469049 (=> (not res!997692) (not e!824793))))

(assert (=> b!1469049 (= res!997692 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47769 a!2862) j!93) mask!2687) (select (arr!47769 a!2862) j!93) a!2862 mask!2687) lt!642381))))

(assert (=> b!1469049 (= lt!642381 (Intermediate!12032 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469050 () Bool)

(declare-fun res!997691 () Bool)

(assert (=> b!1469050 (=> (not res!997691) (not e!824794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98971 (_ BitVec 32)) Bool)

(assert (=> b!1469050 (= res!997691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125606 res!997696) b!1469043))

(assert (= (and b!1469043 res!997695) b!1469048))

(assert (= (and b!1469048 res!997690) b!1469047))

(assert (= (and b!1469047 res!997698) b!1469050))

(assert (= (and b!1469050 res!997691) b!1469045))

(assert (= (and b!1469045 res!997693) b!1469046))

(assert (= (and b!1469046 res!997694) b!1469049))

(assert (= (and b!1469049 res!997692) b!1469044))

(assert (= (and b!1469044 res!997697) b!1469042))

(declare-fun m!1356289 () Bool)

(assert (=> b!1469044 m!1356289))

(assert (=> b!1469044 m!1356289))

(declare-fun m!1356291 () Bool)

(assert (=> b!1469044 m!1356291))

(declare-fun m!1356293 () Bool)

(assert (=> b!1469046 m!1356293))

(declare-fun m!1356295 () Bool)

(assert (=> b!1469046 m!1356295))

(declare-fun m!1356297 () Bool)

(assert (=> b!1469048 m!1356297))

(assert (=> b!1469048 m!1356297))

(declare-fun m!1356299 () Bool)

(assert (=> b!1469048 m!1356299))

(declare-fun m!1356301 () Bool)

(assert (=> b!1469045 m!1356301))

(declare-fun m!1356303 () Bool)

(assert (=> b!1469050 m!1356303))

(assert (=> b!1469047 m!1356289))

(assert (=> b!1469047 m!1356289))

(declare-fun m!1356305 () Bool)

(assert (=> b!1469047 m!1356305))

(declare-fun m!1356307 () Bool)

(assert (=> start!125606 m!1356307))

(declare-fun m!1356309 () Bool)

(assert (=> start!125606 m!1356309))

(assert (=> b!1469042 m!1356293))

(declare-fun m!1356311 () Bool)

(assert (=> b!1469042 m!1356311))

(assert (=> b!1469042 m!1356311))

(declare-fun m!1356313 () Bool)

(assert (=> b!1469042 m!1356313))

(assert (=> b!1469042 m!1356313))

(assert (=> b!1469042 m!1356311))

(declare-fun m!1356315 () Bool)

(assert (=> b!1469042 m!1356315))

(assert (=> b!1469049 m!1356289))

(assert (=> b!1469049 m!1356289))

(declare-fun m!1356317 () Bool)

(assert (=> b!1469049 m!1356317))

(assert (=> b!1469049 m!1356317))

(assert (=> b!1469049 m!1356289))

(declare-fun m!1356319 () Bool)

(assert (=> b!1469049 m!1356319))

(push 1)

(assert (not b!1469045))

(assert (not b!1469048))

(assert (not b!1469044))

(assert (not start!125606))

(assert (not b!1469050))

(assert (not b!1469047))

(assert (not b!1469042))

(assert (not b!1469049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

