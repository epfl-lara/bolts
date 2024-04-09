; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124566 () Bool)

(assert start!124566)

(declare-fun b!1440901 () Bool)

(declare-fun res!973437 () Bool)

(declare-fun e!812348 () Bool)

(assert (=> b!1440901 (=> (not res!973437) (not e!812348))))

(declare-datatypes ((array!97931 0))(
  ( (array!97932 (arr!47249 (Array (_ BitVec 32) (_ BitVec 64))) (size!47800 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97931)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440901 (= res!973437 (validKeyInArray!0 (select (arr!47249 a!2862) i!1006)))))

(declare-fun res!973434 () Bool)

(assert (=> start!124566 (=> (not res!973434) (not e!812348))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124566 (= res!973434 (validMask!0 mask!2687))))

(assert (=> start!124566 e!812348))

(assert (=> start!124566 true))

(declare-fun array_inv!36194 (array!97931) Bool)

(assert (=> start!124566 (array_inv!36194 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11524 0))(
  ( (MissingZero!11524 (index!48487 (_ BitVec 32))) (Found!11524 (index!48488 (_ BitVec 32))) (Intermediate!11524 (undefined!12336 Bool) (index!48489 (_ BitVec 32)) (x!130208 (_ BitVec 32))) (Undefined!11524) (MissingVacant!11524 (index!48490 (_ BitVec 32))) )
))
(declare-fun lt!633006 () SeekEntryResult!11524)

(declare-fun e!812346 () Bool)

(declare-fun lt!633007 () (_ BitVec 64))

(declare-fun lt!633004 () array!97931)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1440902 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97931 (_ BitVec 32)) SeekEntryResult!11524)

(assert (=> b!1440902 (= e!812346 (not (= lt!633006 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633007 lt!633004 mask!2687))))))

(declare-fun b!1440903 () Bool)

(declare-fun res!973430 () Bool)

(assert (=> b!1440903 (=> (not res!973430) (not e!812348))))

(declare-datatypes ((List!33930 0))(
  ( (Nil!33927) (Cons!33926 (h!35276 (_ BitVec 64)) (t!48631 List!33930)) )
))
(declare-fun arrayNoDuplicates!0 (array!97931 (_ BitVec 32) List!33930) Bool)

(assert (=> b!1440903 (= res!973430 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33927))))

(declare-fun b!1440904 () Bool)

(declare-fun res!973429 () Bool)

