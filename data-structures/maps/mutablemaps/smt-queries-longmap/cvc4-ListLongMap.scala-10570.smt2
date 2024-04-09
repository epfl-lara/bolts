; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124604 () Bool)

(assert start!124604)

(declare-fun b!1441676 () Bool)

(declare-fun res!974099 () Bool)

(declare-fun e!812688 () Bool)

(assert (=> b!1441676 (=> (not res!974099) (not e!812688))))

(declare-datatypes ((array!97969 0))(
  ( (array!97970 (arr!47268 (Array (_ BitVec 32) (_ BitVec 64))) (size!47819 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97969)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441676 (= res!974099 (validKeyInArray!0 (select (arr!47268 a!2862) j!93)))))

(declare-fun b!1441677 () Bool)

(declare-fun res!974095 () Bool)

(declare-fun e!812690 () Bool)

(assert (=> b!1441677 (=> (not res!974095) (not e!812690))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441677 (= res!974095 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441678 () Bool)

(declare-fun e!812687 () Bool)

(assert (=> b!1441678 (= e!812687 e!812690)))

(declare-fun res!974091 () Bool)

(assert (=> b!1441678 (=> (not res!974091) (not e!812690))))

(declare-datatypes ((SeekEntryResult!11543 0))(
  ( (MissingZero!11543 (index!48563 (_ BitVec 32))) (Found!11543 (index!48564 (_ BitVec 32))) (Intermediate!11543 (undefined!12355 Bool) (index!48565 (_ BitVec 32)) (x!130275 (_ BitVec 32))) (Undefined!11543) (MissingVacant!11543 (index!48566 (_ BitVec 32))) )
))
(declare-fun lt!633291 () SeekEntryResult!11543)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441678 (= res!974091 (= lt!633291 (Intermediate!11543 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633289 () (_ BitVec 64))

(declare-fun lt!633288 () array!97969)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97969 (_ BitVec 32)) SeekEntryResult!11543)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441678 (= lt!633291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633289 mask!2687) lt!633289 lt!633288 mask!2687))))

