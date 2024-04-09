; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130248 () Bool)

(assert start!130248)

(declare-fun b!1528303 () Bool)

(declare-fun e!851830 () Bool)

(declare-fun e!851832 () Bool)

(assert (=> b!1528303 (= e!851830 e!851832)))

(declare-fun res!1046151 () Bool)

(assert (=> b!1528303 (=> (not res!1046151) (not e!851832))))

(declare-fun lt!661903 () (_ BitVec 64))

(declare-datatypes ((array!101525 0))(
  ( (array!101526 (arr!48983 (Array (_ BitVec 32) (_ BitVec 64))) (size!49534 (_ BitVec 32))) )
))
(declare-fun lt!661895 () array!101525)

(declare-datatypes ((SeekEntryResult!13169 0))(
  ( (MissingZero!13169 (index!55070 (_ BitVec 32))) (Found!13169 (index!55071 (_ BitVec 32))) (Intermediate!13169 (undefined!13981 Bool) (index!55072 (_ BitVec 32)) (x!136771 (_ BitVec 32))) (Undefined!13169) (MissingVacant!13169 (index!55073 (_ BitVec 32))) )
))
(declare-fun lt!661902 () SeekEntryResult!13169)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101525 (_ BitVec 32)) SeekEntryResult!13169)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528303 (= res!1046151 (= lt!661902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661903 mask!2512) lt!661903 lt!661895 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101525)

