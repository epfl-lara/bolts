; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124390 () Bool)

(assert start!124390)

(declare-fun b!1438721 () Bool)

(declare-fun res!971381 () Bool)

(declare-fun e!811571 () Bool)

(assert (=> b!1438721 (=> (not res!971381) (not e!811571))))

(declare-datatypes ((array!97794 0))(
  ( (array!97795 (arr!47182 (Array (_ BitVec 32) (_ BitVec 64))) (size!47733 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97794)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97794 (_ BitVec 32)) Bool)

(assert (=> b!1438721 (= res!971381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!971382 () Bool)

(assert (=> start!124390 (=> (not res!971382) (not e!811571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124390 (= res!971382 (validMask!0 mask!2687))))

(assert (=> start!124390 e!811571))

(assert (=> start!124390 true))

(declare-fun array_inv!36127 (array!97794) Bool)

(assert (=> start!124390 (array_inv!36127 a!2862)))

(declare-fun b!1438722 () Bool)

(declare-fun res!971383 () Bool)

(assert (=> b!1438722 (=> (not res!971383) (not e!811571))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438722 (= res!971383 (validKeyInArray!0 (select (arr!47182 a!2862) i!1006)))))

(declare-fun b!1438723 () Bool)

(declare-fun e!811569 () Bool)

(assert (=> b!1438723 (= e!811571 e!811569)))

(declare-fun res!971384 () Bool)

(assert (=> b!1438723 (=> (not res!971384) (not e!811569))))

(declare-datatypes ((SeekEntryResult!11457 0))(
  ( (MissingZero!11457 (index!48219 (_ BitVec 32))) (Found!11457 (index!48220 (_ BitVec 32))) (Intermediate!11457 (undefined!12269 Bool) (index!48221 (_ BitVec 32)) (x!129959 (_ BitVec 32))) (Undefined!11457) (MissingVacant!11457 (index!48222 (_ BitVec 32))) )
))
(declare-fun lt!632586 () SeekEntryResult!11457)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97794 (_ BitVec 32)) SeekEntryResult!11457)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438723 (= res!971384 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47182 a!2862) j!93) mask!2687) (select (arr!47182 a!2862) j!93) a!2862 mask!2687) lt!632586))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438723 (= lt!632586 (Intermediate!11457 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438724 () Bool)

(assert (=> b!1438724 (= e!811569 false)))

(declare-fun lt!632587 () SeekEntryResult!11457)

(assert (=> b!1438724 (= lt!632587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47182 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47182 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97795 (store (arr!47182 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47733 a!2862)) mask!2687))))

(declare-fun b!1438725 () Bool)

(declare-fun res!971388 () Bool)

(assert (=> b!1438725 (=> (not res!971388) (not e!811569))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438725 (= res!971388 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47182 a!2862) j!93) a!2862 mask!2687) lt!632586))))

(declare-fun b!1438726 () Bool)

(declare-fun res!971385 () Bool)

(assert (=> b!1438726 (=> (not res!971385) (not e!811571))))

(assert (=> b!1438726 (= res!971385 (and (= (size!47733 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47733 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47733 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438727 () Bool)

(declare-fun res!971387 () Bool)

(assert (=> b!1438727 (=> (not res!971387) (not e!811571))))

(assert (=> b!1438727 (= res!971387 (validKeyInArray!0 (select (arr!47182 a!2862) j!93)))))

(declare-fun b!1438728 () Bool)

(declare-fun res!971386 () Bool)

(assert (=> b!1438728 (=> (not res!971386) (not e!811571))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438728 (= res!971386 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47733 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47733 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47733 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47182 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438729 () Bool)

(declare-fun res!971380 () Bool)

(assert (=> b!1438729 (=> (not res!971380) (not e!811571))))

(declare-datatypes ((List!33863 0))(
  ( (Nil!33860) (Cons!33859 (h!35206 (_ BitVec 64)) (t!48564 List!33863)) )
))
(declare-fun arrayNoDuplicates!0 (array!97794 (_ BitVec 32) List!33863) Bool)

(assert (=> b!1438729 (= res!971380 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33860))))

(assert (= (and start!124390 res!971382) b!1438726))

(assert (= (and b!1438726 res!971385) b!1438722))

(assert (= (and b!1438722 res!971383) b!1438727))

(assert (= (and b!1438727 res!971387) b!1438721))

(assert (= (and b!1438721 res!971381) b!1438729))

(assert (= (and b!1438729 res!971380) b!1438728))

(assert (= (and b!1438728 res!971386) b!1438723))

(assert (= (and b!1438723 res!971384) b!1438725))

(assert (= (and b!1438725 res!971388) b!1438724))

(declare-fun m!1327899 () Bool)

(assert (=> b!1438722 m!1327899))

(assert (=> b!1438722 m!1327899))

(declare-fun m!1327901 () Bool)

(assert (=> b!1438722 m!1327901))

(declare-fun m!1327903 () Bool)

(assert (=> b!1438728 m!1327903))

(declare-fun m!1327905 () Bool)

(assert (=> b!1438728 m!1327905))

(assert (=> b!1438724 m!1327903))

(declare-fun m!1327907 () Bool)

(assert (=> b!1438724 m!1327907))

(assert (=> b!1438724 m!1327907))

(declare-fun m!1327909 () Bool)

(assert (=> b!1438724 m!1327909))

(assert (=> b!1438724 m!1327909))

(assert (=> b!1438724 m!1327907))

(declare-fun m!1327911 () Bool)

(assert (=> b!1438724 m!1327911))

(declare-fun m!1327913 () Bool)

(assert (=> b!1438725 m!1327913))

(assert (=> b!1438725 m!1327913))

(declare-fun m!1327915 () Bool)

(assert (=> b!1438725 m!1327915))

(assert (=> b!1438723 m!1327913))

(assert (=> b!1438723 m!1327913))

(declare-fun m!1327917 () Bool)

(assert (=> b!1438723 m!1327917))

(assert (=> b!1438723 m!1327917))

(assert (=> b!1438723 m!1327913))

(declare-fun m!1327919 () Bool)

(assert (=> b!1438723 m!1327919))

(declare-fun m!1327921 () Bool)

(assert (=> start!124390 m!1327921))

(declare-fun m!1327923 () Bool)

(assert (=> start!124390 m!1327923))

(declare-fun m!1327925 () Bool)

(assert (=> b!1438729 m!1327925))

(assert (=> b!1438727 m!1327913))

(assert (=> b!1438727 m!1327913))

(declare-fun m!1327927 () Bool)

(assert (=> b!1438727 m!1327927))

(declare-fun m!1327929 () Bool)

(assert (=> b!1438721 m!1327929))

(push 1)

