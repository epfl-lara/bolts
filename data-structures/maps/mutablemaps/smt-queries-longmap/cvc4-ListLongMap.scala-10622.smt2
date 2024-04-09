; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124916 () Bool)

(assert start!124916)

(declare-fun b!1450077 () Bool)

(declare-fun res!981556 () Bool)

(declare-fun e!816596 () Bool)

(assert (=> b!1450077 (=> (not res!981556) (not e!816596))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98281 0))(
  ( (array!98282 (arr!47424 (Array (_ BitVec 32) (_ BitVec 64))) (size!47975 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98281)

(assert (=> b!1450077 (= res!981556 (and (= (size!47975 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47975 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47975 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450078 () Bool)

(declare-fun res!981563 () Bool)

(assert (=> b!1450078 (=> (not res!981563) (not e!816596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450078 (= res!981563 (validKeyInArray!0 (select (arr!47424 a!2862) i!1006)))))

(declare-fun b!1450079 () Bool)

(declare-fun res!981566 () Bool)

(assert (=> b!1450079 (=> (not res!981566) (not e!816596))))

(declare-datatypes ((List!34105 0))(
  ( (Nil!34102) (Cons!34101 (h!35451 (_ BitVec 64)) (t!48806 List!34105)) )
))
(declare-fun arrayNoDuplicates!0 (array!98281 (_ BitVec 32) List!34105) Bool)

(assert (=> b!1450079 (= res!981566 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34102))))

(declare-fun b!1450080 () Bool)

(declare-fun e!816589 () Bool)

(assert (=> b!1450080 (= e!816596 e!816589)))

(declare-fun res!981562 () Bool)

(assert (=> b!1450080 (=> (not res!981562) (not e!816589))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450080 (= res!981562 (= (select (store (arr!47424 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636122 () array!98281)

(assert (=> b!1450080 (= lt!636122 (array!98282 (store (arr!47424 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47975 a!2862)))))

(declare-fun b!1450081 () Bool)

(declare-fun res!981561 () Bool)

(assert (=> b!1450081 (=> (not res!981561) (not e!816596))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1450081 (= res!981561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47975 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47975 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47975 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450082 () Bool)

(declare-fun res!981554 () Bool)

(assert (=> b!1450082 (=> (not res!981554) (not e!816596))))

(assert (=> b!1450082 (= res!981554 (validKeyInArray!0 (select (arr!47424 a!2862) j!93)))))

(declare-fun b!1450083 () Bool)

(declare-fun e!816590 () Bool)

(assert (=> b!1450083 (= e!816589 e!816590)))

(declare-fun res!981559 () Bool)

(assert (=> b!1450083 (=> (not res!981559) (not e!816590))))

(declare-datatypes ((SeekEntryResult!11699 0))(
  ( (MissingZero!11699 (index!49187 (_ BitVec 32))) (Found!11699 (index!49188 (_ BitVec 32))) (Intermediate!11699 (undefined!12511 Bool) (index!49189 (_ BitVec 32)) (x!130847 (_ BitVec 32))) (Undefined!11699) (MissingVacant!11699 (index!49190 (_ BitVec 32))) )
))
(declare-fun lt!636127 () SeekEntryResult!11699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98281 (_ BitVec 32)) SeekEntryResult!11699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450083 (= res!981559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47424 a!2862) j!93) mask!2687) (select (arr!47424 a!2862) j!93) a!2862 mask!2687) lt!636127))))

(assert (=> b!1450083 (= lt!636127 (Intermediate!11699 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450084 () Bool)

(declare-fun e!816588 () Bool)

(assert (=> b!1450084 (= e!816588 true)))

(declare-fun lt!636120 () (_ BitVec 64))

(declare-fun lt!636123 () SeekEntryResult!11699)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98281 (_ BitVec 32)) SeekEntryResult!11699)

(assert (=> b!1450084 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636120 lt!636122 mask!2687) lt!636123)))

(declare-datatypes ((Unit!48842 0))(
  ( (Unit!48843) )
))
(declare-fun lt!636124 () Unit!48842)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48842)

(assert (=> b!1450084 (= lt!636124 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450085 () Bool)

(declare-fun res!981567 () Bool)

(assert (=> b!1450085 (=> (not res!981567) (not e!816596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98281 (_ BitVec 32)) Bool)

(assert (=> b!1450085 (= res!981567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450086 () Bool)

(declare-fun e!816592 () Bool)

(declare-fun e!816593 () Bool)

(assert (=> b!1450086 (= e!816592 e!816593)))

(declare-fun res!981570 () Bool)

(assert (=> b!1450086 (=> (not res!981570) (not e!816593))))

(declare-fun lt!636125 () SeekEntryResult!11699)

(assert (=> b!1450086 (= res!981570 (= lt!636125 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47424 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450087 () Bool)

(declare-fun e!816595 () Bool)

(assert (=> b!1450087 (= e!816590 e!816595)))

(declare-fun res!981569 () Bool)

(assert (=> b!1450087 (=> (not res!981569) (not e!816595))))

(declare-fun lt!636121 () SeekEntryResult!11699)

(assert (=> b!1450087 (= res!981569 (= lt!636121 (Intermediate!11699 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450087 (= lt!636121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636120 mask!2687) lt!636120 lt!636122 mask!2687))))

(assert (=> b!1450087 (= lt!636120 (select (store (arr!47424 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450088 () Bool)

(assert (=> b!1450088 (= e!816593 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun e!816591 () Bool)

(declare-fun b!1450089 () Bool)

(assert (=> b!1450089 (= e!816591 (= lt!636121 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636120 lt!636122 mask!2687)))))

(declare-fun b!1450090 () Bool)

(declare-fun res!981564 () Bool)

(assert (=> b!1450090 (=> (not res!981564) (not e!816595))))

(assert (=> b!1450090 (= res!981564 e!816591)))

(declare-fun c!133775 () Bool)

(assert (=> b!1450090 (= c!133775 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450091 () Bool)

(declare-fun res!981568 () Bool)

(assert (=> b!1450091 (=> (not res!981568) (not e!816595))))

(assert (=> b!1450091 (= res!981568 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450092 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98281 (_ BitVec 32)) SeekEntryResult!11699)

(assert (=> b!1450092 (= e!816591 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636120 lt!636122 mask!2687) (seekEntryOrOpen!0 lt!636120 lt!636122 mask!2687)))))

(declare-fun b!1450093 () Bool)

(declare-fun res!981557 () Bool)

(assert (=> b!1450093 (=> res!981557 e!816588)))

(assert (=> b!1450093 (= res!981557 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47424 a!2862) j!93) a!2862 mask!2687) lt!636123)))))

(declare-fun b!1450094 () Bool)

(declare-fun res!981558 () Bool)

(assert (=> b!1450094 (=> (not res!981558) (not e!816590))))

(assert (=> b!1450094 (= res!981558 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47424 a!2862) j!93) a!2862 mask!2687) lt!636127))))

(declare-fun b!1450095 () Bool)

(declare-fun e!816594 () Bool)

(assert (=> b!1450095 (= e!816594 e!816592)))

(declare-fun res!981553 () Bool)

(assert (=> b!1450095 (=> res!981553 e!816592)))

(assert (=> b!1450095 (= res!981553 (or (and (= (select (arr!47424 a!2862) index!646) (select (store (arr!47424 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47424 a!2862) index!646) (select (arr!47424 a!2862) j!93))) (not (= (select (arr!47424 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450096 () Bool)

(assert (=> b!1450096 (= e!816595 (not e!816588))))

(declare-fun res!981560 () Bool)

(assert (=> b!1450096 (=> res!981560 e!816588)))

(assert (=> b!1450096 (= res!981560 (or (and (= (select (arr!47424 a!2862) index!646) (select (store (arr!47424 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47424 a!2862) index!646) (select (arr!47424 a!2862) j!93))) (not (= (select (arr!47424 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47424 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450096 e!816594))

(declare-fun res!981555 () Bool)

(assert (=> b!1450096 (=> (not res!981555) (not e!816594))))

(assert (=> b!1450096 (= res!981555 (and (= lt!636125 lt!636123) (or (= (select (arr!47424 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47424 a!2862) intermediateBeforeIndex!19) (select (arr!47424 a!2862) j!93)))))))

(assert (=> b!1450096 (= lt!636123 (Found!11699 j!93))))

(assert (=> b!1450096 (= lt!636125 (seekEntryOrOpen!0 (select (arr!47424 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450096 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636126 () Unit!48842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48842)

(assert (=> b!1450096 (= lt!636126 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!981565 () Bool)

(assert (=> start!124916 (=> (not res!981565) (not e!816596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124916 (= res!981565 (validMask!0 mask!2687))))

(assert (=> start!124916 e!816596))

(assert (=> start!124916 true))

(declare-fun array_inv!36369 (array!98281) Bool)

(assert (=> start!124916 (array_inv!36369 a!2862)))

(assert (= (and start!124916 res!981565) b!1450077))

(assert (= (and b!1450077 res!981556) b!1450078))

(assert (= (and b!1450078 res!981563) b!1450082))

(assert (= (and b!1450082 res!981554) b!1450085))

(assert (= (and b!1450085 res!981567) b!1450079))

(assert (= (and b!1450079 res!981566) b!1450081))

(assert (= (and b!1450081 res!981561) b!1450080))

(assert (= (and b!1450080 res!981562) b!1450083))

(assert (= (and b!1450083 res!981559) b!1450094))

(assert (= (and b!1450094 res!981558) b!1450087))

(assert (= (and b!1450087 res!981569) b!1450090))

(assert (= (and b!1450090 c!133775) b!1450089))

(assert (= (and b!1450090 (not c!133775)) b!1450092))

(assert (= (and b!1450090 res!981564) b!1450091))

(assert (= (and b!1450091 res!981568) b!1450096))

(assert (= (and b!1450096 res!981555) b!1450095))

(assert (= (and b!1450095 (not res!981553)) b!1450086))

(assert (= (and b!1450086 res!981570) b!1450088))

(assert (= (and b!1450096 (not res!981560)) b!1450093))

(assert (= (and b!1450093 (not res!981557)) b!1450084))

(declare-fun m!1338799 () Bool)

(assert (=> b!1450080 m!1338799))

(declare-fun m!1338801 () Bool)

(assert (=> b!1450080 m!1338801))

(declare-fun m!1338803 () Bool)

(assert (=> b!1450083 m!1338803))

(assert (=> b!1450083 m!1338803))

(declare-fun m!1338805 () Bool)

(assert (=> b!1450083 m!1338805))

(assert (=> b!1450083 m!1338805))

(assert (=> b!1450083 m!1338803))

(declare-fun m!1338807 () Bool)

(assert (=> b!1450083 m!1338807))

(declare-fun m!1338809 () Bool)

(assert (=> b!1450095 m!1338809))

(assert (=> b!1450095 m!1338799))

(declare-fun m!1338811 () Bool)

(assert (=> b!1450095 m!1338811))

(assert (=> b!1450095 m!1338803))

(declare-fun m!1338813 () Bool)

(assert (=> b!1450092 m!1338813))

(declare-fun m!1338815 () Bool)

(assert (=> b!1450092 m!1338815))

(declare-fun m!1338817 () Bool)

(assert (=> b!1450085 m!1338817))

(assert (=> b!1450082 m!1338803))

(assert (=> b!1450082 m!1338803))

(declare-fun m!1338819 () Bool)

(assert (=> b!1450082 m!1338819))

(declare-fun m!1338821 () Bool)

(assert (=> b!1450078 m!1338821))

(assert (=> b!1450078 m!1338821))

(declare-fun m!1338823 () Bool)

(assert (=> b!1450078 m!1338823))

(assert (=> b!1450084 m!1338813))

(declare-fun m!1338825 () Bool)

(assert (=> b!1450084 m!1338825))

(declare-fun m!1338827 () Bool)

(assert (=> b!1450079 m!1338827))

(declare-fun m!1338829 () Bool)

(assert (=> start!124916 m!1338829))

(declare-fun m!1338831 () Bool)

(assert (=> start!124916 m!1338831))

(declare-fun m!1338833 () Bool)

(assert (=> b!1450096 m!1338833))

(assert (=> b!1450096 m!1338799))

(declare-fun m!1338835 () Bool)

(assert (=> b!1450096 m!1338835))

(assert (=> b!1450096 m!1338811))

(assert (=> b!1450096 m!1338809))

(assert (=> b!1450096 m!1338803))

(declare-fun m!1338837 () Bool)

(assert (=> b!1450096 m!1338837))

(declare-fun m!1338839 () Bool)

(assert (=> b!1450096 m!1338839))

(assert (=> b!1450096 m!1338803))

(assert (=> b!1450086 m!1338803))

(assert (=> b!1450086 m!1338803))

(declare-fun m!1338841 () Bool)

(assert (=> b!1450086 m!1338841))

(declare-fun m!1338843 () Bool)

(assert (=> b!1450089 m!1338843))

(declare-fun m!1338845 () Bool)

(assert (=> b!1450087 m!1338845))

(assert (=> b!1450087 m!1338845))

(declare-fun m!1338847 () Bool)

(assert (=> b!1450087 m!1338847))

(assert (=> b!1450087 m!1338799))

(declare-fun m!1338849 () Bool)

(assert (=> b!1450087 m!1338849))

(assert (=> b!1450094 m!1338803))

(assert (=> b!1450094 m!1338803))

(declare-fun m!1338851 () Bool)

(assert (=> b!1450094 m!1338851))

(assert (=> b!1450093 m!1338803))

(assert (=> b!1450093 m!1338803))

(declare-fun m!1338853 () Bool)

(assert (=> b!1450093 m!1338853))

(push 1)

