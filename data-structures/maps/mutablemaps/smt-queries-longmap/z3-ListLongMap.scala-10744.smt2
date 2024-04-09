; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125646 () Bool)

(assert start!125646)

(declare-fun b!1469846 () Bool)

(declare-fun res!998376 () Bool)

(declare-fun e!825154 () Bool)

(assert (=> b!1469846 (=> (not res!998376) (not e!825154))))

(declare-datatypes ((array!99011 0))(
  ( (array!99012 (arr!47789 (Array (_ BitVec 32) (_ BitVec 64))) (size!48340 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99011)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469846 (= res!998376 (validKeyInArray!0 (select (arr!47789 a!2862) j!93)))))

(declare-fun lt!642663 () array!99011)

(declare-fun lt!642664 () (_ BitVec 64))

(declare-fun b!1469847 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!825153 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12052 0))(
  ( (MissingZero!12052 (index!50599 (_ BitVec 32))) (Found!12052 (index!50600 (_ BitVec 32))) (Intermediate!12052 (undefined!12864 Bool) (index!50601 (_ BitVec 32)) (x!132176 (_ BitVec 32))) (Undefined!12052) (MissingVacant!12052 (index!50602 (_ BitVec 32))) )
))
(declare-fun lt!642661 () SeekEntryResult!12052)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99011 (_ BitVec 32)) SeekEntryResult!12052)

(assert (=> b!1469847 (= e!825153 (= lt!642661 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642664 lt!642663 mask!2687)))))

(declare-fun res!998380 () Bool)

(assert (=> start!125646 (=> (not res!998380) (not e!825154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125646 (= res!998380 (validMask!0 mask!2687))))

(assert (=> start!125646 e!825154))

(assert (=> start!125646 true))

(declare-fun array_inv!36734 (array!99011) Bool)

(assert (=> start!125646 (array_inv!36734 a!2862)))

(declare-fun b!1469848 () Bool)

(declare-fun res!998378 () Bool)

(declare-fun e!825151 () Bool)

(assert (=> b!1469848 (=> (not res!998378) (not e!825151))))

(declare-fun lt!642662 () SeekEntryResult!12052)

(assert (=> b!1469848 (= res!998378 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47789 a!2862) j!93) a!2862 mask!2687) lt!642662))))

(declare-fun b!1469849 () Bool)

(declare-fun e!825155 () Bool)

(assert (=> b!1469849 (= e!825151 e!825155)))

(declare-fun res!998377 () Bool)

