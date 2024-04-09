; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129080 () Bool)

(assert start!129080)

(declare-fun b!1513332 () Bool)

(declare-fun res!1033317 () Bool)

(declare-fun e!844647 () Bool)

(assert (=> b!1513332 (=> (not res!1033317) (not e!844647))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100849 0))(
  ( (array!100850 (arr!48657 (Array (_ BitVec 32) (_ BitVec 64))) (size!49208 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100849)

(declare-datatypes ((SeekEntryResult!12849 0))(
  ( (MissingZero!12849 (index!53790 (_ BitVec 32))) (Found!12849 (index!53791 (_ BitVec 32))) (Intermediate!12849 (undefined!13661 Bool) (index!53792 (_ BitVec 32)) (x!135516 (_ BitVec 32))) (Undefined!12849) (MissingVacant!12849 (index!53793 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100849 (_ BitVec 32)) SeekEntryResult!12849)

(assert (=> b!1513332 (= res!1033317 (= (seekEntry!0 (select (arr!48657 a!2804) j!70) a!2804 mask!2512) (Found!12849 j!70)))))

(declare-fun b!1513333 () Bool)

(declare-fun e!844649 () Bool)

(assert (=> b!1513333 (= e!844649 (not true))))

(assert (=> b!1513333 e!844647))

(declare-fun res!1033318 () Bool)

(assert (=> b!1513333 (=> (not res!1033318) (not e!844647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100849 (_ BitVec 32)) Bool)

(assert (=> b!1513333 (= res!1033318 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50522 0))(
  ( (Unit!50523) )
))
(declare-fun lt!655917 () Unit!50522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50522)

(assert (=> b!1513333 (= lt!655917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513335 () Bool)

(declare-fun e!844644 () Bool)

(assert (=> b!1513335 (= e!844647 e!844644)))

(declare-fun res!1033312 () Bool)

(assert (=> b!1513335 (=> res!1033312 e!844644)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!655918 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513335 (= res!1033312 (or (not (= (select (arr!48657 a!2804) j!70) lt!655918)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48657 a!2804) index!487) (select (arr!48657 a!2804) j!70)) (not (= (select (arr!48657 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!844646 () Bool)

(declare-fun lt!655914 () array!100849)

(declare-fun b!1513336 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100849 (_ BitVec 32)) SeekEntryResult!12849)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100849 (_ BitVec 32)) SeekEntryResult!12849)

(assert (=> b!1513336 (= e!844646 (= (seekEntryOrOpen!0 lt!655918 lt!655914 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655918 lt!655914 mask!2512)))))

(declare-fun b!1513337 () Bool)

(declare-fun res!1033309 () Bool)

(declare-fun e!844645 () Bool)

(assert (=> b!1513337 (=> (not res!1033309) (not e!844645))))

(assert (=> b!1513337 (= res!1033309 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49208 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49208 a!2804))))))

(declare-fun b!1513338 () Bool)

(declare-fun res!1033315 () Bool)

(assert (=> b!1513338 (=> (not res!1033315) (not e!844645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513338 (= res!1033315 (validKeyInArray!0 (select (arr!48657 a!2804) j!70)))))

(declare-fun b!1513339 () Bool)

(declare-fun res!1033316 () Bool)

(assert (=> b!1513339 (=> (not res!1033316) (not e!844645))))

(assert (=> b!1513339 (= res!1033316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513334 () Bool)

(declare-fun e!844643 () Bool)

(assert (=> b!1513334 (= e!844645 e!844643)))

(declare-fun res!1033311 () Bool)

(assert (=> b!1513334 (=> (not res!1033311) (not e!844643))))

(declare-fun lt!655915 () SeekEntryResult!12849)

(declare-fun lt!655916 () SeekEntryResult!12849)

(assert (=> b!1513334 (= res!1033311 (= lt!655915 lt!655916))))

(assert (=> b!1513334 (= lt!655916 (Intermediate!12849 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100849 (_ BitVec 32)) SeekEntryResult!12849)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513334 (= lt!655915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48657 a!2804) j!70) mask!2512) (select (arr!48657 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1033310 () Bool)

(assert (=> start!129080 (=> (not res!1033310) (not e!844645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129080 (= res!1033310 (validMask!0 mask!2512))))

(assert (=> start!129080 e!844645))

(assert (=> start!129080 true))

(declare-fun array_inv!37602 (array!100849) Bool)

(assert (=> start!129080 (array_inv!37602 a!2804)))

(declare-fun b!1513340 () Bool)

(declare-fun res!1033319 () Bool)

(assert (=> b!1513340 (=> (not res!1033319) (not e!844645))))

(declare-datatypes ((List!35320 0))(
  ( (Nil!35317) (Cons!35316 (h!36729 (_ BitVec 64)) (t!50021 List!35320)) )
))
(declare-fun arrayNoDuplicates!0 (array!100849 (_ BitVec 32) List!35320) Bool)

(assert (=> b!1513340 (= res!1033319 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35317))))

(declare-fun b!1513341 () Bool)

(declare-fun res!1033320 () Bool)

(assert (=> b!1513341 (=> (not res!1033320) (not e!844645))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513341 (= res!1033320 (validKeyInArray!0 (select (arr!48657 a!2804) i!961)))))

(declare-fun b!1513342 () Bool)

(assert (=> b!1513342 (= e!844644 e!844646)))

(declare-fun res!1033313 () Bool)

(assert (=> b!1513342 (=> (not res!1033313) (not e!844646))))

(assert (=> b!1513342 (= res!1033313 (= (seekEntryOrOpen!0 (select (arr!48657 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48657 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513343 () Bool)

(assert (=> b!1513343 (= e!844643 e!844649)))

(declare-fun res!1033308 () Bool)

(assert (=> b!1513343 (=> (not res!1033308) (not e!844649))))

(assert (=> b!1513343 (= res!1033308 (= lt!655915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655918 mask!2512) lt!655918 lt!655914 mask!2512)))))

(assert (=> b!1513343 (= lt!655918 (select (store (arr!48657 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513343 (= lt!655914 (array!100850 (store (arr!48657 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49208 a!2804)))))

(declare-fun b!1513344 () Bool)

(declare-fun res!1033307 () Bool)

(assert (=> b!1513344 (=> (not res!1033307) (not e!844645))))

(assert (=> b!1513344 (= res!1033307 (and (= (size!49208 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49208 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49208 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513345 () Bool)

(declare-fun res!1033314 () Bool)

(assert (=> b!1513345 (=> (not res!1033314) (not e!844643))))

(assert (=> b!1513345 (= res!1033314 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48657 a!2804) j!70) a!2804 mask!2512) lt!655916))))

(assert (= (and start!129080 res!1033310) b!1513344))

(assert (= (and b!1513344 res!1033307) b!1513341))

(assert (= (and b!1513341 res!1033320) b!1513338))

(assert (= (and b!1513338 res!1033315) b!1513339))

(assert (= (and b!1513339 res!1033316) b!1513340))

(assert (= (and b!1513340 res!1033319) b!1513337))

(assert (= (and b!1513337 res!1033309) b!1513334))

(assert (= (and b!1513334 res!1033311) b!1513345))

(assert (= (and b!1513345 res!1033314) b!1513343))

(assert (= (and b!1513343 res!1033308) b!1513333))

(assert (= (and b!1513333 res!1033318) b!1513332))

(assert (= (and b!1513332 res!1033317) b!1513335))

(assert (= (and b!1513335 (not res!1033312)) b!1513342))

(assert (= (and b!1513342 res!1033313) b!1513336))

(declare-fun m!1396241 () Bool)

(assert (=> b!1513343 m!1396241))

(assert (=> b!1513343 m!1396241))

(declare-fun m!1396243 () Bool)

(assert (=> b!1513343 m!1396243))

(declare-fun m!1396245 () Bool)

(assert (=> b!1513343 m!1396245))

(declare-fun m!1396247 () Bool)

(assert (=> b!1513343 m!1396247))

(declare-fun m!1396249 () Bool)

(assert (=> b!1513333 m!1396249))

(declare-fun m!1396251 () Bool)

(assert (=> b!1513333 m!1396251))

(declare-fun m!1396253 () Bool)

(assert (=> b!1513339 m!1396253))

(declare-fun m!1396255 () Bool)

(assert (=> b!1513338 m!1396255))

(assert (=> b!1513338 m!1396255))

(declare-fun m!1396257 () Bool)

(assert (=> b!1513338 m!1396257))

(assert (=> b!1513345 m!1396255))

(assert (=> b!1513345 m!1396255))

(declare-fun m!1396259 () Bool)

(assert (=> b!1513345 m!1396259))

(declare-fun m!1396261 () Bool)

(assert (=> start!129080 m!1396261))

(declare-fun m!1396263 () Bool)

(assert (=> start!129080 m!1396263))

(assert (=> b!1513334 m!1396255))

(assert (=> b!1513334 m!1396255))

(declare-fun m!1396265 () Bool)

(assert (=> b!1513334 m!1396265))

(assert (=> b!1513334 m!1396265))

(assert (=> b!1513334 m!1396255))

(declare-fun m!1396267 () Bool)

(assert (=> b!1513334 m!1396267))

(assert (=> b!1513332 m!1396255))

(assert (=> b!1513332 m!1396255))

(declare-fun m!1396269 () Bool)

(assert (=> b!1513332 m!1396269))

(assert (=> b!1513342 m!1396255))

(assert (=> b!1513342 m!1396255))

(declare-fun m!1396271 () Bool)

(assert (=> b!1513342 m!1396271))

(assert (=> b!1513342 m!1396255))

(declare-fun m!1396273 () Bool)

(assert (=> b!1513342 m!1396273))

(declare-fun m!1396275 () Bool)

(assert (=> b!1513336 m!1396275))

(declare-fun m!1396277 () Bool)

(assert (=> b!1513336 m!1396277))

(declare-fun m!1396279 () Bool)

(assert (=> b!1513340 m!1396279))

(declare-fun m!1396281 () Bool)

(assert (=> b!1513341 m!1396281))

(assert (=> b!1513341 m!1396281))

(declare-fun m!1396283 () Bool)

(assert (=> b!1513341 m!1396283))

(assert (=> b!1513335 m!1396255))

(declare-fun m!1396285 () Bool)

(assert (=> b!1513335 m!1396285))

(push 1)

