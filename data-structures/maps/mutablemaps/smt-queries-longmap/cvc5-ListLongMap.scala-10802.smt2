; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126442 () Bool)

(assert start!126442)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99378 0))(
  ( (array!99379 (arr!47962 (Array (_ BitVec 32) (_ BitVec 64))) (size!48513 (_ BitVec 32))) )
))
(declare-fun lt!646887 () array!99378)

(declare-fun lt!646890 () (_ BitVec 64))

(declare-fun e!831101 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1481940 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12225 0))(
  ( (MissingZero!12225 (index!51291 (_ BitVec 32))) (Found!12225 (index!51292 (_ BitVec 32))) (Intermediate!12225 (undefined!13037 Bool) (index!51293 (_ BitVec 32)) (x!132879 (_ BitVec 32))) (Undefined!12225) (MissingVacant!12225 (index!51294 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99378 (_ BitVec 32)) SeekEntryResult!12225)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99378 (_ BitVec 32)) SeekEntryResult!12225)

(assert (=> b!1481940 (= e!831101 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646890 lt!646887 mask!2687) (seekEntryOrOpen!0 lt!646890 lt!646887 mask!2687)))))

(declare-fun b!1481941 () Bool)

(declare-fun res!1007316 () Bool)

(declare-fun e!831103 () Bool)

(assert (=> b!1481941 (=> (not res!1007316) (not e!831103))))

(assert (=> b!1481941 (= res!1007316 e!831101)))