(assert (=> b!1469849 (=> (not res!998377) (not e!825155))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469849 (= res!998377 (= lt!642661 (Intermediate!12052 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469849 (= lt!642661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642664 mask!2687) lt!642664 lt!642663 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469849 (= lt!642664 (select (store (arr!47789 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469850 () Bool)

(declare-fun res!998379 () Bool)

(assert (=> b!1469850 (=> (not res!998379) (not e!825154))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1469850 (= res!998379 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48340 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48340 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48340 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469851 () Bool)

(declare-fun e!825152 () Bool)

(assert (=> b!1469851 (= e!825154 e!825152)))

(declare-fun res!998383 () Bool)

(assert (=> b!1469851 (=> (not res!998383) (not e!825152))))

(assert (=> b!1469851 (= res!998383 (= (select (store (arr!47789 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469851 (= lt!642663 (array!99012 (store (arr!47789 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48340 a!2862)))))

(declare-fun b!1469852 () Bool)

(declare-fun res!998388 () Bool)

(assert (=> b!1469852 (=> (not res!998388) (not e!825154))))

(declare-datatypes ((List!34470 0))(
  ( (Nil!34467) (Cons!34466 (h!35816 (_ BitVec 64)) (t!49171 List!34470)) )
))
(declare-fun arrayNoDuplicates!0 (array!99011 (_ BitVec 32) List!34470) Bool)

(assert (=> b!1469852 (= res!998388 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34467))))

(declare-fun b!1469853 () Bool)

(declare-fun res!998386 () Bool)

(assert (=> b!1469853 (=> (not res!998386) (not e!825155))))

(assert (=> b!1469853 (= res!998386 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1469854 () Bool)

(declare-fun res!998385 () Bool)

(assert (=> b!1469854 (=> (not res!998385) (not e!825155))))

(assert (=> b!1469854 (= res!998385 e!825153)))

(declare-fun c!135248 () Bool)

(assert (=> b!1469854 (= c!135248 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469855 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99011 (_ BitVec 32)) SeekEntryResult!12052)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99011 (_ BitVec 32)) SeekEntryResult!12052)

(assert (=> b!1469855 (= e!825153 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642664 lt!642663 mask!2687) (seekEntryOrOpen!0 lt!642664 lt!642663 mask!2687)))))

(declare-fun b!1469856 () Bool)

(assert (=> b!1469856 (= e!825152 e!825151)))

(declare-fun res!998381 () Bool)

(assert (=> b!1469856 (=> (not res!998381) (not e!825151))))

(assert (=> b!1469856 (= res!998381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47789 a!2862) j!93) mask!2687) (select (arr!47789 a!2862) j!93) a!2862 mask!2687) lt!642662))))

(assert (=> b!1469856 (= lt!642662 (Intermediate!12052 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469857 () Bool)

(assert (=> b!1469857 (= e!825155 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99011 (_ BitVec 32)) Bool)

(assert (=> b!1469857 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49392 0))(
  ( (Unit!49393) )
))
(declare-fun lt!642660 () Unit!49392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49392)

(assert (=> b!1469857 (= lt!642660 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1469858 () Bool)

(declare-fun res!998387 () Bool)

(assert (=> b!1469858 (=> (not res!998387) (not e!825154))))

(assert (=> b!1469858 (= res!998387 (validKeyInArray!0 (select (arr!47789 a!2862) i!1006)))))

(declare-fun b!1469859 () Bool)

(declare-fun res!998384 () Bool)

(assert (=> b!1469859 (=> (not res!998384) (not e!825154))))

(assert (=> b!1469859 (= res!998384 (and (= (size!48340 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48340 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48340 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469860 () Bool)

(declare-fun res!998382 () Bool)

(assert (=> b!1469860 (=> (not res!998382) (not e!825154))))

(assert (=> b!1469860 (= res!998382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125646 res!998380) b!1469859))

(assert (= (and b!1469859 res!998384) b!1469858))

(assert (= (and b!1469858 res!998387) b!1469846))

(assert (= (and b!1469846 res!998376) b!1469860))

(assert (= (and b!1469860 res!998382) b!1469852))

(assert (= (and b!1469852 res!998388) b!1469850))

(assert (= (and b!1469850 res!998379) b!1469851))

(assert (= (and b!1469851 res!998383) b!1469856))

(assert (= (and b!1469856 res!998381) b!1469848))

(assert (= (and b!1469848 res!998378) b!1469849))

(assert (= (and b!1469849 res!998377) b!1469854))

(assert (= (and b!1469854 c!135248) b!1469847))

(assert (= (and b!1469854 (not c!135248)) b!1469855))

(assert (= (and b!1469854 res!998385) b!1469853))

(assert (= (and b!1469853 res!998386) b!1469857))

(declare-fun m!1357047 () Bool)

(assert (=> b!1469852 m!1357047))

(declare-fun m!1357049 () Bool)

(assert (=> b!1469855 m!1357049))

(declare-fun m!1357051 () Bool)

(assert (=> b!1469855 m!1357051))

(declare-fun m!1357053 () Bool)

(assert (=> b!1469851 m!1357053))

(declare-fun m!1357055 () Bool)

(assert (=> b!1469851 m!1357055))

(declare-fun m!1357057 () Bool)

(assert (=> b!1469847 m!1357057))

(declare-fun m!1357059 () Bool)

(assert (=> b!1469848 m!1357059))

(assert (=> b!1469848 m!1357059))

(declare-fun m!1357061 () Bool)

(assert (=> b!1469848 m!1357061))

(assert (=> b!1469846 m!1357059))

(assert (=> b!1469846 m!1357059))

(declare-fun m!1357063 () Bool)

(assert (=> b!1469846 m!1357063))

(declare-fun m!1357065 () Bool)

(assert (=> b!1469860 m!1357065))

(declare-fun m!1357067 () Bool)

(assert (=> start!125646 m!1357067))

(declare-fun m!1357069 () Bool)

(assert (=> start!125646 m!1357069))

(declare-fun m!1357071 () Bool)

(assert (=> b!1469857 m!1357071))

(declare-fun m!1357073 () Bool)

(assert (=> b!1469857 m!1357073))

(declare-fun m!1357075 () Bool)

(assert (=> b!1469858 m!1357075))

(assert (=> b!1469858 m!1357075))

(declare-fun m!1357077 () Bool)

(assert (=> b!1469858 m!1357077))

(assert (=> b!1469856 m!1357059))

(assert (=> b!1469856 m!1357059))

(declare-fun m!1357079 () Bool)

(assert (=> b!1469856 m!1357079))

(assert (=> b!1469856 m!1357079))

(assert (=> b!1469856 m!1357059))

(declare-fun m!1357081 () Bool)

(assert (=> b!1469856 m!1357081))

(declare-fun m!1357083 () Bool)

(assert (=> b!1469849 m!1357083))

(assert (=> b!1469849 m!1357083))

(declare-fun m!1357085 () Bool)

(assert (=> b!1469849 m!1357085))

(assert (=> b!1469849 m!1357053))

(declare-fun m!1357087 () Bool)

(assert (=> b!1469849 m!1357087))

(check-sat (not b!1469852) (not b!1469849) (not b!1469846) (not b!1469855) (not b!1469858) (not start!125646) (not b!1469847) (not b!1469856) (not b!1469848) (not b!1469857) (not b!1469860))
(check-sat)
