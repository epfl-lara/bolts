; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124444 () Bool)

(assert start!124444)

(declare-fun b!1439108 () Bool)

(declare-fun res!971650 () Bool)

(declare-fun e!811770 () Bool)

(assert (=> b!1439108 (=> (not res!971650) (not e!811770))))

(declare-datatypes ((array!97809 0))(
  ( (array!97810 (arr!47188 (Array (_ BitVec 32) (_ BitVec 64))) (size!47739 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97809)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439108 (= res!971650 (validKeyInArray!0 (select (arr!47188 a!2862) j!93)))))

(declare-fun b!1439109 () Bool)

(declare-fun res!971644 () Bool)

(declare-fun e!811771 () Bool)

(assert (=> b!1439109 (=> (not res!971644) (not e!811771))))

(declare-datatypes ((SeekEntryResult!11463 0))(
  ( (MissingZero!11463 (index!48243 (_ BitVec 32))) (Found!11463 (index!48244 (_ BitVec 32))) (Intermediate!11463 (undefined!12275 Bool) (index!48245 (_ BitVec 32)) (x!129987 (_ BitVec 32))) (Undefined!11463) (MissingVacant!11463 (index!48246 (_ BitVec 32))) )
))
(declare-fun lt!632703 () SeekEntryResult!11463)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97809 (_ BitVec 32)) SeekEntryResult!11463)

(assert (=> b!1439109 (= res!971644 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47188 a!2862) j!93) a!2862 mask!2687) lt!632703))))

(declare-fun b!1439110 () Bool)

(declare-fun res!971651 () Bool)

(assert (=> b!1439110 (=> (not res!971651) (not e!811770))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439110 (= res!971651 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47739 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47739 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47739 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47188 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439111 () Bool)

(declare-fun res!971645 () Bool)

(assert (=> b!1439111 (=> (not res!971645) (not e!811770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97809 (_ BitVec 32)) Bool)

(assert (=> b!1439111 (= res!971645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!971648 () Bool)

(assert (=> start!124444 (=> (not res!971648) (not e!811770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124444 (= res!971648 (validMask!0 mask!2687))))

(assert (=> start!124444 e!811770))

(assert (=> start!124444 true))

(declare-fun array_inv!36133 (array!97809) Bool)

(assert (=> start!124444 (array_inv!36133 a!2862)))

(declare-fun b!1439112 () Bool)

(assert (=> b!1439112 (= e!811770 e!811771)))

(declare-fun res!971647 () Bool)

(assert (=> b!1439112 (=> (not res!971647) (not e!811771))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439112 (= res!971647 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47188 a!2862) j!93) mask!2687) (select (arr!47188 a!2862) j!93) a!2862 mask!2687) lt!632703))))

(assert (=> b!1439112 (= lt!632703 (Intermediate!11463 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439113 () Bool)

(declare-fun res!971646 () Bool)

(assert (=> b!1439113 (=> (not res!971646) (not e!811770))))

(assert (=> b!1439113 (= res!971646 (and (= (size!47739 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47739 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47739 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439114 () Bool)

(assert (=> b!1439114 (= e!811771 false)))

(declare-fun lt!632704 () SeekEntryResult!11463)

(assert (=> b!1439114 (= lt!632704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47188 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47188 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97810 (store (arr!47188 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47739 a!2862)) mask!2687))))

(declare-fun b!1439115 () Bool)

(declare-fun res!971649 () Bool)

(assert (=> b!1439115 (=> (not res!971649) (not e!811770))))

(declare-datatypes ((List!33869 0))(
  ( (Nil!33866) (Cons!33865 (h!35215 (_ BitVec 64)) (t!48570 List!33869)) )
))
(declare-fun arrayNoDuplicates!0 (array!97809 (_ BitVec 32) List!33869) Bool)

(assert (=> b!1439115 (= res!971649 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33866))))

(declare-fun b!1439116 () Bool)

(declare-fun res!971652 () Bool)

(assert (=> b!1439116 (=> (not res!971652) (not e!811770))))

(assert (=> b!1439116 (= res!971652 (validKeyInArray!0 (select (arr!47188 a!2862) i!1006)))))

(assert (= (and start!124444 res!971648) b!1439113))

(assert (= (and b!1439113 res!971646) b!1439116))

(assert (= (and b!1439116 res!971652) b!1439108))

(assert (= (and b!1439108 res!971650) b!1439111))

(assert (= (and b!1439111 res!971645) b!1439115))

(assert (= (and b!1439115 res!971649) b!1439110))

(assert (= (and b!1439110 res!971651) b!1439112))

(assert (= (and b!1439112 res!971647) b!1439109))

(assert (= (and b!1439109 res!971644) b!1439114))

(declare-fun m!1328211 () Bool)

(assert (=> b!1439108 m!1328211))

(assert (=> b!1439108 m!1328211))

(declare-fun m!1328213 () Bool)

(assert (=> b!1439108 m!1328213))

(assert (=> b!1439109 m!1328211))

(assert (=> b!1439109 m!1328211))

(declare-fun m!1328215 () Bool)

(assert (=> b!1439109 m!1328215))

(declare-fun m!1328217 () Bool)

(assert (=> b!1439110 m!1328217))

(declare-fun m!1328219 () Bool)

(assert (=> b!1439110 m!1328219))

(assert (=> b!1439112 m!1328211))

(assert (=> b!1439112 m!1328211))

(declare-fun m!1328221 () Bool)

(assert (=> b!1439112 m!1328221))

(assert (=> b!1439112 m!1328221))

(assert (=> b!1439112 m!1328211))

(declare-fun m!1328223 () Bool)

(assert (=> b!1439112 m!1328223))

(declare-fun m!1328225 () Bool)

(assert (=> b!1439116 m!1328225))

(assert (=> b!1439116 m!1328225))

(declare-fun m!1328227 () Bool)

(assert (=> b!1439116 m!1328227))

(assert (=> b!1439114 m!1328217))

(declare-fun m!1328229 () Bool)

(assert (=> b!1439114 m!1328229))

(assert (=> b!1439114 m!1328229))

(declare-fun m!1328231 () Bool)

(assert (=> b!1439114 m!1328231))

(assert (=> b!1439114 m!1328231))

(assert (=> b!1439114 m!1328229))

(declare-fun m!1328233 () Bool)

(assert (=> b!1439114 m!1328233))

(declare-fun m!1328235 () Bool)

(assert (=> b!1439111 m!1328235))

(declare-fun m!1328237 () Bool)

(assert (=> start!124444 m!1328237))

(declare-fun m!1328239 () Bool)

(assert (=> start!124444 m!1328239))

(declare-fun m!1328241 () Bool)

(assert (=> b!1439115 m!1328241))

(push 1)

