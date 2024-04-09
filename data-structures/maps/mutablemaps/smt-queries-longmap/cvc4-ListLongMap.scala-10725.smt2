; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125534 () Bool)

(assert start!125534)

(declare-fun b!1468070 () Bool)

(declare-fun e!824471 () Bool)

(declare-fun e!824470 () Bool)

(assert (=> b!1468070 (= e!824471 e!824470)))

(declare-fun res!996723 () Bool)

(assert (=> b!1468070 (=> (not res!996723) (not e!824470))))

(declare-datatypes ((SeekEntryResult!11996 0))(
  ( (MissingZero!11996 (index!50375 (_ BitVec 32))) (Found!11996 (index!50376 (_ BitVec 32))) (Intermediate!11996 (undefined!12808 Bool) (index!50377 (_ BitVec 32)) (x!131968 (_ BitVec 32))) (Undefined!11996) (MissingVacant!11996 (index!50378 (_ BitVec 32))) )
))
(declare-fun lt!642166 () SeekEntryResult!11996)

(declare-datatypes ((array!98899 0))(
  ( (array!98900 (arr!47733 (Array (_ BitVec 32) (_ BitVec 64))) (size!48284 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98899)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98899 (_ BitVec 32)) SeekEntryResult!11996)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468070 (= res!996723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47733 a!2862) j!93) mask!2687) (select (arr!47733 a!2862) j!93) a!2862 mask!2687) lt!642166))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468070 (= lt!642166 (Intermediate!11996 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468071 () Bool)

(declare-fun res!996722 () Bool)

(assert (=> b!1468071 (=> (not res!996722) (not e!824471))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468071 (= res!996722 (validKeyInArray!0 (select (arr!47733 a!2862) i!1006)))))

(declare-fun b!1468072 () Bool)

(assert (=> b!1468072 (= e!824470 false)))

(declare-fun lt!642165 () SeekEntryResult!11996)

(assert (=> b!1468072 (= lt!642165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47733 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47733 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98900 (store (arr!47733 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48284 a!2862)) mask!2687))))

(declare-fun b!1468073 () Bool)

(declare-fun res!996724 () Bool)

(assert (=> b!1468073 (=> (not res!996724) (not e!824471))))

(declare-datatypes ((List!34414 0))(
  ( (Nil!34411) (Cons!34410 (h!35760 (_ BitVec 64)) (t!49115 List!34414)) )
))
(declare-fun arrayNoDuplicates!0 (array!98899 (_ BitVec 32) List!34414) Bool)

(assert (=> b!1468073 (= res!996724 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34411))))

(declare-fun res!996721 () Bool)

(assert (=> start!125534 (=> (not res!996721) (not e!824471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125534 (= res!996721 (validMask!0 mask!2687))))

(assert (=> start!125534 e!824471))

(assert (=> start!125534 true))

(declare-fun array_inv!36678 (array!98899) Bool)

(assert (=> start!125534 (array_inv!36678 a!2862)))

(declare-fun b!1468074 () Bool)

(declare-fun res!996725 () Bool)

(assert (=> b!1468074 (=> (not res!996725) (not e!824471))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468074 (= res!996725 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48284 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48284 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48284 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47733 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468075 () Bool)

(declare-fun res!996718 () Bool)

(assert (=> b!1468075 (=> (not res!996718) (not e!824471))))

(assert (=> b!1468075 (= res!996718 (and (= (size!48284 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48284 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48284 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468076 () Bool)

(declare-fun res!996720 () Bool)

(assert (=> b!1468076 (=> (not res!996720) (not e!824470))))

(assert (=> b!1468076 (= res!996720 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47733 a!2862) j!93) a!2862 mask!2687) lt!642166))))

(declare-fun b!1468077 () Bool)

(declare-fun res!996726 () Bool)

(assert (=> b!1468077 (=> (not res!996726) (not e!824471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98899 (_ BitVec 32)) Bool)

(assert (=> b!1468077 (= res!996726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468078 () Bool)

(declare-fun res!996719 () Bool)

(assert (=> b!1468078 (=> (not res!996719) (not e!824471))))

(assert (=> b!1468078 (= res!996719 (validKeyInArray!0 (select (arr!47733 a!2862) j!93)))))

(assert (= (and start!125534 res!996721) b!1468075))

(assert (= (and b!1468075 res!996718) b!1468071))

(assert (= (and b!1468071 res!996722) b!1468078))

(assert (= (and b!1468078 res!996719) b!1468077))

(assert (= (and b!1468077 res!996726) b!1468073))

(assert (= (and b!1468073 res!996724) b!1468074))

(assert (= (and b!1468074 res!996725) b!1468070))

(assert (= (and b!1468070 res!996723) b!1468076))

(assert (= (and b!1468076 res!996720) b!1468072))

(declare-fun m!1355137 () Bool)

(assert (=> b!1468076 m!1355137))

(assert (=> b!1468076 m!1355137))

(declare-fun m!1355139 () Bool)

(assert (=> b!1468076 m!1355139))

(assert (=> b!1468078 m!1355137))

(assert (=> b!1468078 m!1355137))

(declare-fun m!1355141 () Bool)

(assert (=> b!1468078 m!1355141))

(assert (=> b!1468070 m!1355137))

(assert (=> b!1468070 m!1355137))

(declare-fun m!1355143 () Bool)

(assert (=> b!1468070 m!1355143))

(assert (=> b!1468070 m!1355143))

(assert (=> b!1468070 m!1355137))

(declare-fun m!1355145 () Bool)

(assert (=> b!1468070 m!1355145))

(declare-fun m!1355147 () Bool)

(assert (=> b!1468074 m!1355147))

(declare-fun m!1355149 () Bool)

(assert (=> b!1468074 m!1355149))

(declare-fun m!1355151 () Bool)

(assert (=> b!1468071 m!1355151))

(assert (=> b!1468071 m!1355151))

(declare-fun m!1355153 () Bool)

(assert (=> b!1468071 m!1355153))

(declare-fun m!1355155 () Bool)

(assert (=> start!125534 m!1355155))

(declare-fun m!1355157 () Bool)

(assert (=> start!125534 m!1355157))

(declare-fun m!1355159 () Bool)

(assert (=> b!1468073 m!1355159))

(declare-fun m!1355161 () Bool)

(assert (=> b!1468077 m!1355161))

(assert (=> b!1468072 m!1355147))

(declare-fun m!1355163 () Bool)

(assert (=> b!1468072 m!1355163))

(assert (=> b!1468072 m!1355163))

(declare-fun m!1355165 () Bool)

(assert (=> b!1468072 m!1355165))

(assert (=> b!1468072 m!1355165))

(assert (=> b!1468072 m!1355163))

(declare-fun m!1355167 () Bool)

(assert (=> b!1468072 m!1355167))

(push 1)

(assert (not b!1468073))

(assert (not start!125534))

(assert (not b!1468072))

(assert (not b!1468070))

(assert (not b!1468071))

