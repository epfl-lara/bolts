; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125114 () Bool)

(assert start!125114)

(declare-fun b!1455934 () Bool)

(declare-fun res!986608 () Bool)

(declare-fun e!819224 () Bool)

(assert (=> b!1455934 (=> (not res!986608) (not e!819224))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98479 0))(
  ( (array!98480 (arr!47523 (Array (_ BitVec 32) (_ BitVec 64))) (size!48074 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98479)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1455934 (= res!986608 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48074 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48074 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48074 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!638102 () array!98479)

(declare-fun lt!638100 () (_ BitVec 64))

(declare-fun e!819226 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1455935 () Bool)

(declare-datatypes ((SeekEntryResult!11798 0))(
  ( (MissingZero!11798 (index!49583 (_ BitVec 32))) (Found!11798 (index!49584 (_ BitVec 32))) (Intermediate!11798 (undefined!12610 Bool) (index!49585 (_ BitVec 32)) (x!131210 (_ BitVec 32))) (Undefined!11798) (MissingVacant!11798 (index!49586 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98479 (_ BitVec 32)) SeekEntryResult!11798)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98479 (_ BitVec 32)) SeekEntryResult!11798)

(assert (=> b!1455935 (= e!819226 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638100 lt!638102 mask!2687) (seekEntryOrOpen!0 lt!638100 lt!638102 mask!2687)))))

(declare-fun b!1455936 () Bool)

(declare-fun res!986612 () Bool)

(assert (=> b!1455936 (=> (not res!986612) (not e!819224))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455936 (= res!986612 (validKeyInArray!0 (select (arr!47523 a!2862) i!1006)))))

(declare-fun b!1455937 () Bool)

(declare-fun res!986619 () Bool)

(declare-fun e!819230 () Bool)

(assert (=> b!1455937 (=> (not res!986619) (not e!819230))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!638103 () SeekEntryResult!11798)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98479 (_ BitVec 32)) SeekEntryResult!11798)

(assert (=> b!1455937 (= res!986619 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47523 a!2862) j!93) a!2862 mask!2687) lt!638103))))

(declare-fun lt!638105 () SeekEntryResult!11798)

(declare-fun b!1455938 () Bool)

(assert (=> b!1455938 (= e!819226 (= lt!638105 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638100 lt!638102 mask!2687)))))

(declare-fun b!1455939 () Bool)

(declare-fun e!819229 () Bool)

(declare-fun e!819225 () Bool)

(assert (=> b!1455939 (= e!819229 (not e!819225))))

(declare-fun res!986609 () Bool)

(assert (=> b!1455939 (=> res!986609 e!819225)))

