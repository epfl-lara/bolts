; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126304 () Bool)

(assert start!126304)

(declare-fun b!1480053 () Bool)

(declare-fun e!830187 () Bool)

(declare-fun e!830182 () Bool)

(assert (=> b!1480053 (= e!830187 e!830182)))

(declare-fun res!1006006 () Bool)

(assert (=> b!1480053 (=> (not res!1006006) (not e!830182))))

(declare-datatypes ((SeekEntryResult!12201 0))(
  ( (MissingZero!12201 (index!51195 (_ BitVec 32))) (Found!12201 (index!51196 (_ BitVec 32))) (Intermediate!12201 (undefined!13013 Bool) (index!51197 (_ BitVec 32)) (x!132779 (_ BitVec 32))) (Undefined!12201) (MissingVacant!12201 (index!51198 (_ BitVec 32))) )
))
(declare-fun lt!646243 () SeekEntryResult!12201)

(declare-datatypes ((array!99327 0))(
  ( (array!99328 (arr!47938 (Array (_ BitVec 32) (_ BitVec 64))) (size!48489 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99327)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99327 (_ BitVec 32)) SeekEntryResult!12201)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480053 (= res!1006006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47938 a!2862) j!93) mask!2687) (select (arr!47938 a!2862) j!93) a!2862 mask!2687) lt!646243))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1480053 (= lt!646243 (Intermediate!12201 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1480054 () Bool)

(declare-fun res!1006008 () Bool)

(declare-fun e!830181 () Bool)

(assert (=> b!1480054 (=> (not res!1006008) (not e!830181))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1480054 (= res!1006008 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48489 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48489 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48489 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1480055 () Bool)

(declare-fun res!1006009 () Bool)

(assert (=> b!1480055 (=> (not res!1006009) (not e!830181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480055 (= res!1006009 (validKeyInArray!0 (select (arr!47938 a!2862) j!93)))))

(declare-fun b!1480056 () Bool)

(declare-fun res!1006014 () Bool)

(assert (=> b!1480056 (=> (not res!1006014) (not e!830182))))

(assert (=> b!1480056 (= res!1006014 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47938 a!2862) j!93) a!2862 mask!2687) lt!646243))))

(declare-fun e!830186 () Bool)

(declare-fun b!1480057 () Bool)

(assert (=> b!1480057 (= e!830186 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1480058 () Bool)

(declare-fun lt!646248 () SeekEntryResult!12201)

(declare-fun lt!646247 () array!99327)

(declare-fun e!830189 () Bool)

(declare-fun lt!646249 () (_ BitVec 64))

(assert (=> b!1480058 (= e!830189 (= lt!646248 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646249 lt!646247 mask!2687)))))

(declare-fun b!1480059 () Bool)

(declare-fun res!1006013 () Bool)

(declare-fun e!830185 () Bool)

(assert (=> b!1480059 (=> (not res!1006013) (not e!830185))))

(assert (=> b!1480059 (= res!1006013 e!830189)))

(declare-fun c!136550 () Bool)

(assert (=> b!1480059 (= c!136550 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480060 () Bool)

(declare-fun res!1005997 () Bool)

(assert (=> b!1480060 (=> (not res!1005997) (not e!830181))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1480060 (= res!1005997 (and (= (size!48489 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48489 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48489 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1480061 () Bool)

(declare-fun res!1006003 () Bool)

(assert (=> b!1480061 (=> (not res!1006003) (not e!830181))))

(assert (=> b!1480061 (= res!1006003 (validKeyInArray!0 (select (arr!47938 a!2862) i!1006)))))

(declare-fun b!1480062 () Bool)

(declare-fun e!830180 () Bool)

(assert (=> b!1480062 (= e!830180 e!830186)))

(declare-fun res!1006000 () Bool)

(assert (=> b!1480062 (=> (not res!1006000) (not e!830186))))

(declare-fun lt!646245 () SeekEntryResult!12201)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99327 (_ BitVec 32)) SeekEntryResult!12201)

(assert (=> b!1480062 (= res!1006000 (= lt!646245 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47938 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1006012 () Bool)

(assert (=> start!126304 (=> (not res!1006012) (not e!830181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126304 (= res!1006012 (validMask!0 mask!2687))))

(assert (=> start!126304 e!830181))

(assert (=> start!126304 true))

(declare-fun array_inv!36883 (array!99327) Bool)

(assert (=> start!126304 (array_inv!36883 a!2862)))

(declare-fun b!1480063 () Bool)

(assert (=> b!1480063 (= e!830182 e!830185)))

(declare-fun res!1006011 () Bool)

(assert (=> b!1480063 (=> (not res!1006011) (not e!830185))))

(assert (=> b!1480063 (= res!1006011 (= lt!646248 (Intermediate!12201 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1480063 (= lt!646248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646249 mask!2687) lt!646249 lt!646247 mask!2687))))

(assert (=> b!1480063 (= lt!646249 (select (store (arr!47938 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480064 () Bool)

(declare-fun e!830184 () Bool)

(assert (=> b!1480064 (= e!830185 (not e!830184))))

(declare-fun res!1006005 () Bool)

(assert (=> b!1480064 (=> res!1006005 e!830184)))

(assert (=> b!1480064 (= res!1006005 (or (and (= (select (arr!47938 a!2862) index!646) (select (store (arr!47938 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47938 a!2862) index!646) (select (arr!47938 a!2862) j!93))) (not (= (select (arr!47938 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47938 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830188 () Bool)

(assert (=> b!1480064 e!830188))

(declare-fun res!1006001 () Bool)

(assert (=> b!1480064 (=> (not res!1006001) (not e!830188))))

(declare-fun lt!646242 () SeekEntryResult!12201)

(assert (=> b!1480064 (= res!1006001 (and (= lt!646245 lt!646242) (or (= (select (arr!47938 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47938 a!2862) intermediateBeforeIndex!19) (select (arr!47938 a!2862) j!93)))))))

(assert (=> b!1480064 (= lt!646242 (Found!12201 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99327 (_ BitVec 32)) SeekEntryResult!12201)

(assert (=> b!1480064 (= lt!646245 (seekEntryOrOpen!0 (select (arr!47938 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99327 (_ BitVec 32)) Bool)

(assert (=> b!1480064 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49690 0))(
  ( (Unit!49691) )
))
(declare-fun lt!646246 () Unit!49690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49690)

(assert (=> b!1480064 (= lt!646246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480065 () Bool)

(assert (=> b!1480065 (= e!830189 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646249 lt!646247 mask!2687) (seekEntryOrOpen!0 lt!646249 lt!646247 mask!2687)))))

(declare-fun b!1480066 () Bool)

(assert (=> b!1480066 (= e!830188 e!830180)))

(declare-fun res!1006002 () Bool)

(assert (=> b!1480066 (=> res!1006002 e!830180)))

(assert (=> b!1480066 (= res!1006002 (or (and (= (select (arr!47938 a!2862) index!646) (select (store (arr!47938 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47938 a!2862) index!646) (select (arr!47938 a!2862) j!93))) (not (= (select (arr!47938 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1480067 () Bool)

(declare-fun res!1006007 () Bool)

(assert (=> b!1480067 (=> res!1006007 e!830184)))

(assert (=> b!1480067 (= res!1006007 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47938 a!2862) j!93) a!2862 mask!2687) lt!646242)))))

(declare-fun b!1480068 () Bool)

(declare-fun res!1005998 () Bool)

(assert (=> b!1480068 (=> (not res!1005998) (not e!830185))))

(assert (=> b!1480068 (= res!1005998 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480069 () Bool)

(declare-fun res!1006004 () Bool)

(assert (=> b!1480069 (=> (not res!1006004) (not e!830181))))

(assert (=> b!1480069 (= res!1006004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480070 () Bool)

(assert (=> b!1480070 (= e!830184 (= lt!646245 (seekEntryOrOpen!0 lt!646249 lt!646247 mask!2687)))))

(assert (=> b!1480070 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646249 lt!646247 mask!2687) lt!646242)))

(declare-fun lt!646244 () Unit!49690)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49690)

(assert (=> b!1480070 (= lt!646244 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1480071 () Bool)

(declare-fun res!1006010 () Bool)

(assert (=> b!1480071 (=> (not res!1006010) (not e!830181))))

(declare-datatypes ((List!34619 0))(
  ( (Nil!34616) (Cons!34615 (h!35983 (_ BitVec 64)) (t!49320 List!34619)) )
))
(declare-fun arrayNoDuplicates!0 (array!99327 (_ BitVec 32) List!34619) Bool)

(assert (=> b!1480071 (= res!1006010 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34616))))

(declare-fun b!1480072 () Bool)

(assert (=> b!1480072 (= e!830181 e!830187)))

(declare-fun res!1005999 () Bool)

(assert (=> b!1480072 (=> (not res!1005999) (not e!830187))))

(assert (=> b!1480072 (= res!1005999 (= (select (store (arr!47938 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480072 (= lt!646247 (array!99328 (store (arr!47938 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48489 a!2862)))))

(assert (= (and start!126304 res!1006012) b!1480060))

(assert (= (and b!1480060 res!1005997) b!1480061))

(assert (= (and b!1480061 res!1006003) b!1480055))

(assert (= (and b!1480055 res!1006009) b!1480069))

(assert (= (and b!1480069 res!1006004) b!1480071))

(assert (= (and b!1480071 res!1006010) b!1480054))

(assert (= (and b!1480054 res!1006008) b!1480072))

(assert (= (and b!1480072 res!1005999) b!1480053))

(assert (= (and b!1480053 res!1006006) b!1480056))

(assert (= (and b!1480056 res!1006014) b!1480063))

(assert (= (and b!1480063 res!1006011) b!1480059))

(assert (= (and b!1480059 c!136550) b!1480058))

(assert (= (and b!1480059 (not c!136550)) b!1480065))

(assert (= (and b!1480059 res!1006013) b!1480068))

(assert (= (and b!1480068 res!1005998) b!1480064))

(assert (= (and b!1480064 res!1006001) b!1480066))

(assert (= (and b!1480066 (not res!1006002)) b!1480062))

(assert (= (and b!1480062 res!1006000) b!1480057))

(assert (= (and b!1480064 (not res!1006005)) b!1480067))

(assert (= (and b!1480067 (not res!1006007)) b!1480070))

(declare-fun m!1365933 () Bool)

(assert (=> b!1480063 m!1365933))

(assert (=> b!1480063 m!1365933))

(declare-fun m!1365935 () Bool)

(assert (=> b!1480063 m!1365935))

(declare-fun m!1365937 () Bool)

(assert (=> b!1480063 m!1365937))

(declare-fun m!1365939 () Bool)

(assert (=> b!1480063 m!1365939))

(declare-fun m!1365941 () Bool)

(assert (=> b!1480056 m!1365941))

(assert (=> b!1480056 m!1365941))

(declare-fun m!1365943 () Bool)

(assert (=> b!1480056 m!1365943))

(declare-fun m!1365945 () Bool)

(assert (=> b!1480070 m!1365945))

(declare-fun m!1365947 () Bool)

(assert (=> b!1480070 m!1365947))

(declare-fun m!1365949 () Bool)

(assert (=> b!1480070 m!1365949))

(declare-fun m!1365951 () Bool)

(assert (=> b!1480058 m!1365951))

(declare-fun m!1365953 () Bool)

(assert (=> b!1480061 m!1365953))

(assert (=> b!1480061 m!1365953))

(declare-fun m!1365955 () Bool)

(assert (=> b!1480061 m!1365955))

(declare-fun m!1365957 () Bool)

(assert (=> b!1480069 m!1365957))

(declare-fun m!1365959 () Bool)

(assert (=> b!1480064 m!1365959))

(assert (=> b!1480064 m!1365937))

(declare-fun m!1365961 () Bool)

(assert (=> b!1480064 m!1365961))

(declare-fun m!1365963 () Bool)

(assert (=> b!1480064 m!1365963))

(declare-fun m!1365965 () Bool)

(assert (=> b!1480064 m!1365965))

(assert (=> b!1480064 m!1365941))

(declare-fun m!1365967 () Bool)

(assert (=> b!1480064 m!1365967))

(declare-fun m!1365969 () Bool)

(assert (=> b!1480064 m!1365969))

(assert (=> b!1480064 m!1365941))

(assert (=> b!1480065 m!1365947))

(assert (=> b!1480065 m!1365945))

(declare-fun m!1365971 () Bool)

(assert (=> start!126304 m!1365971))

(declare-fun m!1365973 () Bool)

(assert (=> start!126304 m!1365973))

(assert (=> b!1480053 m!1365941))

(assert (=> b!1480053 m!1365941))

(declare-fun m!1365975 () Bool)

(assert (=> b!1480053 m!1365975))

(assert (=> b!1480053 m!1365975))

(assert (=> b!1480053 m!1365941))

(declare-fun m!1365977 () Bool)

(assert (=> b!1480053 m!1365977))

(assert (=> b!1480067 m!1365941))

(assert (=> b!1480067 m!1365941))

(declare-fun m!1365979 () Bool)

(assert (=> b!1480067 m!1365979))

(assert (=> b!1480072 m!1365937))

(declare-fun m!1365981 () Bool)

(assert (=> b!1480072 m!1365981))

(assert (=> b!1480055 m!1365941))

(assert (=> b!1480055 m!1365941))

(declare-fun m!1365983 () Bool)

(assert (=> b!1480055 m!1365983))

(assert (=> b!1480062 m!1365941))

(assert (=> b!1480062 m!1365941))

(declare-fun m!1365985 () Bool)

(assert (=> b!1480062 m!1365985))

(assert (=> b!1480066 m!1365965))

(assert (=> b!1480066 m!1365937))

(assert (=> b!1480066 m!1365963))

(assert (=> b!1480066 m!1365941))

(declare-fun m!1365987 () Bool)

(assert (=> b!1480071 m!1365987))

(push 1)

(assert (not b!1480067))

(assert (not b!1480053))

(assert (not b!1480055))

(assert (not b!1480064))

(assert (not b!1480070))

(assert (not b!1480065))

(assert (not b!1480063))

(assert (not b!1480071))

(assert (not b!1480062))

(assert (not b!1480056))

(assert (not b!1480069))

(assert (not start!126304))

(assert (not b!1480058))

(assert (not b!1480061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

