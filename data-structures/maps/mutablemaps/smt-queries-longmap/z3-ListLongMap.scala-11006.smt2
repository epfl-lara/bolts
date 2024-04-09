; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128916 () Bool)

(assert start!128916)

(declare-fun res!1030296 () Bool)

(declare-fun e!843435 () Bool)

(assert (=> start!128916 (=> (not res!1030296) (not e!843435))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128916 (= res!1030296 (validMask!0 mask!2512))))

(assert (=> start!128916 e!843435))

(assert (=> start!128916 true))

(declare-datatypes ((array!100685 0))(
  ( (array!100686 (arr!48575 (Array (_ BitVec 32) (_ BitVec 64))) (size!49126 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100685)

(declare-fun array_inv!37520 (array!100685) Bool)

(assert (=> start!128916 (array_inv!37520 a!2804)))

(declare-fun b!1510310 () Bool)

(declare-fun res!1030285 () Bool)

(assert (=> b!1510310 (=> (not res!1030285) (not e!843435))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1510310 (= res!1030285 (and (= (size!49126 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49126 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49126 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510311 () Bool)

(declare-fun e!843437 () Bool)

(assert (=> b!1510311 (= e!843435 e!843437)))

(declare-fun res!1030294 () Bool)

(assert (=> b!1510311 (=> (not res!1030294) (not e!843437))))

(declare-datatypes ((SeekEntryResult!12767 0))(
  ( (MissingZero!12767 (index!53462 (_ BitVec 32))) (Found!12767 (index!53463 (_ BitVec 32))) (Intermediate!12767 (undefined!13579 Bool) (index!53464 (_ BitVec 32)) (x!135218 (_ BitVec 32))) (Undefined!12767) (MissingVacant!12767 (index!53465 (_ BitVec 32))) )
))
(declare-fun lt!655108 () SeekEntryResult!12767)

(declare-fun lt!655107 () SeekEntryResult!12767)

(assert (=> b!1510311 (= res!1030294 (= lt!655108 lt!655107))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510311 (= lt!655107 (Intermediate!12767 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100685 (_ BitVec 32)) SeekEntryResult!12767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510311 (= lt!655108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48575 a!2804) j!70) mask!2512) (select (arr!48575 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510312 () Bool)

(declare-fun res!1030288 () Bool)

(assert (=> b!1510312 (=> (not res!1030288) (not e!843437))))

(assert (=> b!1510312 (= res!1030288 (= lt!655108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48575 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48575 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100686 (store (arr!48575 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49126 a!2804)) mask!2512)))))

(declare-fun e!843433 () Bool)

(declare-fun b!1510313 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510313 (= e!843433 (validKeyInArray!0 (select (store (arr!48575 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun b!1510314 () Bool)

(declare-fun res!1030293 () Bool)

(assert (=> b!1510314 (=> (not res!1030293) (not e!843435))))

(declare-datatypes ((List!35238 0))(
  ( (Nil!35235) (Cons!35234 (h!36647 (_ BitVec 64)) (t!49939 List!35238)) )
))
(declare-fun arrayNoDuplicates!0 (array!100685 (_ BitVec 32) List!35238) Bool)

(assert (=> b!1510314 (= res!1030293 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35235))))

(declare-fun b!1510315 () Bool)

(assert (=> b!1510315 (= e!843437 (not e!843433))))

(declare-fun res!1030295 () Bool)

(assert (=> b!1510315 (=> res!1030295 e!843433)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510315 (= res!1030295 (or (not (= (select (arr!48575 a!2804) j!70) (select (store (arr!48575 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48575 a!2804) index!487) (select (arr!48575 a!2804) j!70))) (not (= j!70 index!487)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(declare-fun e!843436 () Bool)

(assert (=> b!1510315 e!843436))

(declare-fun res!1030286 () Bool)

(assert (=> b!1510315 (=> (not res!1030286) (not e!843436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100685 (_ BitVec 32)) Bool)

(assert (=> b!1510315 (= res!1030286 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50358 0))(
  ( (Unit!50359) )
))
(declare-fun lt!655106 () Unit!50358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50358)

(assert (=> b!1510315 (= lt!655106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510316 () Bool)

(declare-fun res!1030287 () Bool)

(assert (=> b!1510316 (=> (not res!1030287) (not e!843435))))

(assert (=> b!1510316 (= res!1030287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510317 () Bool)

(declare-fun res!1030292 () Bool)

(assert (=> b!1510317 (=> (not res!1030292) (not e!843435))))

(assert (=> b!1510317 (= res!1030292 (validKeyInArray!0 (select (arr!48575 a!2804) i!961)))))

(declare-fun b!1510318 () Bool)

(declare-fun res!1030289 () Bool)

(assert (=> b!1510318 (=> (not res!1030289) (not e!843437))))

(assert (=> b!1510318 (= res!1030289 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48575 a!2804) j!70) a!2804 mask!2512) lt!655107))))

(declare-fun b!1510319 () Bool)

(declare-fun res!1030290 () Bool)

(assert (=> b!1510319 (=> (not res!1030290) (not e!843435))))

(assert (=> b!1510319 (= res!1030290 (validKeyInArray!0 (select (arr!48575 a!2804) j!70)))))

(declare-fun b!1510320 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100685 (_ BitVec 32)) SeekEntryResult!12767)

(assert (=> b!1510320 (= e!843436 (= (seekEntry!0 (select (arr!48575 a!2804) j!70) a!2804 mask!2512) (Found!12767 j!70)))))

(declare-fun b!1510321 () Bool)

(declare-fun res!1030291 () Bool)

(assert (=> b!1510321 (=> (not res!1030291) (not e!843435))))

(assert (=> b!1510321 (= res!1030291 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49126 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49126 a!2804))))))

(assert (= (and start!128916 res!1030296) b!1510310))

(assert (= (and b!1510310 res!1030285) b!1510317))

(assert (= (and b!1510317 res!1030292) b!1510319))

(assert (= (and b!1510319 res!1030290) b!1510316))

(assert (= (and b!1510316 res!1030287) b!1510314))

(assert (= (and b!1510314 res!1030293) b!1510321))

(assert (= (and b!1510321 res!1030291) b!1510311))

(assert (= (and b!1510311 res!1030294) b!1510318))

(assert (= (and b!1510318 res!1030289) b!1510312))

(assert (= (and b!1510312 res!1030288) b!1510315))

(assert (= (and b!1510315 res!1030286) b!1510320))

(assert (= (and b!1510315 (not res!1030295)) b!1510313))

(declare-fun m!1392943 () Bool)

(assert (=> b!1510313 m!1392943))

(declare-fun m!1392945 () Bool)

(assert (=> b!1510313 m!1392945))

(assert (=> b!1510313 m!1392945))

(declare-fun m!1392947 () Bool)

(assert (=> b!1510313 m!1392947))

(declare-fun m!1392949 () Bool)

(assert (=> b!1510317 m!1392949))

(assert (=> b!1510317 m!1392949))

(declare-fun m!1392951 () Bool)

(assert (=> b!1510317 m!1392951))

(declare-fun m!1392953 () Bool)

(assert (=> start!128916 m!1392953))

(declare-fun m!1392955 () Bool)

(assert (=> start!128916 m!1392955))

(declare-fun m!1392957 () Bool)

(assert (=> b!1510315 m!1392957))

(declare-fun m!1392959 () Bool)

(assert (=> b!1510315 m!1392959))

(assert (=> b!1510315 m!1392943))

(declare-fun m!1392961 () Bool)

(assert (=> b!1510315 m!1392961))

(assert (=> b!1510315 m!1392945))

(declare-fun m!1392963 () Bool)

(assert (=> b!1510315 m!1392963))

(assert (=> b!1510320 m!1392957))

(assert (=> b!1510320 m!1392957))

(declare-fun m!1392965 () Bool)

(assert (=> b!1510320 m!1392965))

(declare-fun m!1392967 () Bool)

(assert (=> b!1510316 m!1392967))

(assert (=> b!1510318 m!1392957))

(assert (=> b!1510318 m!1392957))

(declare-fun m!1392969 () Bool)

(assert (=> b!1510318 m!1392969))

(declare-fun m!1392971 () Bool)

(assert (=> b!1510314 m!1392971))

(assert (=> b!1510319 m!1392957))

(assert (=> b!1510319 m!1392957))

(declare-fun m!1392973 () Bool)

(assert (=> b!1510319 m!1392973))

(assert (=> b!1510311 m!1392957))

(assert (=> b!1510311 m!1392957))

(declare-fun m!1392975 () Bool)

(assert (=> b!1510311 m!1392975))

(assert (=> b!1510311 m!1392975))

(assert (=> b!1510311 m!1392957))

(declare-fun m!1392977 () Bool)

(assert (=> b!1510311 m!1392977))

(assert (=> b!1510312 m!1392943))

(assert (=> b!1510312 m!1392945))

(assert (=> b!1510312 m!1392945))

(declare-fun m!1392979 () Bool)

(assert (=> b!1510312 m!1392979))

(assert (=> b!1510312 m!1392979))

(assert (=> b!1510312 m!1392945))

(declare-fun m!1392981 () Bool)

(assert (=> b!1510312 m!1392981))

(check-sat (not b!1510313) (not b!1510316) (not b!1510315) (not b!1510319) (not b!1510317) (not b!1510318) (not start!128916) (not b!1510312) (not b!1510320) (not b!1510311) (not b!1510314))
(check-sat)
