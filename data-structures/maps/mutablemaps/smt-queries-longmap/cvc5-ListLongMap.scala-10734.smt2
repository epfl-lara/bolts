; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125584 () Bool)

(assert start!125584)

(declare-fun b!1468745 () Bool)

(declare-fun res!997393 () Bool)

(declare-fun e!824696 () Bool)

(assert (=> b!1468745 (=> (not res!997393) (not e!824696))))

(declare-datatypes ((array!98949 0))(
  ( (array!98950 (arr!47758 (Array (_ BitVec 32) (_ BitVec 64))) (size!48309 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98949)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468745 (= res!997393 (validKeyInArray!0 (select (arr!47758 a!2862) i!1006)))))

(declare-fun res!997395 () Bool)

(assert (=> start!125584 (=> (not res!997395) (not e!824696))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125584 (= res!997395 (validMask!0 mask!2687))))

(assert (=> start!125584 e!824696))

(assert (=> start!125584 true))

(declare-fun array_inv!36703 (array!98949) Bool)

(assert (=> start!125584 (array_inv!36703 a!2862)))

(declare-fun b!1468746 () Bool)

(declare-fun res!997400 () Bool)

(declare-fun e!824695 () Bool)

(assert (=> b!1468746 (=> (not res!997400) (not e!824695))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12021 0))(
  ( (MissingZero!12021 (index!50475 (_ BitVec 32))) (Found!12021 (index!50476 (_ BitVec 32))) (Intermediate!12021 (undefined!12833 Bool) (index!50477 (_ BitVec 32)) (x!132065 (_ BitVec 32))) (Undefined!12021) (MissingVacant!12021 (index!50478 (_ BitVec 32))) )
))
(declare-fun lt!642316 () SeekEntryResult!12021)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98949 (_ BitVec 32)) SeekEntryResult!12021)

(assert (=> b!1468746 (= res!997400 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47758 a!2862) j!93) a!2862 mask!2687) lt!642316))))

(declare-fun b!1468747 () Bool)

(assert (=> b!1468747 (= e!824695 false)))

(declare-fun lt!642315 () SeekEntryResult!12021)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468747 (= lt!642315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47758 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47758 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98950 (store (arr!47758 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48309 a!2862)) mask!2687))))

(declare-fun b!1468748 () Bool)

(declare-fun res!997397 () Bool)

(assert (=> b!1468748 (=> (not res!997397) (not e!824696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98949 (_ BitVec 32)) Bool)

(assert (=> b!1468748 (= res!997397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468749 () Bool)

(declare-fun res!997394 () Bool)

(assert (=> b!1468749 (=> (not res!997394) (not e!824696))))

(assert (=> b!1468749 (= res!997394 (and (= (size!48309 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48309 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48309 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468750 () Bool)

(assert (=> b!1468750 (= e!824696 e!824695)))

(declare-fun res!997396 () Bool)

(assert (=> b!1468750 (=> (not res!997396) (not e!824695))))

(assert (=> b!1468750 (= res!997396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47758 a!2862) j!93) mask!2687) (select (arr!47758 a!2862) j!93) a!2862 mask!2687) lt!642316))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468750 (= lt!642316 (Intermediate!12021 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468751 () Bool)

(declare-fun res!997399 () Bool)

(assert (=> b!1468751 (=> (not res!997399) (not e!824696))))

(declare-datatypes ((List!34439 0))(
  ( (Nil!34436) (Cons!34435 (h!35785 (_ BitVec 64)) (t!49140 List!34439)) )
))
(declare-fun arrayNoDuplicates!0 (array!98949 (_ BitVec 32) List!34439) Bool)

(assert (=> b!1468751 (= res!997399 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34436))))

(declare-fun b!1468752 () Bool)

(declare-fun res!997401 () Bool)

(assert (=> b!1468752 (=> (not res!997401) (not e!824696))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1468752 (= res!997401 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48309 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48309 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48309 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47758 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468753 () Bool)

(declare-fun res!997398 () Bool)

(assert (=> b!1468753 (=> (not res!997398) (not e!824696))))

(assert (=> b!1468753 (= res!997398 (validKeyInArray!0 (select (arr!47758 a!2862) j!93)))))

(assert (= (and start!125584 res!997395) b!1468749))

(assert (= (and b!1468749 res!997394) b!1468745))

(assert (= (and b!1468745 res!997393) b!1468753))

(assert (= (and b!1468753 res!997398) b!1468748))

(assert (= (and b!1468748 res!997397) b!1468751))

(assert (= (and b!1468751 res!997399) b!1468752))

(assert (= (and b!1468752 res!997401) b!1468750))

(assert (= (and b!1468750 res!997396) b!1468746))

(assert (= (and b!1468746 res!997400) b!1468747))

(declare-fun m!1355937 () Bool)

(assert (=> start!125584 m!1355937))

(declare-fun m!1355939 () Bool)

(assert (=> start!125584 m!1355939))

(declare-fun m!1355941 () Bool)

(assert (=> b!1468746 m!1355941))

(assert (=> b!1468746 m!1355941))

(declare-fun m!1355943 () Bool)

(assert (=> b!1468746 m!1355943))

(assert (=> b!1468750 m!1355941))

(assert (=> b!1468750 m!1355941))

(declare-fun m!1355945 () Bool)

(assert (=> b!1468750 m!1355945))

(assert (=> b!1468750 m!1355945))

(assert (=> b!1468750 m!1355941))

(declare-fun m!1355947 () Bool)

(assert (=> b!1468750 m!1355947))

(declare-fun m!1355949 () Bool)

(assert (=> b!1468751 m!1355949))

(declare-fun m!1355951 () Bool)

(assert (=> b!1468747 m!1355951))

(declare-fun m!1355953 () Bool)

(assert (=> b!1468747 m!1355953))

(assert (=> b!1468747 m!1355953))

(declare-fun m!1355955 () Bool)

(assert (=> b!1468747 m!1355955))

(assert (=> b!1468747 m!1355955))

(assert (=> b!1468747 m!1355953))

(declare-fun m!1355957 () Bool)

(assert (=> b!1468747 m!1355957))

(assert (=> b!1468752 m!1355951))

(declare-fun m!1355959 () Bool)

(assert (=> b!1468752 m!1355959))

(assert (=> b!1468753 m!1355941))

(assert (=> b!1468753 m!1355941))

(declare-fun m!1355961 () Bool)

(assert (=> b!1468753 m!1355961))

(declare-fun m!1355963 () Bool)

(assert (=> b!1468748 m!1355963))

(declare-fun m!1355965 () Bool)

(assert (=> b!1468745 m!1355965))

(assert (=> b!1468745 m!1355965))

(declare-fun m!1355967 () Bool)

(assert (=> b!1468745 m!1355967))

(push 1)