(assert (=> b!1528303 (= lt!661903 (select (store (arr!48983 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528303 (= lt!661895 (array!101526 (store (arr!48983 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49534 a!2804)))))

(declare-fun b!1528304 () Bool)

(declare-fun res!1046148 () Bool)

(declare-fun e!851833 () Bool)

(assert (=> b!1528304 (=> (not res!1046148) (not e!851833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101525 (_ BitVec 32)) Bool)

(assert (=> b!1528304 (= res!1046148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528305 () Bool)

(declare-fun res!1046158 () Bool)

(assert (=> b!1528305 (=> (not res!1046158) (not e!851833))))

(declare-datatypes ((List!35646 0))(
  ( (Nil!35643) (Cons!35642 (h!37079 (_ BitVec 64)) (t!50347 List!35646)) )
))
(declare-fun arrayNoDuplicates!0 (array!101525 (_ BitVec 32) List!35646) Bool)

(assert (=> b!1528305 (= res!1046158 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35643))))

(declare-fun b!1528306 () Bool)

(declare-fun e!851829 () Bool)

(assert (=> b!1528306 (= e!851829 true)))

(declare-fun lt!661896 () SeekEntryResult!13169)

(declare-fun lt!661899 () SeekEntryResult!13169)

(assert (=> b!1528306 (= lt!661896 lt!661899)))

(declare-datatypes ((Unit!51078 0))(
  ( (Unit!51079) )
))
(declare-fun lt!661900 () Unit!51078)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51078)

(assert (=> b!1528306 (= lt!661900 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528307 () Bool)

(declare-fun res!1046155 () Bool)

(assert (=> b!1528307 (=> (not res!1046155) (not e!851833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528307 (= res!1046155 (validKeyInArray!0 (select (arr!48983 a!2804) j!70)))))

(declare-fun b!1528308 () Bool)

(declare-fun res!1046154 () Bool)

(assert (=> b!1528308 (=> (not res!1046154) (not e!851833))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528308 (= res!1046154 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49534 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49534 a!2804))))))

(declare-fun b!1528309 () Bool)

(declare-fun res!1046150 () Bool)

(assert (=> b!1528309 (=> (not res!1046150) (not e!851833))))

(assert (=> b!1528309 (= res!1046150 (and (= (size!49534 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49534 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49534 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528310 () Bool)

(declare-fun e!851831 () Bool)

(assert (=> b!1528310 (= e!851832 (not e!851831))))

(declare-fun res!1046159 () Bool)

(assert (=> b!1528310 (=> res!1046159 e!851831)))

(assert (=> b!1528310 (= res!1046159 (or (not (= (select (arr!48983 a!2804) j!70) lt!661903)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48983 a!2804) index!487) (select (arr!48983 a!2804) j!70)) (not (= (select (arr!48983 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851828 () Bool)

(assert (=> b!1528310 e!851828))

(declare-fun res!1046156 () Bool)

(assert (=> b!1528310 (=> (not res!1046156) (not e!851828))))

(assert (=> b!1528310 (= res!1046156 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661901 () Unit!51078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51078)

(assert (=> b!1528310 (= lt!661901 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528311 () Bool)

(assert (=> b!1528311 (= e!851833 e!851830)))

(declare-fun res!1046153 () Bool)

(assert (=> b!1528311 (=> (not res!1046153) (not e!851830))))

(declare-fun lt!661897 () SeekEntryResult!13169)

(assert (=> b!1528311 (= res!1046153 (= lt!661902 lt!661897))))

(assert (=> b!1528311 (= lt!661897 (Intermediate!13169 false resIndex!21 resX!21))))

(assert (=> b!1528311 (= lt!661902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48983 a!2804) j!70) mask!2512) (select (arr!48983 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528312 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101525 (_ BitVec 32)) SeekEntryResult!13169)

(assert (=> b!1528312 (= e!851828 (= (seekEntry!0 (select (arr!48983 a!2804) j!70) a!2804 mask!2512) (Found!13169 j!70)))))

(declare-fun res!1046160 () Bool)

(assert (=> start!130248 (=> (not res!1046160) (not e!851833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130248 (= res!1046160 (validMask!0 mask!2512))))

(assert (=> start!130248 e!851833))

(assert (=> start!130248 true))

(declare-fun array_inv!37928 (array!101525) Bool)

(assert (=> start!130248 (array_inv!37928 a!2804)))

(declare-fun b!1528313 () Bool)

(declare-fun res!1046157 () Bool)

(assert (=> b!1528313 (=> (not res!1046157) (not e!851830))))

(assert (=> b!1528313 (= res!1046157 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48983 a!2804) j!70) a!2804 mask!2512) lt!661897))))

(declare-fun b!1528314 () Bool)

(assert (=> b!1528314 (= e!851831 e!851829)))

(declare-fun res!1046152 () Bool)

(assert (=> b!1528314 (=> res!1046152 e!851829)))

(assert (=> b!1528314 (= res!1046152 (not (= lt!661899 (Found!13169 j!70))))))

(declare-fun lt!661894 () SeekEntryResult!13169)

(assert (=> b!1528314 (= lt!661894 lt!661896)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101525 (_ BitVec 32)) SeekEntryResult!13169)

(assert (=> b!1528314 (= lt!661896 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661903 lt!661895 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101525 (_ BitVec 32)) SeekEntryResult!13169)

(assert (=> b!1528314 (= lt!661894 (seekEntryOrOpen!0 lt!661903 lt!661895 mask!2512))))

(declare-fun lt!661898 () SeekEntryResult!13169)

(assert (=> b!1528314 (= lt!661898 lt!661899)))

(assert (=> b!1528314 (= lt!661899 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48983 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528314 (= lt!661898 (seekEntryOrOpen!0 (select (arr!48983 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528315 () Bool)

(declare-fun res!1046149 () Bool)

(assert (=> b!1528315 (=> (not res!1046149) (not e!851833))))

(assert (=> b!1528315 (= res!1046149 (validKeyInArray!0 (select (arr!48983 a!2804) i!961)))))

(assert (= (and start!130248 res!1046160) b!1528309))

(assert (= (and b!1528309 res!1046150) b!1528315))

(assert (= (and b!1528315 res!1046149) b!1528307))

(assert (= (and b!1528307 res!1046155) b!1528304))

(assert (= (and b!1528304 res!1046148) b!1528305))

(assert (= (and b!1528305 res!1046158) b!1528308))

(assert (= (and b!1528308 res!1046154) b!1528311))

(assert (= (and b!1528311 res!1046153) b!1528313))

(assert (= (and b!1528313 res!1046157) b!1528303))

(assert (= (and b!1528303 res!1046151) b!1528310))

(assert (= (and b!1528310 res!1046156) b!1528312))

(assert (= (and b!1528310 (not res!1046159)) b!1528314))

(assert (= (and b!1528314 (not res!1046152)) b!1528306))

(declare-fun m!1411185 () Bool)

(assert (=> b!1528313 m!1411185))

(assert (=> b!1528313 m!1411185))

(declare-fun m!1411187 () Bool)

(assert (=> b!1528313 m!1411187))

(assert (=> b!1528314 m!1411185))

(declare-fun m!1411189 () Bool)

(assert (=> b!1528314 m!1411189))

(assert (=> b!1528314 m!1411185))

(declare-fun m!1411191 () Bool)

(assert (=> b!1528314 m!1411191))

(declare-fun m!1411193 () Bool)

(assert (=> b!1528314 m!1411193))

(assert (=> b!1528314 m!1411185))

(declare-fun m!1411195 () Bool)

(assert (=> b!1528314 m!1411195))

(assert (=> b!1528312 m!1411185))

(assert (=> b!1528312 m!1411185))

(declare-fun m!1411197 () Bool)

(assert (=> b!1528312 m!1411197))

(declare-fun m!1411199 () Bool)

(assert (=> b!1528306 m!1411199))

(declare-fun m!1411201 () Bool)

(assert (=> b!1528303 m!1411201))

(assert (=> b!1528303 m!1411201))

(declare-fun m!1411203 () Bool)

(assert (=> b!1528303 m!1411203))

(declare-fun m!1411205 () Bool)

(assert (=> b!1528303 m!1411205))

(declare-fun m!1411207 () Bool)

(assert (=> b!1528303 m!1411207))

(declare-fun m!1411209 () Bool)

(assert (=> start!130248 m!1411209))

(declare-fun m!1411211 () Bool)

(assert (=> start!130248 m!1411211))

(declare-fun m!1411213 () Bool)

(assert (=> b!1528305 m!1411213))

(assert (=> b!1528307 m!1411185))

(assert (=> b!1528307 m!1411185))

(declare-fun m!1411215 () Bool)

(assert (=> b!1528307 m!1411215))

(declare-fun m!1411217 () Bool)

(assert (=> b!1528304 m!1411217))

(declare-fun m!1411219 () Bool)

(assert (=> b!1528315 m!1411219))

(assert (=> b!1528315 m!1411219))

(declare-fun m!1411221 () Bool)

(assert (=> b!1528315 m!1411221))

(assert (=> b!1528311 m!1411185))

(assert (=> b!1528311 m!1411185))

(declare-fun m!1411223 () Bool)

(assert (=> b!1528311 m!1411223))

(assert (=> b!1528311 m!1411223))

(assert (=> b!1528311 m!1411185))

(declare-fun m!1411225 () Bool)

(assert (=> b!1528311 m!1411225))

(assert (=> b!1528310 m!1411185))

(declare-fun m!1411227 () Bool)

(assert (=> b!1528310 m!1411227))

(declare-fun m!1411229 () Bool)

(assert (=> b!1528310 m!1411229))

(declare-fun m!1411231 () Bool)

(assert (=> b!1528310 m!1411231))

(check-sat (not b!1528312) (not b!1528310) (not b!1528303) (not b!1528306) (not b!1528307) (not start!130248) (not b!1528314) (not b!1528315) (not b!1528304) (not b!1528313) (not b!1528311) (not b!1528305))
(check-sat)
