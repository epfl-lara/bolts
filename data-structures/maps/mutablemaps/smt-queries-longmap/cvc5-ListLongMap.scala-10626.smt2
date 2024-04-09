; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124936 () Bool)

(assert start!124936)

(declare-fun b!1450677 () Bool)

(declare-fun e!816893 () Bool)

(declare-fun e!816892 () Bool)

(assert (=> b!1450677 (= e!816893 e!816892)))

(declare-fun res!982102 () Bool)

(assert (=> b!1450677 (=> (not res!982102) (not e!816892))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11709 0))(
  ( (MissingZero!11709 (index!49227 (_ BitVec 32))) (Found!11709 (index!49228 (_ BitVec 32))) (Intermediate!11709 (undefined!12521 Bool) (index!49229 (_ BitVec 32)) (x!130889 (_ BitVec 32))) (Undefined!11709) (MissingVacant!11709 (index!49230 (_ BitVec 32))) )
))
(declare-fun lt!636363 () SeekEntryResult!11709)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98301 0))(
  ( (array!98302 (arr!47434 (Array (_ BitVec 32) (_ BitVec 64))) (size!47985 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98301)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98301 (_ BitVec 32)) SeekEntryResult!11709)

(assert (=> b!1450677 (= res!982102 (= lt!636363 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47434 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450678 () Bool)

(declare-fun res!982101 () Bool)

(declare-fun e!816888 () Bool)

(assert (=> b!1450678 (=> (not res!982101) (not e!816888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98301 (_ BitVec 32)) Bool)

(assert (=> b!1450678 (= res!982101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450679 () Bool)

(declare-fun res!982096 () Bool)

(assert (=> b!1450679 (=> (not res!982096) (not e!816888))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450679 (= res!982096 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47985 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47985 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47985 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450680 () Bool)

(declare-fun res!982109 () Bool)

(declare-fun e!816887 () Bool)

(assert (=> b!1450680 (=> res!982109 e!816887)))

(declare-fun lt!636366 () SeekEntryResult!11709)

(assert (=> b!1450680 (= res!982109 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47434 a!2862) j!93) a!2862 mask!2687) lt!636366)))))

(declare-fun b!1450682 () Bool)

(declare-fun res!982108 () Bool)

(assert (=> b!1450682 (=> (not res!982108) (not e!816888))))

(declare-datatypes ((List!34115 0))(
  ( (Nil!34112) (Cons!34111 (h!35461 (_ BitVec 64)) (t!48816 List!34115)) )
))
(declare-fun arrayNoDuplicates!0 (array!98301 (_ BitVec 32) List!34115) Bool)

(assert (=> b!1450682 (= res!982108 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34112))))

(declare-fun b!1450683 () Bool)

(declare-fun e!816896 () Bool)

(declare-fun lt!636365 () (_ BitVec 64))

(declare-fun lt!636361 () array!98301)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98301 (_ BitVec 32)) SeekEntryResult!11709)

(assert (=> b!1450683 (= e!816896 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636365 lt!636361 mask!2687) (seekEntryOrOpen!0 lt!636365 lt!636361 mask!2687)))))

(declare-fun b!1450684 () Bool)

(declare-fun e!816891 () Bool)

(assert (=> b!1450684 (= e!816891 e!816893)))

(declare-fun res!982107 () Bool)

