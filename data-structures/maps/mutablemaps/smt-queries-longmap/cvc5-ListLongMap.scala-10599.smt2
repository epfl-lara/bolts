; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124774 () Bool)

(assert start!124774)

(declare-fun b!1446036 () Bool)

(declare-fun res!977943 () Bool)

(declare-fun e!814506 () Bool)

(assert (=> b!1446036 (=> (not res!977943) (not e!814506))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446036 (= res!977943 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!977939 () Bool)

(declare-fun e!814508 () Bool)

(assert (=> start!124774 (=> (not res!977939) (not e!814508))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124774 (= res!977939 (validMask!0 mask!2687))))

(assert (=> start!124774 e!814508))

(assert (=> start!124774 true))

(declare-datatypes ((array!98139 0))(
  ( (array!98140 (arr!47353 (Array (_ BitVec 32) (_ BitVec 64))) (size!47904 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98139)

(declare-fun array_inv!36298 (array!98139) Bool)

(assert (=> start!124774 (array_inv!36298 a!2862)))

(declare-fun b!1446037 () Bool)

(declare-fun res!977944 () Bool)

(assert (=> b!1446037 (=> (not res!977944) (not e!814508))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1446037 (= res!977944 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47904 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47904 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47904 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!814510 () Bool)

(declare-fun b!1446038 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1446038 (= e!814510 (or (= (select (arr!47353 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47353 a!2862) intermediateBeforeIndex!19) (select (arr!47353 a!2862) j!93))))))

(declare-fun b!1446039 () Bool)

(declare-fun e!814509 () Bool)

(assert (=> b!1446039 (= e!814508 e!814509)))

(declare-fun res!977952 () Bool)

(assert (=> b!1446039 (=> (not res!977952) (not e!814509))))

(assert (=> b!1446039 (= res!977952 (= (select (store (arr!47353 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634638 () array!98139)

(assert (=> b!1446039 (= lt!634638 (array!98140 (store (arr!47353 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47904 a!2862)))))

(declare-fun lt!634637 () (_ BitVec 64))

(declare-fun b!1446040 () Bool)

(declare-fun e!814505 () Bool)

(declare-datatypes ((SeekEntryResult!11628 0))(
  ( (MissingZero!11628 (index!48903 (_ BitVec 32))) (Found!11628 (index!48904 (_ BitVec 32))) (Intermediate!11628 (undefined!12440 Bool) (index!48905 (_ BitVec 32)) (x!130592 (_ BitVec 32))) (Undefined!11628) (MissingVacant!11628 (index!48906 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98139 (_ BitVec 32)) SeekEntryResult!11628)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98139 (_ BitVec 32)) SeekEntryResult!11628)

(assert (=> b!1446040 (= e!814505 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634637 lt!634638 mask!2687) (seekEntryOrOpen!0 lt!634637 lt!634638 mask!2687)))))

(declare-fun b!1446041 () Bool)

(assert (=> b!1446041 (= e!814506 (not true))))

(assert (=> b!1446041 e!814510))

(declare-fun res!977951 () Bool)

(assert (=> b!1446041 (=> (not res!977951) (not e!814510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98139 (_ BitVec 32)) Bool)

(assert (=> b!1446041 (= res!977951 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48700 0))(
  ( (Unit!48701) )
))
(declare-fun lt!634635 () Unit!48700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48700)

(assert (=> b!1446041 (= lt!634635 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446042 () Bool)

(declare-fun res!977945 () Bool)

(declare-fun e!814507 () Bool)

(assert (=> b!1446042 (=> (not res!977945) (not e!814507))))

(declare-fun lt!634639 () SeekEntryResult!11628)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98139 (_ BitVec 32)) SeekEntryResult!11628)

(assert (=> b!1446042 (= res!977945 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47353 a!2862) j!93) a!2862 mask!2687) lt!634639))))

(declare-fun b!1446043 () Bool)

(assert (=> b!1446043 (= e!814507 e!814506)))

(declare-fun res!977947 () Bool)

(assert (=> b!1446043 (=> (not res!977947) (not e!814506))))

(declare-fun lt!634636 () SeekEntryResult!11628)

(assert (=> b!1446043 (= res!977947 (= lt!634636 (Intermediate!11628 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446043 (= lt!634636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634637 mask!2687) lt!634637 lt!634638 mask!2687))))

(assert (=> b!1446043 (= lt!634637 (select (store (arr!47353 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446044 () Bool)

(declare-fun res!977946 () Bool)

(assert (=> b!1446044 (=> (not res!977946) (not e!814508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446044 (= res!977946 (validKeyInArray!0 (select (arr!47353 a!2862) j!93)))))

(declare-fun b!1446045 () Bool)

(declare-fun res!977941 () Bool)

(assert (=> b!1446045 (=> (not res!977941) (not e!814510))))

(assert (=> b!1446045 (= res!977941 (= (seekEntryOrOpen!0 (select (arr!47353 a!2862) j!93) a!2862 mask!2687) (Found!11628 j!93)))))

(declare-fun b!1446046 () Bool)

(declare-fun res!977949 () Bool)

(assert (=> b!1446046 (=> (not res!977949) (not e!814508))))

(assert (=> b!1446046 (= res!977949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446047 () Bool)

(assert (=> b!1446047 (= e!814509 e!814507)))

(declare-fun res!977950 () Bool)

(assert (=> b!1446047 (=> (not res!977950) (not e!814507))))

(assert (=> b!1446047 (= res!977950 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47353 a!2862) j!93) mask!2687) (select (arr!47353 a!2862) j!93) a!2862 mask!2687) lt!634639))))

(assert (=> b!1446047 (= lt!634639 (Intermediate!11628 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446048 () Bool)

(declare-fun res!977940 () Bool)

(assert (=> b!1446048 (=> (not res!977940) (not e!814508))))

(assert (=> b!1446048 (= res!977940 (and (= (size!47904 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47904 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47904 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446049 () Bool)

(assert (=> b!1446049 (= e!814505 (= lt!634636 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634637 lt!634638 mask!2687)))))

(declare-fun b!1446050 () Bool)

(declare-fun res!977948 () Bool)

(assert (=> b!1446050 (=> (not res!977948) (not e!814508))))

(assert (=> b!1446050 (= res!977948 (validKeyInArray!0 (select (arr!47353 a!2862) i!1006)))))

(declare-fun b!1446051 () Bool)

(declare-fun res!977938 () Bool)

(assert (=> b!1446051 (=> (not res!977938) (not e!814508))))

(declare-datatypes ((List!34034 0))(
  ( (Nil!34031) (Cons!34030 (h!35380 (_ BitVec 64)) (t!48735 List!34034)) )
))
(declare-fun arrayNoDuplicates!0 (array!98139 (_ BitVec 32) List!34034) Bool)

(assert (=> b!1446051 (= res!977938 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34031))))

(declare-fun b!1446052 () Bool)

(declare-fun res!977942 () Bool)

(assert (=> b!1446052 (=> (not res!977942) (not e!814506))))

(assert (=> b!1446052 (= res!977942 e!814505)))

(declare-fun c!133562 () Bool)

(assert (=> b!1446052 (= c!133562 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124774 res!977939) b!1446048))

(assert (= (and b!1446048 res!977940) b!1446050))

(assert (= (and b!1446050 res!977948) b!1446044))

(assert (= (and b!1446044 res!977946) b!1446046))

(assert (= (and b!1446046 res!977949) b!1446051))

(assert (= (and b!1446051 res!977938) b!1446037))

(assert (= (and b!1446037 res!977944) b!1446039))

(assert (= (and b!1446039 res!977952) b!1446047))

(assert (= (and b!1446047 res!977950) b!1446042))

(assert (= (and b!1446042 res!977945) b!1446043))

(assert (= (and b!1446043 res!977947) b!1446052))

(assert (= (and b!1446052 c!133562) b!1446049))

(assert (= (and b!1446052 (not c!133562)) b!1446040))

(assert (= (and b!1446052 res!977942) b!1446036))

(assert (= (and b!1446036 res!977943) b!1446041))

(assert (= (and b!1446041 res!977951) b!1446045))

(assert (= (and b!1446045 res!977941) b!1446038))

(declare-fun m!1334997 () Bool)

(assert (=> b!1446050 m!1334997))

(assert (=> b!1446050 m!1334997))

(declare-fun m!1334999 () Bool)

(assert (=> b!1446050 m!1334999))

(declare-fun m!1335001 () Bool)

(assert (=> b!1446049 m!1335001))

(declare-fun m!1335003 () Bool)

(assert (=> b!1446039 m!1335003))

(declare-fun m!1335005 () Bool)

(assert (=> b!1446039 m!1335005))

(declare-fun m!1335007 () Bool)

(assert (=> b!1446044 m!1335007))

(assert (=> b!1446044 m!1335007))

(declare-fun m!1335009 () Bool)

(assert (=> b!1446044 m!1335009))

(assert (=> b!1446047 m!1335007))

(assert (=> b!1446047 m!1335007))

(declare-fun m!1335011 () Bool)

(assert (=> b!1446047 m!1335011))

(assert (=> b!1446047 m!1335011))

(assert (=> b!1446047 m!1335007))

(declare-fun m!1335013 () Bool)

(assert (=> b!1446047 m!1335013))

(declare-fun m!1335015 () Bool)

(assert (=> b!1446046 m!1335015))

(assert (=> b!1446045 m!1335007))

(assert (=> b!1446045 m!1335007))

(declare-fun m!1335017 () Bool)

(assert (=> b!1446045 m!1335017))

(declare-fun m!1335019 () Bool)

(assert (=> b!1446043 m!1335019))

(assert (=> b!1446043 m!1335019))

(declare-fun m!1335021 () Bool)

(assert (=> b!1446043 m!1335021))

(assert (=> b!1446043 m!1335003))

(declare-fun m!1335023 () Bool)

(assert (=> b!1446043 m!1335023))

(declare-fun m!1335025 () Bool)

(assert (=> start!124774 m!1335025))

(declare-fun m!1335027 () Bool)

(assert (=> start!124774 m!1335027))

(declare-fun m!1335029 () Bool)

(assert (=> b!1446038 m!1335029))

(assert (=> b!1446038 m!1335007))

(declare-fun m!1335031 () Bool)

(assert (=> b!1446041 m!1335031))

(declare-fun m!1335033 () Bool)

(assert (=> b!1446041 m!1335033))

(declare-fun m!1335035 () Bool)

(assert (=> b!1446051 m!1335035))

(assert (=> b!1446042 m!1335007))

(assert (=> b!1446042 m!1335007))

(declare-fun m!1335037 () Bool)

(assert (=> b!1446042 m!1335037))

(declare-fun m!1335039 () Bool)

(assert (=> b!1446040 m!1335039))

(declare-fun m!1335041 () Bool)

(assert (=> b!1446040 m!1335041))

(push 1)

