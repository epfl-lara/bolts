; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126448 () Bool)

(assert start!126448)

(declare-fun b!1482093 () Bool)

(declare-fun res!1007446 () Bool)

(declare-fun e!831164 () Bool)

(assert (=> b!1482093 (=> (not res!1007446) (not e!831164))))

(declare-datatypes ((array!99384 0))(
  ( (array!99385 (arr!47965 (Array (_ BitVec 32) (_ BitVec 64))) (size!48516 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99384)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482093 (= res!1007446 (validKeyInArray!0 (select (arr!47965 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!831162 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1482094 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482094 (= e!831162 (and (or (= (select (arr!47965 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47965 a!2862) intermediateBeforeIndex!19) (select (arr!47965 a!2862) j!93))) (or (and (= (select (arr!47965 a!2862) index!646) (select (store (arr!47965 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47965 a!2862) index!646) (select (arr!47965 a!2862) j!93))) (= (select (arr!47965 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47965 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482095 () Bool)

(declare-fun res!1007454 () Bool)

(assert (=> b!1482095 (=> (not res!1007454) (not e!831162))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12228 0))(
  ( (MissingZero!12228 (index!51303 (_ BitVec 32))) (Found!12228 (index!51304 (_ BitVec 32))) (Intermediate!12228 (undefined!13040 Bool) (index!51305 (_ BitVec 32)) (x!132890 (_ BitVec 32))) (Undefined!12228) (MissingVacant!12228 (index!51306 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99384 (_ BitVec 32)) SeekEntryResult!12228)

(assert (=> b!1482095 (= res!1007454 (= (seekEntryOrOpen!0 (select (arr!47965 a!2862) j!93) a!2862 mask!2687) (Found!12228 j!93)))))

(declare-fun b!1482096 () Bool)

(declare-fun res!1007448 () Bool)

(assert (=> b!1482096 (=> (not res!1007448) (not e!831164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99384 (_ BitVec 32)) Bool)

(assert (=> b!1482096 (= res!1007448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482097 () Bool)

(declare-fun res!1007440 () Bool)

(assert (=> b!1482097 (=> (not res!1007440) (not e!831164))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482097 (= res!1007440 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48516 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48516 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48516 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482098 () Bool)

(declare-fun res!1007442 () Bool)

(assert (=> b!1482098 (=> (not res!1007442) (not e!831164))))

(assert (=> b!1482098 (= res!1007442 (and (= (size!48516 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48516 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48516 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482099 () Bool)

(declare-fun e!831166 () Bool)

(declare-fun e!831163 () Bool)

(assert (=> b!1482099 (= e!831166 e!831163)))

(declare-fun res!1007444 () Bool)

(assert (=> b!1482099 (=> (not res!1007444) (not e!831163))))

(declare-fun lt!646932 () SeekEntryResult!12228)

(assert (=> b!1482099 (= res!1007444 (= lt!646932 (Intermediate!12228 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646933 () array!99384)

(declare-fun lt!646936 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99384 (_ BitVec 32)) SeekEntryResult!12228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482099 (= lt!646932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646936 mask!2687) lt!646936 lt!646933 mask!2687))))

(assert (=> b!1482099 (= lt!646936 (select (store (arr!47965 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482100 () Bool)

(assert (=> b!1482100 (= e!831163 (not true))))

(assert (=> b!1482100 e!831162))

(declare-fun res!1007445 () Bool)

(assert (=> b!1482100 (=> (not res!1007445) (not e!831162))))

(assert (=> b!1482100 (= res!1007445 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49744 0))(
  ( (Unit!49745) )
))
(declare-fun lt!646935 () Unit!49744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49744)

(assert (=> b!1482100 (= lt!646935 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482101 () Bool)

(declare-fun res!1007452 () Bool)

(assert (=> b!1482101 (=> (not res!1007452) (not e!831164))))

(assert (=> b!1482101 (= res!1007452 (validKeyInArray!0 (select (arr!47965 a!2862) i!1006)))))

(declare-fun b!1482102 () Bool)

(declare-fun e!831161 () Bool)

(assert (=> b!1482102 (= e!831161 (= lt!646932 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646936 lt!646933 mask!2687)))))

(declare-fun b!1482104 () Bool)

(declare-fun e!831167 () Bool)

(assert (=> b!1482104 (= e!831167 e!831166)))

(declare-fun res!1007447 () Bool)

(assert (=> b!1482104 (=> (not res!1007447) (not e!831166))))

(declare-fun lt!646934 () SeekEntryResult!12228)

(assert (=> b!1482104 (= res!1007447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47965 a!2862) j!93) mask!2687) (select (arr!47965 a!2862) j!93) a!2862 mask!2687) lt!646934))))

(assert (=> b!1482104 (= lt!646934 (Intermediate!12228 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482105 () Bool)

(assert (=> b!1482105 (= e!831164 e!831167)))

(declare-fun res!1007450 () Bool)

(assert (=> b!1482105 (=> (not res!1007450) (not e!831167))))

(assert (=> b!1482105 (= res!1007450 (= (select (store (arr!47965 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482105 (= lt!646933 (array!99385 (store (arr!47965 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48516 a!2862)))))

(declare-fun b!1482106 () Bool)

(declare-fun res!1007441 () Bool)

(assert (=> b!1482106 (=> (not res!1007441) (not e!831163))))

(assert (=> b!1482106 (= res!1007441 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482107 () Bool)

(declare-fun res!1007443 () Bool)

(assert (=> b!1482107 (=> (not res!1007443) (not e!831166))))

(assert (=> b!1482107 (= res!1007443 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47965 a!2862) j!93) a!2862 mask!2687) lt!646934))))

(declare-fun b!1482108 () Bool)

(declare-fun res!1007453 () Bool)

(assert (=> b!1482108 (=> (not res!1007453) (not e!831164))))

(declare-datatypes ((List!34646 0))(
  ( (Nil!34643) (Cons!34642 (h!36013 (_ BitVec 64)) (t!49347 List!34646)) )
))
(declare-fun arrayNoDuplicates!0 (array!99384 (_ BitVec 32) List!34646) Bool)

(assert (=> b!1482108 (= res!1007453 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34643))))

(declare-fun b!1482109 () Bool)

(declare-fun res!1007449 () Bool)

(assert (=> b!1482109 (=> (not res!1007449) (not e!831163))))

(assert (=> b!1482109 (= res!1007449 e!831161)))

(declare-fun c!136850 () Bool)

(assert (=> b!1482109 (= c!136850 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1007451 () Bool)

(assert (=> start!126448 (=> (not res!1007451) (not e!831164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126448 (= res!1007451 (validMask!0 mask!2687))))

(assert (=> start!126448 e!831164))

(assert (=> start!126448 true))

(declare-fun array_inv!36910 (array!99384) Bool)

(assert (=> start!126448 (array_inv!36910 a!2862)))

(declare-fun b!1482103 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99384 (_ BitVec 32)) SeekEntryResult!12228)

(assert (=> b!1482103 (= e!831161 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646936 lt!646933 mask!2687) (seekEntryOrOpen!0 lt!646936 lt!646933 mask!2687)))))

(assert (= (and start!126448 res!1007451) b!1482098))

(assert (= (and b!1482098 res!1007442) b!1482101))

(assert (= (and b!1482101 res!1007452) b!1482093))

(assert (= (and b!1482093 res!1007446) b!1482096))

(assert (= (and b!1482096 res!1007448) b!1482108))

(assert (= (and b!1482108 res!1007453) b!1482097))

(assert (= (and b!1482097 res!1007440) b!1482105))

(assert (= (and b!1482105 res!1007450) b!1482104))

(assert (= (and b!1482104 res!1007447) b!1482107))

(assert (= (and b!1482107 res!1007443) b!1482099))

(assert (= (and b!1482099 res!1007444) b!1482109))

(assert (= (and b!1482109 c!136850) b!1482102))

(assert (= (and b!1482109 (not c!136850)) b!1482103))

(assert (= (and b!1482109 res!1007449) b!1482106))

(assert (= (and b!1482106 res!1007441) b!1482100))

(assert (= (and b!1482100 res!1007445) b!1482095))

(assert (= (and b!1482095 res!1007454) b!1482094))

(declare-fun m!1367877 () Bool)

(assert (=> b!1482094 m!1367877))

(declare-fun m!1367879 () Bool)

(assert (=> b!1482094 m!1367879))

(declare-fun m!1367881 () Bool)

(assert (=> b!1482094 m!1367881))

(declare-fun m!1367883 () Bool)

(assert (=> b!1482094 m!1367883))

(declare-fun m!1367885 () Bool)

(assert (=> b!1482094 m!1367885))

(declare-fun m!1367887 () Bool)

(assert (=> b!1482102 m!1367887))

(assert (=> b!1482095 m!1367885))

(assert (=> b!1482095 m!1367885))

(declare-fun m!1367889 () Bool)

(assert (=> b!1482095 m!1367889))

(assert (=> b!1482105 m!1367877))

(declare-fun m!1367891 () Bool)

(assert (=> b!1482105 m!1367891))

(assert (=> b!1482104 m!1367885))

(assert (=> b!1482104 m!1367885))

(declare-fun m!1367893 () Bool)

(assert (=> b!1482104 m!1367893))

(assert (=> b!1482104 m!1367893))

(assert (=> b!1482104 m!1367885))

(declare-fun m!1367895 () Bool)

(assert (=> b!1482104 m!1367895))

(declare-fun m!1367897 () Bool)

(assert (=> b!1482099 m!1367897))

(assert (=> b!1482099 m!1367897))

(declare-fun m!1367899 () Bool)

(assert (=> b!1482099 m!1367899))

(assert (=> b!1482099 m!1367877))

(declare-fun m!1367901 () Bool)

(assert (=> b!1482099 m!1367901))

(assert (=> b!1482093 m!1367885))

(assert (=> b!1482093 m!1367885))

(declare-fun m!1367903 () Bool)

(assert (=> b!1482093 m!1367903))

(declare-fun m!1367905 () Bool)

(assert (=> b!1482101 m!1367905))

(assert (=> b!1482101 m!1367905))

(declare-fun m!1367907 () Bool)

(assert (=> b!1482101 m!1367907))

(declare-fun m!1367909 () Bool)

(assert (=> b!1482108 m!1367909))

(assert (=> b!1482107 m!1367885))

(assert (=> b!1482107 m!1367885))

(declare-fun m!1367911 () Bool)

(assert (=> b!1482107 m!1367911))

(declare-fun m!1367913 () Bool)

(assert (=> b!1482096 m!1367913))

(declare-fun m!1367915 () Bool)

(assert (=> start!126448 m!1367915))

(declare-fun m!1367917 () Bool)

(assert (=> start!126448 m!1367917))

(declare-fun m!1367919 () Bool)

(assert (=> b!1482103 m!1367919))

(declare-fun m!1367921 () Bool)

(assert (=> b!1482103 m!1367921))

(declare-fun m!1367923 () Bool)

(assert (=> b!1482100 m!1367923))

(declare-fun m!1367925 () Bool)

(assert (=> b!1482100 m!1367925))

(push 1)

