; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128862 () Bool)

(assert start!128862)

(declare-fun res!1029410 () Bool)

(declare-fun e!843119 () Bool)

(assert (=> start!128862 (=> (not res!1029410) (not e!843119))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128862 (= res!1029410 (validMask!0 mask!2512))))

(assert (=> start!128862 e!843119))

(assert (=> start!128862 true))

(declare-datatypes ((array!100631 0))(
  ( (array!100632 (arr!48548 (Array (_ BitVec 32) (_ BitVec 64))) (size!49099 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100631)

(declare-fun array_inv!37493 (array!100631) Bool)

(assert (=> start!128862 (array_inv!37493 a!2804)))

(declare-fun b!1509427 () Bool)

(declare-fun res!1029408 () Bool)

(assert (=> b!1509427 (=> (not res!1029408) (not e!843119))))

(declare-datatypes ((List!35211 0))(
  ( (Nil!35208) (Cons!35207 (h!36620 (_ BitVec 64)) (t!49912 List!35211)) )
))
(declare-fun arrayNoDuplicates!0 (array!100631 (_ BitVec 32) List!35211) Bool)

(assert (=> b!1509427 (= res!1029408 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35208))))

(declare-fun b!1509428 () Bool)

(declare-fun res!1029404 () Bool)

(assert (=> b!1509428 (=> (not res!1029404) (not e!843119))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509428 (= res!1029404 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49099 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49099 a!2804))))))

(declare-fun b!1509429 () Bool)

(declare-fun res!1029411 () Bool)

(assert (=> b!1509429 (=> (not res!1029411) (not e!843119))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509429 (= res!1029411 (and (= (size!49099 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49099 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49099 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509430 () Bool)

(declare-fun res!1029405 () Bool)

(declare-fun e!843118 () Bool)

(assert (=> b!1509430 (=> (not res!1029405) (not e!843118))))

(declare-datatypes ((SeekEntryResult!12740 0))(
  ( (MissingZero!12740 (index!53354 (_ BitVec 32))) (Found!12740 (index!53355 (_ BitVec 32))) (Intermediate!12740 (undefined!13552 Bool) (index!53356 (_ BitVec 32)) (x!135119 (_ BitVec 32))) (Undefined!12740) (MissingVacant!12740 (index!53357 (_ BitVec 32))) )
))
(declare-fun lt!654863 () SeekEntryResult!12740)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100631 (_ BitVec 32)) SeekEntryResult!12740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509430 (= res!1029405 (= lt!654863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48548 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48548 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100632 (store (arr!48548 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49099 a!2804)) mask!2512)))))

(declare-fun b!1509431 () Bool)

(declare-fun res!1029406 () Bool)

(assert (=> b!1509431 (=> (not res!1029406) (not e!843119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100631 (_ BitVec 32)) Bool)

(assert (=> b!1509431 (= res!1029406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509432 () Bool)

(declare-fun res!1029409 () Bool)

(assert (=> b!1509432 (=> (not res!1029409) (not e!843119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509432 (= res!1029409 (validKeyInArray!0 (select (arr!48548 a!2804) i!961)))))

(declare-fun b!1509433 () Bool)

(assert (=> b!1509433 (= e!843118 (not true))))

(assert (=> b!1509433 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50304 0))(
  ( (Unit!50305) )
))
(declare-fun lt!654865 () Unit!50304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50304)

(assert (=> b!1509433 (= lt!654865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509434 () Bool)

(declare-fun res!1029403 () Bool)

(assert (=> b!1509434 (=> (not res!1029403) (not e!843118))))

(declare-fun lt!654864 () SeekEntryResult!12740)

(assert (=> b!1509434 (= res!1029403 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48548 a!2804) j!70) a!2804 mask!2512) lt!654864))))

(declare-fun b!1509435 () Bool)

(assert (=> b!1509435 (= e!843119 e!843118)))

(declare-fun res!1029402 () Bool)

(assert (=> b!1509435 (=> (not res!1029402) (not e!843118))))

(assert (=> b!1509435 (= res!1029402 (= lt!654863 lt!654864))))

(assert (=> b!1509435 (= lt!654864 (Intermediate!12740 false resIndex!21 resX!21))))

(assert (=> b!1509435 (= lt!654863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48548 a!2804) j!70) mask!2512) (select (arr!48548 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509436 () Bool)

(declare-fun res!1029407 () Bool)

(assert (=> b!1509436 (=> (not res!1029407) (not e!843119))))

(assert (=> b!1509436 (= res!1029407 (validKeyInArray!0 (select (arr!48548 a!2804) j!70)))))

(assert (= (and start!128862 res!1029410) b!1509429))

(assert (= (and b!1509429 res!1029411) b!1509432))

(assert (= (and b!1509432 res!1029409) b!1509436))

(assert (= (and b!1509436 res!1029407) b!1509431))

(assert (= (and b!1509431 res!1029406) b!1509427))

(assert (= (and b!1509427 res!1029408) b!1509428))

(assert (= (and b!1509428 res!1029404) b!1509435))

(assert (= (and b!1509435 res!1029402) b!1509434))

(assert (= (and b!1509434 res!1029403) b!1509430))

(assert (= (and b!1509430 res!1029405) b!1509433))

(declare-fun m!1391965 () Bool)

(assert (=> b!1509434 m!1391965))

(assert (=> b!1509434 m!1391965))

(declare-fun m!1391967 () Bool)

(assert (=> b!1509434 m!1391967))

(declare-fun m!1391969 () Bool)

(assert (=> b!1509433 m!1391969))

(declare-fun m!1391971 () Bool)

(assert (=> b!1509433 m!1391971))

(declare-fun m!1391973 () Bool)

(assert (=> b!1509431 m!1391973))

(declare-fun m!1391975 () Bool)

(assert (=> b!1509432 m!1391975))

(assert (=> b!1509432 m!1391975))

(declare-fun m!1391977 () Bool)

(assert (=> b!1509432 m!1391977))

(declare-fun m!1391979 () Bool)

(assert (=> b!1509427 m!1391979))

(declare-fun m!1391981 () Bool)

(assert (=> start!128862 m!1391981))

(declare-fun m!1391983 () Bool)

(assert (=> start!128862 m!1391983))

(assert (=> b!1509435 m!1391965))

(assert (=> b!1509435 m!1391965))

(declare-fun m!1391985 () Bool)

(assert (=> b!1509435 m!1391985))

(assert (=> b!1509435 m!1391985))

(assert (=> b!1509435 m!1391965))

(declare-fun m!1391987 () Bool)

(assert (=> b!1509435 m!1391987))

(assert (=> b!1509436 m!1391965))

(assert (=> b!1509436 m!1391965))

(declare-fun m!1391989 () Bool)

(assert (=> b!1509436 m!1391989))

(declare-fun m!1391991 () Bool)

(assert (=> b!1509430 m!1391991))

(declare-fun m!1391993 () Bool)

(assert (=> b!1509430 m!1391993))

(assert (=> b!1509430 m!1391993))

(declare-fun m!1391995 () Bool)

(assert (=> b!1509430 m!1391995))

(assert (=> b!1509430 m!1391995))

(assert (=> b!1509430 m!1391993))

(declare-fun m!1391997 () Bool)

(assert (=> b!1509430 m!1391997))

(check-sat (not start!128862) (not b!1509433) (not b!1509430) (not b!1509427) (not b!1509434) (not b!1509431) (not b!1509436) (not b!1509435) (not b!1509432))
(check-sat)