(declare-fun c!136841 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481941 (= c!136841 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481942 () Bool)

(declare-fun res!1007309 () Bool)

(declare-fun e!831098 () Bool)

(assert (=> b!1481942 (=> (not res!1007309) (not e!831098))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun a!2862 () array!99378)

(assert (=> b!1481942 (= res!1007309 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48513 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48513 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48513 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481943 () Bool)

(declare-fun res!1007315 () Bool)

(assert (=> b!1481943 (=> (not res!1007315) (not e!831098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99378 (_ BitVec 32)) Bool)

(assert (=> b!1481943 (= res!1007315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!646889 () SeekEntryResult!12225)

(declare-fun b!1481944 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99378 (_ BitVec 32)) SeekEntryResult!12225)

(assert (=> b!1481944 (= e!831101 (= lt!646889 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646890 lt!646887 mask!2687)))))

(declare-fun b!1481945 () Bool)

(assert (=> b!1481945 (= e!831103 (not true))))

(declare-fun e!831099 () Bool)

(assert (=> b!1481945 e!831099))

(declare-fun res!1007310 () Bool)

(assert (=> b!1481945 (=> (not res!1007310) (not e!831099))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1481945 (= res!1007310 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49738 0))(
  ( (Unit!49739) )
))
(declare-fun lt!646888 () Unit!49738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49738)

(assert (=> b!1481945 (= lt!646888 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481946 () Bool)

(declare-fun e!831100 () Bool)

(assert (=> b!1481946 (= e!831098 e!831100)))

(declare-fun res!1007314 () Bool)

(assert (=> b!1481946 (=> (not res!1007314) (not e!831100))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481946 (= res!1007314 (= (select (store (arr!47962 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481946 (= lt!646887 (array!99379 (store (arr!47962 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48513 a!2862)))))

(declare-fun b!1481948 () Bool)

(declare-fun res!1007312 () Bool)

(assert (=> b!1481948 (=> (not res!1007312) (not e!831103))))

(assert (=> b!1481948 (= res!1007312 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481949 () Bool)

(declare-fun res!1007313 () Bool)

(declare-fun e!831104 () Bool)

(assert (=> b!1481949 (=> (not res!1007313) (not e!831104))))

(declare-fun lt!646891 () SeekEntryResult!12225)

(assert (=> b!1481949 (= res!1007313 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47962 a!2862) j!93) a!2862 mask!2687) lt!646891))))

(declare-fun b!1481950 () Bool)

(assert (=> b!1481950 (= e!831104 e!831103)))

(declare-fun res!1007305 () Bool)

(assert (=> b!1481950 (=> (not res!1007305) (not e!831103))))

(assert (=> b!1481950 (= res!1007305 (= lt!646889 (Intermediate!12225 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481950 (= lt!646889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646890 mask!2687) lt!646890 lt!646887 mask!2687))))

(assert (=> b!1481950 (= lt!646890 (select (store (arr!47962 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481951 () Bool)

(assert (=> b!1481951 (= e!831099 (and (or (= (select (arr!47962 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47962 a!2862) intermediateBeforeIndex!19) (select (arr!47962 a!2862) j!93))) (or (and (= (select (arr!47962 a!2862) index!646) (select (store (arr!47962 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47962 a!2862) index!646) (select (arr!47962 a!2862) j!93))) (= (select (arr!47962 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47962 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481952 () Bool)

(declare-fun res!1007319 () Bool)

(assert (=> b!1481952 (=> (not res!1007319) (not e!831098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481952 (= res!1007319 (validKeyInArray!0 (select (arr!47962 a!2862) j!93)))))

(declare-fun b!1481953 () Bool)

(declare-fun res!1007308 () Bool)

(assert (=> b!1481953 (=> (not res!1007308) (not e!831098))))

(assert (=> b!1481953 (= res!1007308 (validKeyInArray!0 (select (arr!47962 a!2862) i!1006)))))

(declare-fun b!1481954 () Bool)

(declare-fun res!1007318 () Bool)

(assert (=> b!1481954 (=> (not res!1007318) (not e!831099))))

(assert (=> b!1481954 (= res!1007318 (= (seekEntryOrOpen!0 (select (arr!47962 a!2862) j!93) a!2862 mask!2687) (Found!12225 j!93)))))

(declare-fun res!1007306 () Bool)

(assert (=> start!126442 (=> (not res!1007306) (not e!831098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126442 (= res!1007306 (validMask!0 mask!2687))))

(assert (=> start!126442 e!831098))

(assert (=> start!126442 true))

(declare-fun array_inv!36907 (array!99378) Bool)

(assert (=> start!126442 (array_inv!36907 a!2862)))

(declare-fun b!1481947 () Bool)

(declare-fun res!1007307 () Bool)

(assert (=> b!1481947 (=> (not res!1007307) (not e!831098))))

(assert (=> b!1481947 (= res!1007307 (and (= (size!48513 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48513 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48513 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481955 () Bool)

(assert (=> b!1481955 (= e!831100 e!831104)))

(declare-fun res!1007317 () Bool)

(assert (=> b!1481955 (=> (not res!1007317) (not e!831104))))

(assert (=> b!1481955 (= res!1007317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47962 a!2862) j!93) mask!2687) (select (arr!47962 a!2862) j!93) a!2862 mask!2687) lt!646891))))

(assert (=> b!1481955 (= lt!646891 (Intermediate!12225 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481956 () Bool)

(declare-fun res!1007311 () Bool)

(assert (=> b!1481956 (=> (not res!1007311) (not e!831098))))

(declare-datatypes ((List!34643 0))(
  ( (Nil!34640) (Cons!34639 (h!36010 (_ BitVec 64)) (t!49344 List!34643)) )
))
(declare-fun arrayNoDuplicates!0 (array!99378 (_ BitVec 32) List!34643) Bool)

(assert (=> b!1481956 (= res!1007311 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34640))))

(assert (= (and start!126442 res!1007306) b!1481947))

(assert (= (and b!1481947 res!1007307) b!1481953))

(assert (= (and b!1481953 res!1007308) b!1481952))

(assert (= (and b!1481952 res!1007319) b!1481943))

(assert (= (and b!1481943 res!1007315) b!1481956))

(assert (= (and b!1481956 res!1007311) b!1481942))

(assert (= (and b!1481942 res!1007309) b!1481946))

(assert (= (and b!1481946 res!1007314) b!1481955))

(assert (= (and b!1481955 res!1007317) b!1481949))

(assert (= (and b!1481949 res!1007313) b!1481950))

(assert (= (and b!1481950 res!1007305) b!1481941))

(assert (= (and b!1481941 c!136841) b!1481944))

(assert (= (and b!1481941 (not c!136841)) b!1481940))

(assert (= (and b!1481941 res!1007316) b!1481948))

(assert (= (and b!1481948 res!1007312) b!1481945))

(assert (= (and b!1481945 res!1007310) b!1481954))

(assert (= (and b!1481954 res!1007318) b!1481951))

(declare-fun m!1367727 () Bool)

(assert (=> b!1481951 m!1367727))

(declare-fun m!1367729 () Bool)

(assert (=> b!1481951 m!1367729))

(declare-fun m!1367731 () Bool)

(assert (=> b!1481951 m!1367731))

(declare-fun m!1367733 () Bool)

(assert (=> b!1481951 m!1367733))

(declare-fun m!1367735 () Bool)

(assert (=> b!1481951 m!1367735))

(declare-fun m!1367737 () Bool)

(assert (=> start!126442 m!1367737))

(declare-fun m!1367739 () Bool)

(assert (=> start!126442 m!1367739))

(assert (=> b!1481955 m!1367735))

(assert (=> b!1481955 m!1367735))

(declare-fun m!1367741 () Bool)

(assert (=> b!1481955 m!1367741))

(assert (=> b!1481955 m!1367741))

(assert (=> b!1481955 m!1367735))

(declare-fun m!1367743 () Bool)

(assert (=> b!1481955 m!1367743))

(declare-fun m!1367745 () Bool)

(assert (=> b!1481944 m!1367745))

(assert (=> b!1481952 m!1367735))

(assert (=> b!1481952 m!1367735))

(declare-fun m!1367747 () Bool)

(assert (=> b!1481952 m!1367747))

(declare-fun m!1367749 () Bool)

(assert (=> b!1481950 m!1367749))

(assert (=> b!1481950 m!1367749))

(declare-fun m!1367751 () Bool)

(assert (=> b!1481950 m!1367751))

(assert (=> b!1481950 m!1367727))

(declare-fun m!1367753 () Bool)

(assert (=> b!1481950 m!1367753))

(declare-fun m!1367755 () Bool)

(assert (=> b!1481943 m!1367755))

(assert (=> b!1481949 m!1367735))

(assert (=> b!1481949 m!1367735))

(declare-fun m!1367757 () Bool)

(assert (=> b!1481949 m!1367757))

(declare-fun m!1367759 () Bool)

(assert (=> b!1481940 m!1367759))

(declare-fun m!1367761 () Bool)

(assert (=> b!1481940 m!1367761))

(declare-fun m!1367763 () Bool)

(assert (=> b!1481953 m!1367763))

(assert (=> b!1481953 m!1367763))

(declare-fun m!1367765 () Bool)

(assert (=> b!1481953 m!1367765))

(declare-fun m!1367767 () Bool)

(assert (=> b!1481945 m!1367767))

(declare-fun m!1367769 () Bool)

(assert (=> b!1481945 m!1367769))

(assert (=> b!1481946 m!1367727))

(declare-fun m!1367771 () Bool)

(assert (=> b!1481946 m!1367771))

(declare-fun m!1367773 () Bool)

(assert (=> b!1481956 m!1367773))

(assert (=> b!1481954 m!1367735))

(assert (=> b!1481954 m!1367735))

(declare-fun m!1367775 () Bool)

(assert (=> b!1481954 m!1367775))

(push 1)

