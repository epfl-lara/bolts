; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125314 () Bool)

(assert start!125314)

(declare-fun b!1462363 () Bool)

(declare-fun res!991905 () Bool)

(declare-fun e!822060 () Bool)

(assert (=> b!1462363 (=> (not res!991905) (not e!822060))))

(declare-datatypes ((array!98679 0))(
  ( (array!98680 (arr!47623 (Array (_ BitVec 32) (_ BitVec 64))) (size!48174 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98679)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98679 (_ BitVec 32)) Bool)

(assert (=> b!1462363 (= res!991905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462364 () Bool)

(declare-fun e!822062 () Bool)

(declare-fun e!822053 () Bool)

(assert (=> b!1462364 (= e!822062 e!822053)))

(declare-fun res!991919 () Bool)

(assert (=> b!1462364 (=> (not res!991919) (not e!822053))))

(declare-datatypes ((SeekEntryResult!11898 0))(
  ( (MissingZero!11898 (index!49983 (_ BitVec 32))) (Found!11898 (index!49984 (_ BitVec 32))) (Intermediate!11898 (undefined!12710 Bool) (index!49985 (_ BitVec 32)) (x!131582 (_ BitVec 32))) (Undefined!11898) (MissingVacant!11898 (index!49986 (_ BitVec 32))) )
))
(declare-fun lt!640396 () SeekEntryResult!11898)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462364 (= res!991919 (= lt!640396 (Intermediate!11898 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640390 () array!98679)

(declare-fun lt!640393 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98679 (_ BitVec 32)) SeekEntryResult!11898)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462364 (= lt!640396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640393 mask!2687) lt!640393 lt!640390 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462364 (= lt!640393 (select (store (arr!47623 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!822057 () Bool)

(declare-fun lt!640395 () (_ BitVec 32))

(declare-fun b!1462365 () Bool)

(assert (=> b!1462365 (= e!822057 (not (= lt!640396 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640395 lt!640393 lt!640390 mask!2687))))))

(declare-fun b!1462366 () Bool)

(declare-fun res!991920 () Bool)

(assert (=> b!1462366 (=> (not res!991920) (not e!822060))))

(declare-datatypes ((List!34304 0))(
  ( (Nil!34301) (Cons!34300 (h!35650 (_ BitVec 64)) (t!49005 List!34304)) )
))
(declare-fun arrayNoDuplicates!0 (array!98679 (_ BitVec 32) List!34304) Bool)

(assert (=> b!1462366 (= res!991920 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34301))))

(declare-fun e!822059 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1462367 () Bool)

(assert (=> b!1462367 (= e!822059 (= lt!640396 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640393 lt!640390 mask!2687)))))

(declare-fun b!1462368 () Bool)

(declare-fun res!991906 () Bool)

(assert (=> b!1462368 (=> (not res!991906) (not e!822060))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462368 (= res!991906 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48174 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48174 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48174 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462369 () Bool)

(declare-fun res!991910 () Bool)

(assert (=> b!1462369 (=> (not res!991910) (not e!822053))))

(assert (=> b!1462369 (= res!991910 e!822059)))

(declare-fun c!134743 () Bool)

(assert (=> b!1462369 (= c!134743 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462370 () Bool)

(declare-fun e!822054 () Bool)

(assert (=> b!1462370 (= e!822054 true)))

(declare-fun lt!640391 () Bool)

(assert (=> b!1462370 (= lt!640391 e!822057)))

(declare-fun c!134744 () Bool)

(assert (=> b!1462370 (= c!134744 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462371 () Bool)

(declare-fun e!822058 () Bool)

(assert (=> b!1462371 (= e!822058 e!822062)))

(declare-fun res!991908 () Bool)

(assert (=> b!1462371 (=> (not res!991908) (not e!822062))))

(declare-fun lt!640394 () SeekEntryResult!11898)

(assert (=> b!1462371 (= res!991908 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47623 a!2862) j!93) mask!2687) (select (arr!47623 a!2862) j!93) a!2862 mask!2687) lt!640394))))

(assert (=> b!1462371 (= lt!640394 (Intermediate!11898 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462372 () Bool)

(declare-fun res!991917 () Bool)

(assert (=> b!1462372 (=> res!991917 e!822054)))

(assert (=> b!1462372 (= res!991917 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640395 (select (arr!47623 a!2862) j!93) a!2862 mask!2687) lt!640394)))))

(declare-fun b!1462373 () Bool)

(assert (=> b!1462373 (= e!822060 e!822058)))

(declare-fun res!991912 () Bool)

(assert (=> b!1462373 (=> (not res!991912) (not e!822058))))

(assert (=> b!1462373 (= res!991912 (= (select (store (arr!47623 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462373 (= lt!640390 (array!98680 (store (arr!47623 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48174 a!2862)))))

(declare-fun b!1462374 () Bool)

(declare-fun res!991913 () Bool)

(assert (=> b!1462374 (=> (not res!991913) (not e!822060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462374 (= res!991913 (validKeyInArray!0 (select (arr!47623 a!2862) i!1006)))))

(declare-fun b!1462375 () Bool)

(declare-fun e!822061 () Bool)

(assert (=> b!1462375 (= e!822061 (or (= (select (arr!47623 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47623 a!2862) intermediateBeforeIndex!19) (select (arr!47623 a!2862) j!93))))))

(declare-fun b!1462377 () Bool)

(declare-fun res!991914 () Bool)

(assert (=> b!1462377 (=> (not res!991914) (not e!822061))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98679 (_ BitVec 32)) SeekEntryResult!11898)

(assert (=> b!1462377 (= res!991914 (= (seekEntryOrOpen!0 (select (arr!47623 a!2862) j!93) a!2862 mask!2687) (Found!11898 j!93)))))

(declare-fun b!1462378 () Bool)

(declare-fun res!991904 () Bool)

(assert (=> b!1462378 (=> (not res!991904) (not e!822053))))

(assert (=> b!1462378 (= res!991904 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462379 () Bool)

(declare-fun res!991911 () Bool)

(assert (=> b!1462379 (=> (not res!991911) (not e!822062))))

(assert (=> b!1462379 (= res!991911 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47623 a!2862) j!93) a!2862 mask!2687) lt!640394))))

(declare-fun b!1462380 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98679 (_ BitVec 32)) SeekEntryResult!11898)

(assert (=> b!1462380 (= e!822059 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640393 lt!640390 mask!2687) (seekEntryOrOpen!0 lt!640393 lt!640390 mask!2687)))))

(declare-fun b!1462381 () Bool)

(declare-fun e!822055 () Bool)

(assert (=> b!1462381 (= e!822055 e!822054)))

(declare-fun res!991903 () Bool)

(assert (=> b!1462381 (=> res!991903 e!822054)))

(assert (=> b!1462381 (= res!991903 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640395 #b00000000000000000000000000000000) (bvsge lt!640395 (size!48174 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462381 (= lt!640395 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462382 () Bool)

(declare-fun res!991915 () Bool)

(assert (=> b!1462382 (=> (not res!991915) (not e!822060))))

(assert (=> b!1462382 (= res!991915 (and (= (size!48174 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48174 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48174 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462383 () Bool)

(assert (=> b!1462383 (= e!822057 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640395 intermediateAfterIndex!19 lt!640393 lt!640390 mask!2687) (seekEntryOrOpen!0 lt!640393 lt!640390 mask!2687))))))

(declare-fun b!1462384 () Bool)

(declare-fun res!991907 () Bool)

(assert (=> b!1462384 (=> (not res!991907) (not e!822060))))

(assert (=> b!1462384 (= res!991907 (validKeyInArray!0 (select (arr!47623 a!2862) j!93)))))

(declare-fun res!991916 () Bool)

(assert (=> start!125314 (=> (not res!991916) (not e!822060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125314 (= res!991916 (validMask!0 mask!2687))))

(assert (=> start!125314 e!822060))

(assert (=> start!125314 true))

(declare-fun array_inv!36568 (array!98679) Bool)

(assert (=> start!125314 (array_inv!36568 a!2862)))

(declare-fun b!1462376 () Bool)

(assert (=> b!1462376 (= e!822053 (not e!822055))))

(declare-fun res!991909 () Bool)

(assert (=> b!1462376 (=> res!991909 e!822055)))

(assert (=> b!1462376 (= res!991909 (or (and (= (select (arr!47623 a!2862) index!646) (select (store (arr!47623 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47623 a!2862) index!646) (select (arr!47623 a!2862) j!93))) (= (select (arr!47623 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462376 e!822061))

(declare-fun res!991918 () Bool)

(assert (=> b!1462376 (=> (not res!991918) (not e!822061))))

(assert (=> b!1462376 (= res!991918 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49240 0))(
  ( (Unit!49241) )
))
(declare-fun lt!640392 () Unit!49240)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49240)

(assert (=> b!1462376 (= lt!640392 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125314 res!991916) b!1462382))

(assert (= (and b!1462382 res!991915) b!1462374))

(assert (= (and b!1462374 res!991913) b!1462384))

(assert (= (and b!1462384 res!991907) b!1462363))

(assert (= (and b!1462363 res!991905) b!1462366))

(assert (= (and b!1462366 res!991920) b!1462368))

(assert (= (and b!1462368 res!991906) b!1462373))

(assert (= (and b!1462373 res!991912) b!1462371))

(assert (= (and b!1462371 res!991908) b!1462379))

(assert (= (and b!1462379 res!991911) b!1462364))

(assert (= (and b!1462364 res!991919) b!1462369))

(assert (= (and b!1462369 c!134743) b!1462367))

(assert (= (and b!1462369 (not c!134743)) b!1462380))

(assert (= (and b!1462369 res!991910) b!1462378))

(assert (= (and b!1462378 res!991904) b!1462376))

(assert (= (and b!1462376 res!991918) b!1462377))

(assert (= (and b!1462377 res!991914) b!1462375))

(assert (= (and b!1462376 (not res!991909)) b!1462381))

(assert (= (and b!1462381 (not res!991903)) b!1462372))

(assert (= (and b!1462372 (not res!991917)) b!1462370))

(assert (= (and b!1462370 c!134744) b!1462365))

(assert (= (and b!1462370 (not c!134744)) b!1462383))

(declare-fun m!1349877 () Bool)

(assert (=> b!1462363 m!1349877))

(declare-fun m!1349879 () Bool)

(assert (=> b!1462365 m!1349879))

(declare-fun m!1349881 () Bool)

(assert (=> b!1462381 m!1349881))

(declare-fun m!1349883 () Bool)

(assert (=> start!125314 m!1349883))

(declare-fun m!1349885 () Bool)

(assert (=> start!125314 m!1349885))

(declare-fun m!1349887 () Bool)

(assert (=> b!1462364 m!1349887))

(assert (=> b!1462364 m!1349887))

(declare-fun m!1349889 () Bool)

(assert (=> b!1462364 m!1349889))

(declare-fun m!1349891 () Bool)

(assert (=> b!1462364 m!1349891))

(declare-fun m!1349893 () Bool)

(assert (=> b!1462364 m!1349893))

(declare-fun m!1349895 () Bool)

(assert (=> b!1462379 m!1349895))

(assert (=> b!1462379 m!1349895))

(declare-fun m!1349897 () Bool)

(assert (=> b!1462379 m!1349897))

(declare-fun m!1349899 () Bool)

(assert (=> b!1462380 m!1349899))

(declare-fun m!1349901 () Bool)

(assert (=> b!1462380 m!1349901))

(declare-fun m!1349903 () Bool)

(assert (=> b!1462366 m!1349903))

(declare-fun m!1349905 () Bool)

(assert (=> b!1462367 m!1349905))

(assert (=> b!1462373 m!1349891))

(declare-fun m!1349907 () Bool)

(assert (=> b!1462373 m!1349907))

(declare-fun m!1349909 () Bool)

(assert (=> b!1462375 m!1349909))

(assert (=> b!1462375 m!1349895))

(declare-fun m!1349911 () Bool)

(assert (=> b!1462374 m!1349911))

(assert (=> b!1462374 m!1349911))

(declare-fun m!1349913 () Bool)

(assert (=> b!1462374 m!1349913))

(assert (=> b!1462377 m!1349895))

(assert (=> b!1462377 m!1349895))

(declare-fun m!1349915 () Bool)

(assert (=> b!1462377 m!1349915))

(assert (=> b!1462371 m!1349895))

(assert (=> b!1462371 m!1349895))

(declare-fun m!1349917 () Bool)

(assert (=> b!1462371 m!1349917))

(assert (=> b!1462371 m!1349917))

(assert (=> b!1462371 m!1349895))

(declare-fun m!1349919 () Bool)

(assert (=> b!1462371 m!1349919))

(assert (=> b!1462372 m!1349895))

(assert (=> b!1462372 m!1349895))

(declare-fun m!1349921 () Bool)

(assert (=> b!1462372 m!1349921))

(assert (=> b!1462384 m!1349895))

(assert (=> b!1462384 m!1349895))

(declare-fun m!1349923 () Bool)

(assert (=> b!1462384 m!1349923))

(declare-fun m!1349925 () Bool)

(assert (=> b!1462376 m!1349925))

(assert (=> b!1462376 m!1349891))

(declare-fun m!1349927 () Bool)

(assert (=> b!1462376 m!1349927))

(declare-fun m!1349929 () Bool)

(assert (=> b!1462376 m!1349929))

(declare-fun m!1349931 () Bool)

(assert (=> b!1462376 m!1349931))

(assert (=> b!1462376 m!1349895))

(declare-fun m!1349933 () Bool)

(assert (=> b!1462383 m!1349933))

(assert (=> b!1462383 m!1349901))

(push 1)