(assert (=> b!1440904 (=> (not res!973429) (not e!812348))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440904 (= res!973429 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47800 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47800 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47800 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1440905 () Bool)

(declare-fun e!812343 () Bool)

(declare-fun e!812345 () Bool)

(assert (=> b!1440905 (= e!812343 e!812345)))

(declare-fun res!973435 () Bool)

(assert (=> b!1440905 (=> (not res!973435) (not e!812345))))

(assert (=> b!1440905 (= res!973435 (= lt!633006 (Intermediate!11524 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440905 (= lt!633006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633007 mask!2687) lt!633007 lt!633004 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1440905 (= lt!633007 (select (store (arr!47249 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1440906 () Bool)

(declare-fun res!973432 () Bool)

(assert (=> b!1440906 (=> (not res!973432) (not e!812348))))

(assert (=> b!1440906 (= res!973432 (and (= (size!47800 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47800 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47800 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440907 () Bool)

(declare-fun res!973428 () Bool)

(assert (=> b!1440907 (=> (not res!973428) (not e!812348))))

(assert (=> b!1440907 (= res!973428 (validKeyInArray!0 (select (arr!47249 a!2862) j!93)))))

(declare-fun b!1440908 () Bool)

(declare-fun res!973427 () Bool)

(assert (=> b!1440908 (=> (not res!973427) (not e!812343))))

(declare-fun lt!633003 () SeekEntryResult!11524)

(assert (=> b!1440908 (= res!973427 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47249 a!2862) j!93) a!2862 mask!2687) lt!633003))))

(declare-fun b!1440909 () Bool)

(declare-fun res!973433 () Bool)

(assert (=> b!1440909 (=> (not res!973433) (not e!812348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97931 (_ BitVec 32)) Bool)

(assert (=> b!1440909 (= res!973433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440910 () Bool)

(declare-fun e!812347 () Bool)

(assert (=> b!1440910 (= e!812347 e!812343)))

(declare-fun res!973436 () Bool)

(assert (=> b!1440910 (=> (not res!973436) (not e!812343))))

(assert (=> b!1440910 (= res!973436 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47249 a!2862) j!93) mask!2687) (select (arr!47249 a!2862) j!93) a!2862 mask!2687) lt!633003))))

(assert (=> b!1440910 (= lt!633003 (Intermediate!11524 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440911 () Bool)

(assert (=> b!1440911 (= e!812345 false)))

(declare-fun lt!633005 () Bool)

(assert (=> b!1440911 (= lt!633005 e!812346)))

(declare-fun c!133250 () Bool)

(assert (=> b!1440911 (= c!133250 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1440912 () Bool)

(assert (=> b!1440912 (= e!812348 e!812347)))

(declare-fun res!973431 () Bool)

(assert (=> b!1440912 (=> (not res!973431) (not e!812347))))

(assert (=> b!1440912 (= res!973431 (= (select (store (arr!47249 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1440912 (= lt!633004 (array!97932 (store (arr!47249 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47800 a!2862)))))

(declare-fun b!1440913 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97931 (_ BitVec 32)) SeekEntryResult!11524)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97931 (_ BitVec 32)) SeekEntryResult!11524)

(assert (=> b!1440913 (= e!812346 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633007 lt!633004 mask!2687) (seekEntryOrOpen!0 lt!633007 lt!633004 mask!2687))))))

(assert (= (and start!124566 res!973434) b!1440906))

(assert (= (and b!1440906 res!973432) b!1440901))

(assert (= (and b!1440901 res!973437) b!1440907))

(assert (= (and b!1440907 res!973428) b!1440909))

(assert (= (and b!1440909 res!973433) b!1440903))

(assert (= (and b!1440903 res!973430) b!1440904))

(assert (= (and b!1440904 res!973429) b!1440912))

(assert (= (and b!1440912 res!973431) b!1440910))

(assert (= (and b!1440910 res!973436) b!1440908))

(assert (= (and b!1440908 res!973427) b!1440905))

(assert (= (and b!1440905 res!973435) b!1440911))

(assert (= (and b!1440911 c!133250) b!1440902))

(assert (= (and b!1440911 (not c!133250)) b!1440913))

(declare-fun m!1330193 () Bool)

(assert (=> b!1440909 m!1330193))

(declare-fun m!1330195 () Bool)

(assert (=> start!124566 m!1330195))

(declare-fun m!1330197 () Bool)

(assert (=> start!124566 m!1330197))

(declare-fun m!1330199 () Bool)

(assert (=> b!1440913 m!1330199))

(declare-fun m!1330201 () Bool)

(assert (=> b!1440913 m!1330201))

(declare-fun m!1330203 () Bool)

(assert (=> b!1440905 m!1330203))

(assert (=> b!1440905 m!1330203))

(declare-fun m!1330205 () Bool)

(assert (=> b!1440905 m!1330205))

(declare-fun m!1330207 () Bool)

(assert (=> b!1440905 m!1330207))

(declare-fun m!1330209 () Bool)

(assert (=> b!1440905 m!1330209))

(assert (=> b!1440912 m!1330207))

(declare-fun m!1330211 () Bool)

(assert (=> b!1440912 m!1330211))

(declare-fun m!1330213 () Bool)

(assert (=> b!1440901 m!1330213))

(assert (=> b!1440901 m!1330213))

(declare-fun m!1330215 () Bool)

(assert (=> b!1440901 m!1330215))

(declare-fun m!1330217 () Bool)

(assert (=> b!1440907 m!1330217))

(assert (=> b!1440907 m!1330217))

(declare-fun m!1330219 () Bool)

(assert (=> b!1440907 m!1330219))

(assert (=> b!1440908 m!1330217))

(assert (=> b!1440908 m!1330217))

(declare-fun m!1330221 () Bool)

(assert (=> b!1440908 m!1330221))

(declare-fun m!1330223 () Bool)

(assert (=> b!1440903 m!1330223))

(declare-fun m!1330225 () Bool)

(assert (=> b!1440902 m!1330225))

(assert (=> b!1440910 m!1330217))

(assert (=> b!1440910 m!1330217))

(declare-fun m!1330227 () Bool)

(assert (=> b!1440910 m!1330227))

(assert (=> b!1440910 m!1330227))

(assert (=> b!1440910 m!1330217))

(declare-fun m!1330229 () Bool)

(assert (=> b!1440910 m!1330229))

(check-sat (not b!1440913) (not b!1440905) (not b!1440903) (not b!1440901) (not b!1440907) (not b!1440902) (not b!1440910) (not start!124566) (not b!1440909) (not b!1440908))
(check-sat)