(assert (=> b!1455939 (= res!986609 (or (and (= (select (arr!47523 a!2862) index!646) (select (store (arr!47523 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47523 a!2862) index!646) (select (arr!47523 a!2862) j!93))) (= (select (arr!47523 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819228 () Bool)

(assert (=> b!1455939 e!819228))

(declare-fun res!986617 () Bool)

(assert (=> b!1455939 (=> (not res!986617) (not e!819228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98479 (_ BitVec 32)) Bool)

(assert (=> b!1455939 (= res!986617 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49040 0))(
  ( (Unit!49041) )
))
(declare-fun lt!638101 () Unit!49040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49040)

(assert (=> b!1455939 (= lt!638101 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455940 () Bool)

(declare-fun e!819227 () Bool)

(assert (=> b!1455940 (= e!819227 e!819230)))

(declare-fun res!986613 () Bool)

(assert (=> b!1455940 (=> (not res!986613) (not e!819230))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455940 (= res!986613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47523 a!2862) j!93) mask!2687) (select (arr!47523 a!2862) j!93) a!2862 mask!2687) lt!638103))))

(assert (=> b!1455940 (= lt!638103 (Intermediate!11798 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455941 () Bool)

(declare-fun res!986603 () Bool)

(assert (=> b!1455941 (=> (not res!986603) (not e!819224))))

(declare-datatypes ((List!34204 0))(
  ( (Nil!34201) (Cons!34200 (h!35550 (_ BitVec 64)) (t!48905 List!34204)) )
))
(declare-fun arrayNoDuplicates!0 (array!98479 (_ BitVec 32) List!34204) Bool)

(assert (=> b!1455941 (= res!986603 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34201))))

(declare-fun b!1455942 () Bool)

(assert (=> b!1455942 (= e!819228 (and (or (= (select (arr!47523 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47523 a!2862) intermediateBeforeIndex!19) (select (arr!47523 a!2862) j!93))) (let ((bdg!53203 (select (store (arr!47523 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47523 a!2862) index!646) bdg!53203) (= (select (arr!47523 a!2862) index!646) (select (arr!47523 a!2862) j!93))) (= (select (arr!47523 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53203 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!819231 () Bool)

(declare-fun lt!638104 () (_ BitVec 32))

(declare-fun b!1455944 () Bool)

(assert (=> b!1455944 (= e!819231 (not (= lt!638105 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638104 lt!638100 lt!638102 mask!2687))))))

(declare-fun b!1455945 () Bool)

(declare-fun res!986615 () Bool)

(assert (=> b!1455945 (=> (not res!986615) (not e!819229))))

(assert (=> b!1455945 (= res!986615 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455946 () Bool)

(declare-fun res!986618 () Bool)

(assert (=> b!1455946 (=> (not res!986618) (not e!819229))))

(assert (=> b!1455946 (= res!986618 e!819226)))

(declare-fun c!134179 () Bool)

(assert (=> b!1455946 (= c!134179 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455947 () Bool)

(assert (=> b!1455947 (= e!819224 e!819227)))

(declare-fun res!986610 () Bool)

(assert (=> b!1455947 (=> (not res!986610) (not e!819227))))

(assert (=> b!1455947 (= res!986610 (= (select (store (arr!47523 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455947 (= lt!638102 (array!98480 (store (arr!47523 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48074 a!2862)))))

(declare-fun b!1455948 () Bool)

(declare-fun res!986607 () Bool)

(declare-fun e!819232 () Bool)

(assert (=> b!1455948 (=> res!986607 e!819232)))

(assert (=> b!1455948 (= res!986607 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638104 (select (arr!47523 a!2862) j!93) a!2862 mask!2687) lt!638103)))))

(declare-fun b!1455949 () Bool)

(assert (=> b!1455949 (= e!819230 e!819229)))

(declare-fun res!986604 () Bool)

(assert (=> b!1455949 (=> (not res!986604) (not e!819229))))

(assert (=> b!1455949 (= res!986604 (= lt!638105 (Intermediate!11798 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455949 (= lt!638105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638100 mask!2687) lt!638100 lt!638102 mask!2687))))

(assert (=> b!1455949 (= lt!638100 (select (store (arr!47523 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun lt!638106 () SeekEntryResult!11798)

(declare-fun b!1455950 () Bool)

(assert (=> b!1455950 (= e!819231 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638104 intermediateAfterIndex!19 lt!638100 lt!638102 mask!2687) lt!638106)))))

(declare-fun b!1455951 () Bool)

(assert (=> b!1455951 (= e!819225 e!819232)))

(declare-fun res!986614 () Bool)

(assert (=> b!1455951 (=> res!986614 e!819232)))

(assert (=> b!1455951 (= res!986614 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638104 #b00000000000000000000000000000000) (bvsge lt!638104 (size!48074 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455951 (= lt!638104 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455951 (= lt!638106 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638100 lt!638102 mask!2687))))

(assert (=> b!1455951 (= lt!638106 (seekEntryOrOpen!0 lt!638100 lt!638102 mask!2687))))

(declare-fun b!1455952 () Bool)

(assert (=> b!1455952 (= e!819232 true)))

(declare-fun lt!638107 () Bool)

(assert (=> b!1455952 (= lt!638107 e!819231)))

(declare-fun c!134180 () Bool)

(assert (=> b!1455952 (= c!134180 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455953 () Bool)

(declare-fun res!986606 () Bool)

(assert (=> b!1455953 (=> (not res!986606) (not e!819224))))

(assert (=> b!1455953 (= res!986606 (validKeyInArray!0 (select (arr!47523 a!2862) j!93)))))

(declare-fun b!1455943 () Bool)

(declare-fun res!986616 () Bool)

(assert (=> b!1455943 (=> (not res!986616) (not e!819228))))

(assert (=> b!1455943 (= res!986616 (= (seekEntryOrOpen!0 (select (arr!47523 a!2862) j!93) a!2862 mask!2687) (Found!11798 j!93)))))

(declare-fun res!986602 () Bool)

(assert (=> start!125114 (=> (not res!986602) (not e!819224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125114 (= res!986602 (validMask!0 mask!2687))))

(assert (=> start!125114 e!819224))

(assert (=> start!125114 true))

(declare-fun array_inv!36468 (array!98479) Bool)

(assert (=> start!125114 (array_inv!36468 a!2862)))

(declare-fun b!1455954 () Bool)

(declare-fun res!986605 () Bool)

(assert (=> b!1455954 (=> (not res!986605) (not e!819224))))

(assert (=> b!1455954 (= res!986605 (and (= (size!48074 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48074 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48074 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455955 () Bool)

(declare-fun res!986611 () Bool)

(assert (=> b!1455955 (=> (not res!986611) (not e!819224))))

(assert (=> b!1455955 (= res!986611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125114 res!986602) b!1455954))

(assert (= (and b!1455954 res!986605) b!1455936))

(assert (= (and b!1455936 res!986612) b!1455953))

(assert (= (and b!1455953 res!986606) b!1455955))

(assert (= (and b!1455955 res!986611) b!1455941))

(assert (= (and b!1455941 res!986603) b!1455934))

(assert (= (and b!1455934 res!986608) b!1455947))

(assert (= (and b!1455947 res!986610) b!1455940))

(assert (= (and b!1455940 res!986613) b!1455937))

(assert (= (and b!1455937 res!986619) b!1455949))

(assert (= (and b!1455949 res!986604) b!1455946))

(assert (= (and b!1455946 c!134179) b!1455938))

(assert (= (and b!1455946 (not c!134179)) b!1455935))

(assert (= (and b!1455946 res!986618) b!1455945))

(assert (= (and b!1455945 res!986615) b!1455939))

(assert (= (and b!1455939 res!986617) b!1455943))

(assert (= (and b!1455943 res!986616) b!1455942))

(assert (= (and b!1455939 (not res!986609)) b!1455951))

(assert (= (and b!1455951 (not res!986614)) b!1455948))

(assert (= (and b!1455948 (not res!986607)) b!1455952))

(assert (= (and b!1455952 c!134180) b!1455944))

(assert (= (and b!1455952 (not c!134180)) b!1455950))

(declare-fun m!1344143 () Bool)

(assert (=> start!125114 m!1344143))

(declare-fun m!1344145 () Bool)

(assert (=> start!125114 m!1344145))

(declare-fun m!1344147 () Bool)

(assert (=> b!1455941 m!1344147))

(declare-fun m!1344149 () Bool)

(assert (=> b!1455951 m!1344149))

(declare-fun m!1344151 () Bool)

(assert (=> b!1455951 m!1344151))

(declare-fun m!1344153 () Bool)

(assert (=> b!1455951 m!1344153))

(declare-fun m!1344155 () Bool)

(assert (=> b!1455939 m!1344155))

(declare-fun m!1344157 () Bool)

(assert (=> b!1455939 m!1344157))

(declare-fun m!1344159 () Bool)

(assert (=> b!1455939 m!1344159))

(declare-fun m!1344161 () Bool)

(assert (=> b!1455939 m!1344161))

(declare-fun m!1344163 () Bool)

(assert (=> b!1455939 m!1344163))

(declare-fun m!1344165 () Bool)

(assert (=> b!1455939 m!1344165))

(assert (=> b!1455937 m!1344165))

(assert (=> b!1455937 m!1344165))

(declare-fun m!1344167 () Bool)

(assert (=> b!1455937 m!1344167))

(declare-fun m!1344169 () Bool)

(assert (=> b!1455955 m!1344169))

(declare-fun m!1344171 () Bool)

(assert (=> b!1455950 m!1344171))

(assert (=> b!1455948 m!1344165))

(assert (=> b!1455948 m!1344165))

(declare-fun m!1344173 () Bool)

(assert (=> b!1455948 m!1344173))

(declare-fun m!1344175 () Bool)

(assert (=> b!1455938 m!1344175))

(declare-fun m!1344177 () Bool)

(assert (=> b!1455949 m!1344177))

(assert (=> b!1455949 m!1344177))

(declare-fun m!1344179 () Bool)

(assert (=> b!1455949 m!1344179))

(assert (=> b!1455949 m!1344157))

(declare-fun m!1344181 () Bool)

(assert (=> b!1455949 m!1344181))

(declare-fun m!1344183 () Bool)

(assert (=> b!1455936 m!1344183))

(assert (=> b!1455936 m!1344183))

(declare-fun m!1344185 () Bool)

(assert (=> b!1455936 m!1344185))

(declare-fun m!1344187 () Bool)

(assert (=> b!1455944 m!1344187))

(assert (=> b!1455935 m!1344151))

(assert (=> b!1455935 m!1344153))

(assert (=> b!1455943 m!1344165))

(assert (=> b!1455943 m!1344165))

(declare-fun m!1344189 () Bool)

(assert (=> b!1455943 m!1344189))

(assert (=> b!1455942 m!1344157))

(declare-fun m!1344191 () Bool)

(assert (=> b!1455942 m!1344191))

(assert (=> b!1455942 m!1344159))

(assert (=> b!1455942 m!1344161))

(assert (=> b!1455942 m!1344165))

(assert (=> b!1455953 m!1344165))

(assert (=> b!1455953 m!1344165))

(declare-fun m!1344193 () Bool)

(assert (=> b!1455953 m!1344193))

(assert (=> b!1455947 m!1344157))

(declare-fun m!1344195 () Bool)

(assert (=> b!1455947 m!1344195))

(assert (=> b!1455940 m!1344165))

(assert (=> b!1455940 m!1344165))

(declare-fun m!1344197 () Bool)

(assert (=> b!1455940 m!1344197))

(assert (=> b!1455940 m!1344197))

(assert (=> b!1455940 m!1344165))

(declare-fun m!1344199 () Bool)

(assert (=> b!1455940 m!1344199))

(push 1)

