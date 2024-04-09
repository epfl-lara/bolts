; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124386 () Bool)

(assert start!124386)

(declare-fun b!1438663 () Bool)

(declare-fun res!971330 () Bool)

(declare-fun e!811553 () Bool)

(assert (=> b!1438663 (=> (not res!971330) (not e!811553))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97790 0))(
  ( (array!97791 (arr!47180 (Array (_ BitVec 32) (_ BitVec 64))) (size!47731 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97790)

(assert (=> b!1438663 (= res!971330 (and (= (size!47731 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47731 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47731 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438664 () Bool)

(declare-fun res!971329 () Bool)

(declare-fun e!811552 () Bool)

(assert (=> b!1438664 (=> (not res!971329) (not e!811552))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11455 0))(
  ( (MissingZero!11455 (index!48211 (_ BitVec 32))) (Found!11455 (index!48212 (_ BitVec 32))) (Intermediate!11455 (undefined!12267 Bool) (index!48213 (_ BitVec 32)) (x!129949 (_ BitVec 32))) (Undefined!11455) (MissingVacant!11455 (index!48214 (_ BitVec 32))) )
))
(declare-fun lt!632578 () SeekEntryResult!11455)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97790 (_ BitVec 32)) SeekEntryResult!11455)

(assert (=> b!1438664 (= res!971329 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47180 a!2862) j!93) a!2862 mask!2687) lt!632578))))

(declare-fun b!1438665 () Bool)

(declare-fun res!971324 () Bool)

(assert (=> b!1438665 (=> (not res!971324) (not e!811553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438665 (= res!971324 (validKeyInArray!0 (select (arr!47180 a!2862) j!93)))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1438667 () Bool)

(assert (=> b!1438667 (= e!811552 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438668 () Bool)

(declare-fun res!971322 () Bool)

(assert (=> b!1438668 (=> (not res!971322) (not e!811553))))

(assert (=> b!1438668 (= res!971322 (validKeyInArray!0 (select (arr!47180 a!2862) i!1006)))))

(declare-fun b!1438669 () Bool)

(declare-fun res!971326 () Bool)

(assert (=> b!1438669 (=> (not res!971326) (not e!811552))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438669 (= res!971326 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47180 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47180 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97791 (store (arr!47180 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47731 a!2862)) mask!2687) (Intermediate!11455 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438670 () Bool)

(declare-fun res!971325 () Bool)

(assert (=> b!1438670 (=> (not res!971325) (not e!811553))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1438670 (= res!971325 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47731 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47731 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47731 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47180 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438666 () Bool)

(assert (=> b!1438666 (= e!811553 e!811552)))

(declare-fun res!971331 () Bool)

(assert (=> b!1438666 (=> (not res!971331) (not e!811552))))

(assert (=> b!1438666 (= res!971331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47180 a!2862) j!93) mask!2687) (select (arr!47180 a!2862) j!93) a!2862 mask!2687) lt!632578))))

(assert (=> b!1438666 (= lt!632578 (Intermediate!11455 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!971328 () Bool)

(assert (=> start!124386 (=> (not res!971328) (not e!811553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124386 (= res!971328 (validMask!0 mask!2687))))

(assert (=> start!124386 e!811553))

(assert (=> start!124386 true))

(declare-fun array_inv!36125 (array!97790) Bool)

(assert (=> start!124386 (array_inv!36125 a!2862)))

(declare-fun b!1438671 () Bool)

(declare-fun res!971327 () Bool)

(assert (=> b!1438671 (=> (not res!971327) (not e!811553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97790 (_ BitVec 32)) Bool)

(assert (=> b!1438671 (= res!971327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438672 () Bool)

(declare-fun res!971323 () Bool)

(assert (=> b!1438672 (=> (not res!971323) (not e!811553))))

(declare-datatypes ((List!33861 0))(
  ( (Nil!33858) (Cons!33857 (h!35204 (_ BitVec 64)) (t!48562 List!33861)) )
))
(declare-fun arrayNoDuplicates!0 (array!97790 (_ BitVec 32) List!33861) Bool)

(assert (=> b!1438672 (= res!971323 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33858))))

(assert (= (and start!124386 res!971328) b!1438663))

(assert (= (and b!1438663 res!971330) b!1438668))

(assert (= (and b!1438668 res!971322) b!1438665))

(assert (= (and b!1438665 res!971324) b!1438671))

(assert (= (and b!1438671 res!971327) b!1438672))

(assert (= (and b!1438672 res!971323) b!1438670))

(assert (= (and b!1438670 res!971325) b!1438666))

(assert (= (and b!1438666 res!971331) b!1438664))

(assert (= (and b!1438664 res!971329) b!1438669))

(assert (= (and b!1438669 res!971326) b!1438667))

(declare-fun m!1327835 () Bool)

(assert (=> b!1438669 m!1327835))

(declare-fun m!1327837 () Bool)

(assert (=> b!1438669 m!1327837))

(assert (=> b!1438669 m!1327837))

(declare-fun m!1327839 () Bool)

(assert (=> b!1438669 m!1327839))

(assert (=> b!1438669 m!1327839))

(assert (=> b!1438669 m!1327837))

(declare-fun m!1327841 () Bool)

(assert (=> b!1438669 m!1327841))

(declare-fun m!1327843 () Bool)

(assert (=> b!1438672 m!1327843))

(assert (=> b!1438670 m!1327835))

(declare-fun m!1327845 () Bool)

(assert (=> b!1438670 m!1327845))

(declare-fun m!1327847 () Bool)

(assert (=> b!1438671 m!1327847))

(declare-fun m!1327849 () Bool)

(assert (=> b!1438666 m!1327849))

(assert (=> b!1438666 m!1327849))

(declare-fun m!1327851 () Bool)

(assert (=> b!1438666 m!1327851))

(assert (=> b!1438666 m!1327851))

(assert (=> b!1438666 m!1327849))

(declare-fun m!1327853 () Bool)

(assert (=> b!1438666 m!1327853))

(declare-fun m!1327855 () Bool)

(assert (=> start!124386 m!1327855))

(declare-fun m!1327857 () Bool)

(assert (=> start!124386 m!1327857))

(assert (=> b!1438664 m!1327849))

(assert (=> b!1438664 m!1327849))

(declare-fun m!1327859 () Bool)

(assert (=> b!1438664 m!1327859))

(assert (=> b!1438665 m!1327849))

(assert (=> b!1438665 m!1327849))

(declare-fun m!1327861 () Bool)

(assert (=> b!1438665 m!1327861))

(declare-fun m!1327863 () Bool)

(assert (=> b!1438668 m!1327863))

(assert (=> b!1438668 m!1327863))

(declare-fun m!1327865 () Bool)

(assert (=> b!1438668 m!1327865))

(check-sat (not b!1438672) (not b!1438664) (not b!1438666) (not b!1438669) (not b!1438665) (not start!124386) (not b!1438668) (not b!1438671))
(check-sat)
