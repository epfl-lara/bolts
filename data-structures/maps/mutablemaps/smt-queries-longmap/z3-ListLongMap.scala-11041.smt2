; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129126 () Bool)

(assert start!129126)

(declare-fun b!1514298 () Bool)

(declare-fun res!1034282 () Bool)

(declare-fun e!845128 () Bool)

(assert (=> b!1514298 (=> (not res!1034282) (not e!845128))))

(declare-datatypes ((array!100895 0))(
  ( (array!100896 (arr!48680 (Array (_ BitVec 32) (_ BitVec 64))) (size!49231 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100895)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514298 (= res!1034282 (validKeyInArray!0 (select (arr!48680 a!2804) j!70)))))

(declare-fun b!1514299 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun e!845127 () Bool)

(declare-fun lt!656259 () array!100895)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!656261 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12872 0))(
  ( (MissingZero!12872 (index!53882 (_ BitVec 32))) (Found!12872 (index!53883 (_ BitVec 32))) (Intermediate!12872 (undefined!13684 Bool) (index!53884 (_ BitVec 32)) (x!135603 (_ BitVec 32))) (Undefined!12872) (MissingVacant!12872 (index!53885 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100895 (_ BitVec 32)) SeekEntryResult!12872)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100895 (_ BitVec 32)) SeekEntryResult!12872)

(assert (=> b!1514299 (= e!845127 (= (seekEntryOrOpen!0 lt!656261 lt!656259 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656261 lt!656259 mask!2512)))))

(declare-fun b!1514300 () Bool)

(declare-fun e!845129 () Bool)

(declare-fun e!845132 () Bool)

(assert (=> b!1514300 (= e!845129 e!845132)))

(declare-fun res!1034283 () Bool)

(assert (=> b!1514300 (=> (not res!1034283) (not e!845132))))