(assert (=> b!1441678 (= lt!633289 (select (store (arr!47268 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441679 () Bool)

(declare-fun e!812685 () Bool)

(assert (=> b!1441679 (= e!812688 e!812685)))

(declare-fun res!974090 () Bool)

(assert (=> b!1441679 (=> (not res!974090) (not e!812685))))

(assert (=> b!1441679 (= res!974090 (= (select (store (arr!47268 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441679 (= lt!633288 (array!97970 (store (arr!47268 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47819 a!2862)))))

(declare-fun b!1441680 () Bool)

(declare-fun res!974100 () Bool)

(assert (=> b!1441680 (=> (not res!974100) (not e!812688))))

(declare-datatypes ((List!33949 0))(
  ( (Nil!33946) (Cons!33945 (h!35295 (_ BitVec 64)) (t!48650 List!33949)) )
))
(declare-fun arrayNoDuplicates!0 (array!97969 (_ BitVec 32) List!33949) Bool)

(assert (=> b!1441680 (= res!974100 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33946))))

(declare-fun b!1441681 () Bool)

(declare-fun res!974096 () Bool)

(assert (=> b!1441681 (=> (not res!974096) (not e!812687))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633292 () SeekEntryResult!11543)

(assert (=> b!1441681 (= res!974096 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47268 a!2862) j!93) a!2862 mask!2687) lt!633292))))

(declare-fun b!1441682 () Bool)

(assert (=> b!1441682 (= e!812685 e!812687)))

(declare-fun res!974097 () Bool)

(assert (=> b!1441682 (=> (not res!974097) (not e!812687))))

(assert (=> b!1441682 (= res!974097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47268 a!2862) j!93) mask!2687) (select (arr!47268 a!2862) j!93) a!2862 mask!2687) lt!633292))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1441682 (= lt!633292 (Intermediate!11543 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441683 () Bool)

(assert (=> b!1441683 (= e!812690 (not (bvsge mask!2687 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97969 (_ BitVec 32)) Bool)

(assert (=> b!1441683 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48530 0))(
  ( (Unit!48531) )
))
(declare-fun lt!633290 () Unit!48530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48530)

(assert (=> b!1441683 (= lt!633290 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441684 () Bool)

(declare-fun res!974093 () Bool)

(assert (=> b!1441684 (=> (not res!974093) (not e!812688))))

(assert (=> b!1441684 (= res!974093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441685 () Bool)

(declare-fun e!812689 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97969 (_ BitVec 32)) SeekEntryResult!11543)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97969 (_ BitVec 32)) SeekEntryResult!11543)

(assert (=> b!1441685 (= e!812689 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633289 lt!633288 mask!2687) (seekEntryOrOpen!0 lt!633289 lt!633288 mask!2687)))))

(declare-fun b!1441687 () Bool)

(assert (=> b!1441687 (= e!812689 (= lt!633291 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633289 lt!633288 mask!2687)))))

(declare-fun b!1441688 () Bool)

(declare-fun res!974092 () Bool)

(assert (=> b!1441688 (=> (not res!974092) (not e!812688))))

(assert (=> b!1441688 (= res!974092 (validKeyInArray!0 (select (arr!47268 a!2862) i!1006)))))

(declare-fun b!1441689 () Bool)

(declare-fun res!974098 () Bool)

(assert (=> b!1441689 (=> (not res!974098) (not e!812688))))

(assert (=> b!1441689 (= res!974098 (and (= (size!47819 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47819 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47819 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441690 () Bool)

(declare-fun res!974089 () Bool)

(assert (=> b!1441690 (=> (not res!974089) (not e!812688))))

(assert (=> b!1441690 (= res!974089 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47819 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47819 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47819 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441686 () Bool)

(declare-fun res!974088 () Bool)

(assert (=> b!1441686 (=> (not res!974088) (not e!812690))))

(assert (=> b!1441686 (= res!974088 e!812689)))

(declare-fun c!133307 () Bool)

(assert (=> b!1441686 (= c!133307 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!974094 () Bool)

(assert (=> start!124604 (=> (not res!974094) (not e!812688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124604 (= res!974094 (validMask!0 mask!2687))))

(assert (=> start!124604 e!812688))

(assert (=> start!124604 true))

(declare-fun array_inv!36213 (array!97969) Bool)

(assert (=> start!124604 (array_inv!36213 a!2862)))

(assert (= (and start!124604 res!974094) b!1441689))

(assert (= (and b!1441689 res!974098) b!1441688))

(assert (= (and b!1441688 res!974092) b!1441676))

(assert (= (and b!1441676 res!974099) b!1441684))

(assert (= (and b!1441684 res!974093) b!1441680))

(assert (= (and b!1441680 res!974100) b!1441690))

(assert (= (and b!1441690 res!974089) b!1441679))

(assert (= (and b!1441679 res!974090) b!1441682))

(assert (= (and b!1441682 res!974097) b!1441681))

(assert (= (and b!1441681 res!974096) b!1441678))

(assert (= (and b!1441678 res!974091) b!1441686))

(assert (= (and b!1441686 c!133307) b!1441687))

(assert (= (and b!1441686 (not c!133307)) b!1441685))

(assert (= (and b!1441686 res!974088) b!1441677))

(assert (= (and b!1441677 res!974095) b!1441683))

(declare-fun m!1330935 () Bool)

(assert (=> b!1441688 m!1330935))

(assert (=> b!1441688 m!1330935))

(declare-fun m!1330937 () Bool)

(assert (=> b!1441688 m!1330937))

(declare-fun m!1330939 () Bool)

(assert (=> b!1441687 m!1330939))

(declare-fun m!1330941 () Bool)

(assert (=> start!124604 m!1330941))

(declare-fun m!1330943 () Bool)

(assert (=> start!124604 m!1330943))

(declare-fun m!1330945 () Bool)

(assert (=> b!1441678 m!1330945))

(assert (=> b!1441678 m!1330945))

(declare-fun m!1330947 () Bool)

(assert (=> b!1441678 m!1330947))

(declare-fun m!1330949 () Bool)

(assert (=> b!1441678 m!1330949))

(declare-fun m!1330951 () Bool)

(assert (=> b!1441678 m!1330951))

(declare-fun m!1330953 () Bool)

(assert (=> b!1441683 m!1330953))

(declare-fun m!1330955 () Bool)

(assert (=> b!1441683 m!1330955))

(declare-fun m!1330957 () Bool)

(assert (=> b!1441685 m!1330957))

(declare-fun m!1330959 () Bool)

(assert (=> b!1441685 m!1330959))

(declare-fun m!1330961 () Bool)

(assert (=> b!1441681 m!1330961))

(assert (=> b!1441681 m!1330961))

(declare-fun m!1330963 () Bool)

(assert (=> b!1441681 m!1330963))

(assert (=> b!1441676 m!1330961))

(assert (=> b!1441676 m!1330961))

(declare-fun m!1330965 () Bool)

(assert (=> b!1441676 m!1330965))

(assert (=> b!1441682 m!1330961))

(assert (=> b!1441682 m!1330961))

(declare-fun m!1330967 () Bool)

(assert (=> b!1441682 m!1330967))

(assert (=> b!1441682 m!1330967))

(assert (=> b!1441682 m!1330961))

(declare-fun m!1330969 () Bool)

(assert (=> b!1441682 m!1330969))

(declare-fun m!1330971 () Bool)

(assert (=> b!1441680 m!1330971))

(declare-fun m!1330973 () Bool)

(assert (=> b!1441684 m!1330973))

(assert (=> b!1441679 m!1330949))

(declare-fun m!1330975 () Bool)

(assert (=> b!1441679 m!1330975))

(push 1)

(assert (not b!1441684))

(assert (not b!1441685))

(assert (not b!1441676))

(assert (not b!1441683))

(assert (not b!1441681))

(assert (not b!1441687))

(assert (not start!124604))

(assert (not b!1441678))

(assert (not b!1441680))

(assert (not b!1441682))