(assert (=> b!1450684 (=> res!982107 e!816893)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450684 (= res!982107 (or (and (= (select (arr!47434 a!2862) index!646) (select (store (arr!47434 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47434 a!2862) index!646) (select (arr!47434 a!2862) j!93))) (not (= (select (arr!47434 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450685 () Bool)

(declare-fun res!982098 () Bool)

(assert (=> b!1450685 (=> (not res!982098) (not e!816888))))

(assert (=> b!1450685 (= res!982098 (and (= (size!47985 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47985 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47985 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450686 () Bool)

(declare-fun e!816894 () Bool)

(declare-fun e!816890 () Bool)

(assert (=> b!1450686 (= e!816894 e!816890)))

(declare-fun res!982100 () Bool)

(assert (=> b!1450686 (=> (not res!982100) (not e!816890))))

(declare-fun lt!636360 () SeekEntryResult!11709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98301 (_ BitVec 32)) SeekEntryResult!11709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450686 (= res!982100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47434 a!2862) j!93) mask!2687) (select (arr!47434 a!2862) j!93) a!2862 mask!2687) lt!636360))))

(assert (=> b!1450686 (= lt!636360 (Intermediate!11709 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450687 () Bool)

(assert (=> b!1450687 (= e!816888 e!816894)))

(declare-fun res!982106 () Bool)

(assert (=> b!1450687 (=> (not res!982106) (not e!816894))))

(assert (=> b!1450687 (= res!982106 (= (select (store (arr!47434 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450687 (= lt!636361 (array!98302 (store (arr!47434 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47985 a!2862)))))

(declare-fun b!1450688 () Bool)

(assert (=> b!1450688 (= e!816887 true)))

(assert (=> b!1450688 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636365 lt!636361 mask!2687) lt!636366)))

(declare-datatypes ((Unit!48862 0))(
  ( (Unit!48863) )
))
(declare-fun lt!636362 () Unit!48862)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48862)

(assert (=> b!1450688 (= lt!636362 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450689 () Bool)

(declare-fun res!982103 () Bool)

(declare-fun e!816895 () Bool)

(assert (=> b!1450689 (=> (not res!982103) (not e!816895))))

(assert (=> b!1450689 (= res!982103 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450690 () Bool)

(assert (=> b!1450690 (= e!816892 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450681 () Bool)

(declare-fun res!982099 () Bool)

(assert (=> b!1450681 (=> (not res!982099) (not e!816888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450681 (= res!982099 (validKeyInArray!0 (select (arr!47434 a!2862) j!93)))))

(declare-fun res!982097 () Bool)

(assert (=> start!124936 (=> (not res!982097) (not e!816888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124936 (= res!982097 (validMask!0 mask!2687))))

(assert (=> start!124936 e!816888))

(assert (=> start!124936 true))

(declare-fun array_inv!36379 (array!98301) Bool)

(assert (=> start!124936 (array_inv!36379 a!2862)))

(declare-fun lt!636364 () SeekEntryResult!11709)

(declare-fun b!1450691 () Bool)

(assert (=> b!1450691 (= e!816896 (= lt!636364 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636365 lt!636361 mask!2687)))))

(declare-fun b!1450692 () Bool)

(declare-fun res!982110 () Bool)

(assert (=> b!1450692 (=> (not res!982110) (not e!816890))))

(assert (=> b!1450692 (= res!982110 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47434 a!2862) j!93) a!2862 mask!2687) lt!636360))))

(declare-fun b!1450693 () Bool)

(declare-fun res!982104 () Bool)

(assert (=> b!1450693 (=> (not res!982104) (not e!816888))))

(assert (=> b!1450693 (= res!982104 (validKeyInArray!0 (select (arr!47434 a!2862) i!1006)))))

(declare-fun b!1450694 () Bool)

(declare-fun res!982105 () Bool)

(assert (=> b!1450694 (=> (not res!982105) (not e!816895))))

(assert (=> b!1450694 (= res!982105 e!816896)))

(declare-fun c!133805 () Bool)

(assert (=> b!1450694 (= c!133805 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450695 () Bool)

(assert (=> b!1450695 (= e!816890 e!816895)))

(declare-fun res!982095 () Bool)

(assert (=> b!1450695 (=> (not res!982095) (not e!816895))))

(assert (=> b!1450695 (= res!982095 (= lt!636364 (Intermediate!11709 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450695 (= lt!636364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636365 mask!2687) lt!636365 lt!636361 mask!2687))))

(assert (=> b!1450695 (= lt!636365 (select (store (arr!47434 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450696 () Bool)

(assert (=> b!1450696 (= e!816895 (not e!816887))))

(declare-fun res!982093 () Bool)

(assert (=> b!1450696 (=> res!982093 e!816887)))

(assert (=> b!1450696 (= res!982093 (or (and (= (select (arr!47434 a!2862) index!646) (select (store (arr!47434 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47434 a!2862) index!646) (select (arr!47434 a!2862) j!93))) (not (= (select (arr!47434 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47434 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450696 e!816891))

(declare-fun res!982094 () Bool)

(assert (=> b!1450696 (=> (not res!982094) (not e!816891))))

(assert (=> b!1450696 (= res!982094 (and (= lt!636363 lt!636366) (or (= (select (arr!47434 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47434 a!2862) intermediateBeforeIndex!19) (select (arr!47434 a!2862) j!93)))))))

(assert (=> b!1450696 (= lt!636366 (Found!11709 j!93))))

(assert (=> b!1450696 (= lt!636363 (seekEntryOrOpen!0 (select (arr!47434 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450696 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636367 () Unit!48862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48862)

(assert (=> b!1450696 (= lt!636367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124936 res!982097) b!1450685))

(assert (= (and b!1450685 res!982098) b!1450693))

(assert (= (and b!1450693 res!982104) b!1450681))

(assert (= (and b!1450681 res!982099) b!1450678))

(assert (= (and b!1450678 res!982101) b!1450682))

(assert (= (and b!1450682 res!982108) b!1450679))

(assert (= (and b!1450679 res!982096) b!1450687))

(assert (= (and b!1450687 res!982106) b!1450686))

(assert (= (and b!1450686 res!982100) b!1450692))

(assert (= (and b!1450692 res!982110) b!1450695))

(assert (= (and b!1450695 res!982095) b!1450694))

(assert (= (and b!1450694 c!133805) b!1450691))

(assert (= (and b!1450694 (not c!133805)) b!1450683))

(assert (= (and b!1450694 res!982105) b!1450689))

(assert (= (and b!1450689 res!982103) b!1450696))

(assert (= (and b!1450696 res!982094) b!1450684))

(assert (= (and b!1450684 (not res!982107)) b!1450677))

(assert (= (and b!1450677 res!982102) b!1450690))

(assert (= (and b!1450696 (not res!982093)) b!1450680))

(assert (= (and b!1450680 (not res!982109)) b!1450688))

(declare-fun m!1339359 () Bool)

(assert (=> b!1450682 m!1339359))

(declare-fun m!1339361 () Bool)

(assert (=> b!1450677 m!1339361))

(assert (=> b!1450677 m!1339361))

(declare-fun m!1339363 () Bool)

(assert (=> b!1450677 m!1339363))

(declare-fun m!1339365 () Bool)

(assert (=> b!1450695 m!1339365))

(assert (=> b!1450695 m!1339365))

(declare-fun m!1339367 () Bool)

(assert (=> b!1450695 m!1339367))

(declare-fun m!1339369 () Bool)

(assert (=> b!1450695 m!1339369))

(declare-fun m!1339371 () Bool)

(assert (=> b!1450695 m!1339371))

(assert (=> b!1450687 m!1339369))

(declare-fun m!1339373 () Bool)

(assert (=> b!1450687 m!1339373))

(declare-fun m!1339375 () Bool)

(assert (=> b!1450688 m!1339375))

(declare-fun m!1339377 () Bool)

(assert (=> b!1450688 m!1339377))

(assert (=> b!1450692 m!1339361))

(assert (=> b!1450692 m!1339361))

(declare-fun m!1339379 () Bool)

(assert (=> b!1450692 m!1339379))

(assert (=> b!1450681 m!1339361))

(assert (=> b!1450681 m!1339361))

(declare-fun m!1339381 () Bool)

(assert (=> b!1450681 m!1339381))

(declare-fun m!1339383 () Bool)

(assert (=> b!1450693 m!1339383))

(assert (=> b!1450693 m!1339383))

(declare-fun m!1339385 () Bool)

(assert (=> b!1450693 m!1339385))

(assert (=> b!1450686 m!1339361))

(assert (=> b!1450686 m!1339361))

(declare-fun m!1339387 () Bool)

(assert (=> b!1450686 m!1339387))

(assert (=> b!1450686 m!1339387))

(assert (=> b!1450686 m!1339361))

(declare-fun m!1339389 () Bool)

(assert (=> b!1450686 m!1339389))

(declare-fun m!1339391 () Bool)

(assert (=> b!1450684 m!1339391))

(assert (=> b!1450684 m!1339369))

(declare-fun m!1339393 () Bool)

(assert (=> b!1450684 m!1339393))

(assert (=> b!1450684 m!1339361))

(assert (=> b!1450683 m!1339375))

(declare-fun m!1339395 () Bool)

(assert (=> b!1450683 m!1339395))

(assert (=> b!1450680 m!1339361))

(assert (=> b!1450680 m!1339361))

(declare-fun m!1339397 () Bool)

(assert (=> b!1450680 m!1339397))

(declare-fun m!1339399 () Bool)

(assert (=> start!124936 m!1339399))

(declare-fun m!1339401 () Bool)

(assert (=> start!124936 m!1339401))

(declare-fun m!1339403 () Bool)

(assert (=> b!1450696 m!1339403))

(assert (=> b!1450696 m!1339369))

(declare-fun m!1339405 () Bool)

(assert (=> b!1450696 m!1339405))

(assert (=> b!1450696 m!1339393))

(assert (=> b!1450696 m!1339391))

(assert (=> b!1450696 m!1339361))

(declare-fun m!1339407 () Bool)

(assert (=> b!1450696 m!1339407))

(declare-fun m!1339409 () Bool)

(assert (=> b!1450696 m!1339409))

(assert (=> b!1450696 m!1339361))

(declare-fun m!1339411 () Bool)

(assert (=> b!1450691 m!1339411))

(declare-fun m!1339413 () Bool)

(assert (=> b!1450678 m!1339413))

(push 1)