(declare-fun lt!656260 () SeekEntryResult!12872)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100895 (_ BitVec 32)) SeekEntryResult!12872)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514300 (= res!1034283 (= lt!656260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656261 mask!2512) lt!656261 lt!656259 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514300 (= lt!656261 (select (store (arr!48680 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514300 (= lt!656259 (array!100896 (store (arr!48680 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49231 a!2804)))))

(declare-fun b!1514301 () Bool)

(declare-fun res!1034284 () Bool)

(declare-fun e!845131 () Bool)

(assert (=> b!1514301 (=> (not res!1034284) (not e!845131))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100895 (_ BitVec 32)) SeekEntryResult!12872)

(assert (=> b!1514301 (= res!1034284 (= (seekEntry!0 (select (arr!48680 a!2804) j!70) a!2804 mask!2512) (Found!12872 j!70)))))

(declare-fun b!1514302 () Bool)

(declare-fun res!1034280 () Bool)

(assert (=> b!1514302 (=> (not res!1034280) (not e!845128))))

(assert (=> b!1514302 (= res!1034280 (validKeyInArray!0 (select (arr!48680 a!2804) i!961)))))

(declare-fun b!1514303 () Bool)

(declare-fun res!1034276 () Bool)

(assert (=> b!1514303 (=> (not res!1034276) (not e!845128))))

(declare-datatypes ((List!35343 0))(
  ( (Nil!35340) (Cons!35339 (h!36752 (_ BitVec 64)) (t!50044 List!35343)) )
))
(declare-fun arrayNoDuplicates!0 (array!100895 (_ BitVec 32) List!35343) Bool)

(assert (=> b!1514303 (= res!1034276 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35340))))

(declare-fun b!1514304 () Bool)

(declare-fun e!845130 () Bool)

(assert (=> b!1514304 (= e!845130 e!845127)))

(declare-fun res!1034278 () Bool)

(assert (=> b!1514304 (=> (not res!1034278) (not e!845127))))

(assert (=> b!1514304 (= res!1034278 (= (seekEntryOrOpen!0 (select (arr!48680 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48680 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514305 () Bool)

(declare-fun res!1034273 () Bool)

(assert (=> b!1514305 (=> (not res!1034273) (not e!845129))))

(declare-fun lt!656263 () SeekEntryResult!12872)

(assert (=> b!1514305 (= res!1034273 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48680 a!2804) j!70) a!2804 mask!2512) lt!656263))))

(declare-fun b!1514307 () Bool)

(assert (=> b!1514307 (= e!845132 (not true))))

(assert (=> b!1514307 e!845131))

(declare-fun res!1034277 () Bool)

(assert (=> b!1514307 (=> (not res!1034277) (not e!845131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100895 (_ BitVec 32)) Bool)

(assert (=> b!1514307 (= res!1034277 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50568 0))(
  ( (Unit!50569) )
))
(declare-fun lt!656262 () Unit!50568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50568)

(assert (=> b!1514307 (= lt!656262 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514308 () Bool)

(declare-fun res!1034275 () Bool)

(assert (=> b!1514308 (=> (not res!1034275) (not e!845128))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514308 (= res!1034275 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49231 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49231 a!2804))))))

(declare-fun b!1514309 () Bool)

(assert (=> b!1514309 (= e!845131 e!845130)))

(declare-fun res!1034285 () Bool)

(assert (=> b!1514309 (=> res!1034285 e!845130)))

(assert (=> b!1514309 (= res!1034285 (or (not (= (select (arr!48680 a!2804) j!70) lt!656261)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48680 a!2804) index!487) (select (arr!48680 a!2804) j!70)) (not (= (select (arr!48680 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514310 () Bool)

(declare-fun res!1034274 () Bool)

(assert (=> b!1514310 (=> (not res!1034274) (not e!845128))))

(assert (=> b!1514310 (= res!1034274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514311 () Bool)

(declare-fun res!1034286 () Bool)

(assert (=> b!1514311 (=> (not res!1034286) (not e!845128))))

(assert (=> b!1514311 (= res!1034286 (and (= (size!49231 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49231 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49231 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1034281 () Bool)

(assert (=> start!129126 (=> (not res!1034281) (not e!845128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129126 (= res!1034281 (validMask!0 mask!2512))))

(assert (=> start!129126 e!845128))

(assert (=> start!129126 true))

(declare-fun array_inv!37625 (array!100895) Bool)

(assert (=> start!129126 (array_inv!37625 a!2804)))

(declare-fun b!1514306 () Bool)

(assert (=> b!1514306 (= e!845128 e!845129)))

(declare-fun res!1034279 () Bool)

(assert (=> b!1514306 (=> (not res!1034279) (not e!845129))))

(assert (=> b!1514306 (= res!1034279 (= lt!656260 lt!656263))))

(assert (=> b!1514306 (= lt!656263 (Intermediate!12872 false resIndex!21 resX!21))))

(assert (=> b!1514306 (= lt!656260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48680 a!2804) j!70) mask!2512) (select (arr!48680 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129126 res!1034281) b!1514311))

(assert (= (and b!1514311 res!1034286) b!1514302))

(assert (= (and b!1514302 res!1034280) b!1514298))

(assert (= (and b!1514298 res!1034282) b!1514310))

(assert (= (and b!1514310 res!1034274) b!1514303))

(assert (= (and b!1514303 res!1034276) b!1514308))

(assert (= (and b!1514308 res!1034275) b!1514306))

(assert (= (and b!1514306 res!1034279) b!1514305))

(assert (= (and b!1514305 res!1034273) b!1514300))

(assert (= (and b!1514300 res!1034283) b!1514307))

(assert (= (and b!1514307 res!1034277) b!1514301))

(assert (= (and b!1514301 res!1034284) b!1514309))

(assert (= (and b!1514309 (not res!1034285)) b!1514304))

(assert (= (and b!1514304 res!1034278) b!1514299))

(declare-fun m!1397299 () Bool)

(assert (=> start!129126 m!1397299))

(declare-fun m!1397301 () Bool)

(assert (=> start!129126 m!1397301))

(declare-fun m!1397303 () Bool)

(assert (=> b!1514300 m!1397303))

(assert (=> b!1514300 m!1397303))

(declare-fun m!1397305 () Bool)

(assert (=> b!1514300 m!1397305))

(declare-fun m!1397307 () Bool)

(assert (=> b!1514300 m!1397307))

(declare-fun m!1397309 () Bool)

(assert (=> b!1514300 m!1397309))

(declare-fun m!1397311 () Bool)

(assert (=> b!1514301 m!1397311))

(assert (=> b!1514301 m!1397311))

(declare-fun m!1397313 () Bool)

(assert (=> b!1514301 m!1397313))

(assert (=> b!1514298 m!1397311))

(assert (=> b!1514298 m!1397311))

(declare-fun m!1397315 () Bool)

(assert (=> b!1514298 m!1397315))

(assert (=> b!1514306 m!1397311))

(assert (=> b!1514306 m!1397311))

(declare-fun m!1397317 () Bool)

(assert (=> b!1514306 m!1397317))

(assert (=> b!1514306 m!1397317))

(assert (=> b!1514306 m!1397311))

(declare-fun m!1397319 () Bool)

(assert (=> b!1514306 m!1397319))

(declare-fun m!1397321 () Bool)

(assert (=> b!1514299 m!1397321))

(declare-fun m!1397323 () Bool)

(assert (=> b!1514299 m!1397323))

(declare-fun m!1397325 () Bool)

(assert (=> b!1514302 m!1397325))

(assert (=> b!1514302 m!1397325))

(declare-fun m!1397327 () Bool)

(assert (=> b!1514302 m!1397327))

(declare-fun m!1397329 () Bool)

(assert (=> b!1514310 m!1397329))

(declare-fun m!1397331 () Bool)

(assert (=> b!1514303 m!1397331))

(assert (=> b!1514304 m!1397311))

(assert (=> b!1514304 m!1397311))

(declare-fun m!1397333 () Bool)

(assert (=> b!1514304 m!1397333))

(assert (=> b!1514304 m!1397311))

(declare-fun m!1397335 () Bool)

(assert (=> b!1514304 m!1397335))

(assert (=> b!1514309 m!1397311))

(declare-fun m!1397337 () Bool)

(assert (=> b!1514309 m!1397337))

(assert (=> b!1514305 m!1397311))

(assert (=> b!1514305 m!1397311))

(declare-fun m!1397339 () Bool)

(assert (=> b!1514305 m!1397339))

(declare-fun m!1397341 () Bool)

(assert (=> b!1514307 m!1397341))

(declare-fun m!1397343 () Bool)

(assert (=> b!1514307 m!1397343))

(check-sat (not b!1514303) (not b!1514305) (not b!1514310) (not b!1514300) (not b!1514299) (not b!1514298) (not b!1514306) (not b!1514307) (not b!1514304) (not b!1514302) (not b!1514301) (not start!129126))
(check-sat)
