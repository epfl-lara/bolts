; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124324 () Bool)

(assert start!124324)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1438156 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!811325 () Bool)

(assert (=> b!1438156 (= e!811325 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438157 () Bool)

(declare-fun res!970943 () Bool)

(declare-fun e!811323 () Bool)

(assert (=> b!1438157 (=> (not res!970943) (not e!811323))))

(declare-datatypes ((array!97767 0))(
  ( (array!97768 (arr!47170 (Array (_ BitVec 32) (_ BitVec 64))) (size!47721 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97767)

(declare-datatypes ((List!33851 0))(
  ( (Nil!33848) (Cons!33847 (h!35191 (_ BitVec 64)) (t!48552 List!33851)) )
))
(declare-fun arrayNoDuplicates!0 (array!97767 (_ BitVec 32) List!33851) Bool)

(assert (=> b!1438157 (= res!970943 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33848))))

(declare-fun b!1438158 () Bool)

(declare-fun res!970940 () Bool)

(assert (=> b!1438158 (=> (not res!970940) (not e!811325))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11445 0))(
  ( (MissingZero!11445 (index!48171 (_ BitVec 32))) (Found!11445 (index!48172 (_ BitVec 32))) (Intermediate!11445 (undefined!12257 Bool) (index!48173 (_ BitVec 32)) (x!129909 (_ BitVec 32))) (Undefined!11445) (MissingVacant!11445 (index!48174 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97767 (_ BitVec 32)) SeekEntryResult!11445)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438158 (= res!970940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47170 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47170 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97768 (store (arr!47170 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47721 a!2862)) mask!2687) (Intermediate!11445 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438159 () Bool)

(declare-fun res!970938 () Bool)

(assert (=> b!1438159 (=> (not res!970938) (not e!811323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97767 (_ BitVec 32)) Bool)

(assert (=> b!1438159 (= res!970938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438160 () Bool)

(declare-fun res!970946 () Bool)

(assert (=> b!1438160 (=> (not res!970946) (not e!811323))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1438160 (= res!970946 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47721 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47721 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47721 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47170 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!970942 () Bool)

(assert (=> start!124324 (=> (not res!970942) (not e!811323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124324 (= res!970942 (validMask!0 mask!2687))))

(assert (=> start!124324 e!811323))

(assert (=> start!124324 true))

(declare-fun array_inv!36115 (array!97767) Bool)

(assert (=> start!124324 (array_inv!36115 a!2862)))

(declare-fun b!1438161 () Bool)

(declare-fun res!970941 () Bool)

(assert (=> b!1438161 (=> (not res!970941) (not e!811325))))

(declare-fun lt!632458 () SeekEntryResult!11445)

(assert (=> b!1438161 (= res!970941 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47170 a!2862) j!93) a!2862 mask!2687) lt!632458))))

(declare-fun b!1438162 () Bool)

(declare-fun res!970945 () Bool)

(assert (=> b!1438162 (=> (not res!970945) (not e!811323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438162 (= res!970945 (validKeyInArray!0 (select (arr!47170 a!2862) j!93)))))

(declare-fun b!1438163 () Bool)

(declare-fun res!970947 () Bool)

(assert (=> b!1438163 (=> (not res!970947) (not e!811323))))

(assert (=> b!1438163 (= res!970947 (validKeyInArray!0 (select (arr!47170 a!2862) i!1006)))))

(declare-fun b!1438164 () Bool)

(declare-fun res!970939 () Bool)

(assert (=> b!1438164 (=> (not res!970939) (not e!811323))))

(assert (=> b!1438164 (= res!970939 (and (= (size!47721 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47721 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47721 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438165 () Bool)

(assert (=> b!1438165 (= e!811323 e!811325)))

(declare-fun res!970944 () Bool)

(assert (=> b!1438165 (=> (not res!970944) (not e!811325))))

(assert (=> b!1438165 (= res!970944 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47170 a!2862) j!93) mask!2687) (select (arr!47170 a!2862) j!93) a!2862 mask!2687) lt!632458))))

(assert (=> b!1438165 (= lt!632458 (Intermediate!11445 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124324 res!970942) b!1438164))

(assert (= (and b!1438164 res!970939) b!1438163))

(assert (= (and b!1438163 res!970947) b!1438162))

(assert (= (and b!1438162 res!970945) b!1438159))

(assert (= (and b!1438159 res!970938) b!1438157))

(assert (= (and b!1438157 res!970943) b!1438160))

(assert (= (and b!1438160 res!970946) b!1438165))

(assert (= (and b!1438165 res!970944) b!1438161))

(assert (= (and b!1438161 res!970941) b!1438158))

(assert (= (and b!1438158 res!970940) b!1438156))

(declare-fun m!1327395 () Bool)

(assert (=> b!1438165 m!1327395))

(assert (=> b!1438165 m!1327395))

(declare-fun m!1327397 () Bool)

(assert (=> b!1438165 m!1327397))

(assert (=> b!1438165 m!1327397))

(assert (=> b!1438165 m!1327395))

(declare-fun m!1327399 () Bool)

(assert (=> b!1438165 m!1327399))

(declare-fun m!1327401 () Bool)

(assert (=> b!1438157 m!1327401))

(declare-fun m!1327403 () Bool)

(assert (=> start!124324 m!1327403))

(declare-fun m!1327405 () Bool)

(assert (=> start!124324 m!1327405))

(declare-fun m!1327407 () Bool)

(assert (=> b!1438160 m!1327407))

(declare-fun m!1327409 () Bool)

(assert (=> b!1438160 m!1327409))

(assert (=> b!1438161 m!1327395))

(assert (=> b!1438161 m!1327395))

(declare-fun m!1327411 () Bool)

(assert (=> b!1438161 m!1327411))

(assert (=> b!1438162 m!1327395))

(assert (=> b!1438162 m!1327395))

(declare-fun m!1327413 () Bool)

(assert (=> b!1438162 m!1327413))

(assert (=> b!1438158 m!1327407))

(declare-fun m!1327415 () Bool)

(assert (=> b!1438158 m!1327415))

(assert (=> b!1438158 m!1327415))

(declare-fun m!1327417 () Bool)

(assert (=> b!1438158 m!1327417))

(assert (=> b!1438158 m!1327417))

(assert (=> b!1438158 m!1327415))

(declare-fun m!1327419 () Bool)

(assert (=> b!1438158 m!1327419))

(declare-fun m!1327421 () Bool)

(assert (=> b!1438163 m!1327421))

(assert (=> b!1438163 m!1327421))

(declare-fun m!1327423 () Bool)

(assert (=> b!1438163 m!1327423))

(declare-fun m!1327425 () Bool)

(assert (=> b!1438159 m!1327425))

(push 1)

