; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128980 () Bool)

(assert start!128980)

(declare-fun b!1511370 () Bool)

(declare-fun res!1031354 () Bool)

(declare-fun e!843824 () Bool)

(assert (=> b!1511370 (=> (not res!1031354) (not e!843824))))

(declare-datatypes ((array!100749 0))(
  ( (array!100750 (arr!48607 (Array (_ BitVec 32) (_ BitVec 64))) (size!49158 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100749)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100749 (_ BitVec 32)) Bool)

(assert (=> b!1511370 (= res!1031354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511371 () Bool)

(declare-fun res!1031346 () Bool)

(assert (=> b!1511371 (=> (not res!1031346) (not e!843824))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511371 (= res!1031346 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49158 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49158 a!2804))))))

(declare-fun e!843821 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1511372 () Bool)

(declare-datatypes ((SeekEntryResult!12799 0))(
  ( (MissingZero!12799 (index!53590 (_ BitVec 32))) (Found!12799 (index!53591 (_ BitVec 32))) (Intermediate!12799 (undefined!13611 Bool) (index!53592 (_ BitVec 32)) (x!135338 (_ BitVec 32))) (Undefined!12799) (MissingVacant!12799 (index!53593 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100749 (_ BitVec 32)) SeekEntryResult!12799)

(assert (=> b!1511372 (= e!843821 (= (seekEntry!0 (select (arr!48607 a!2804) j!70) a!2804 mask!2512) (Found!12799 j!70)))))

(declare-fun b!1511373 () Bool)

(declare-fun res!1031351 () Bool)

(assert (=> b!1511373 (=> (not res!1031351) (not e!843824))))

(declare-datatypes ((List!35270 0))(
  ( (Nil!35267) (Cons!35266 (h!36679 (_ BitVec 64)) (t!49971 List!35270)) )
))
(declare-fun arrayNoDuplicates!0 (array!100749 (_ BitVec 32) List!35270) Bool)

(assert (=> b!1511373 (= res!1031351 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35267))))

(declare-fun res!1031347 () Bool)

(assert (=> start!128980 (=> (not res!1031347) (not e!843824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128980 (= res!1031347 (validMask!0 mask!2512))))

(assert (=> start!128980 e!843824))

(assert (=> start!128980 true))

(declare-fun array_inv!37552 (array!100749) Bool)

(assert (=> start!128980 (array_inv!37552 a!2804)))

(declare-fun b!1511374 () Bool)

(declare-fun res!1031350 () Bool)

(assert (=> b!1511374 (=> (not res!1031350) (not e!843824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511374 (= res!1031350 (validKeyInArray!0 (select (arr!48607 a!2804) j!70)))))

(declare-fun b!1511375 () Bool)

(declare-fun res!1031348 () Bool)

(declare-fun e!843822 () Bool)

(assert (=> b!1511375 (=> (not res!1031348) (not e!843822))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!655394 () SeekEntryResult!12799)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100749 (_ BitVec 32)) SeekEntryResult!12799)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511375 (= res!1031348 (= lt!655394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48607 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48607 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100750 (store (arr!48607 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49158 a!2804)) mask!2512)))))

(declare-fun b!1511376 () Bool)

(assert (=> b!1511376 (= e!843824 e!843822)))

(declare-fun res!1031352 () Bool)

(assert (=> b!1511376 (=> (not res!1031352) (not e!843822))))

(declare-fun lt!655396 () SeekEntryResult!12799)

(assert (=> b!1511376 (= res!1031352 (= lt!655394 lt!655396))))

(assert (=> b!1511376 (= lt!655396 (Intermediate!12799 false resIndex!21 resX!21))))

(assert (=> b!1511376 (= lt!655394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48607 a!2804) j!70) mask!2512) (select (arr!48607 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511377 () Bool)

(assert (=> b!1511377 (= e!843822 (not true))))

(assert (=> b!1511377 e!843821))

(declare-fun res!1031349 () Bool)

(assert (=> b!1511377 (=> (not res!1031349) (not e!843821))))

(assert (=> b!1511377 (= res!1031349 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50422 0))(
  ( (Unit!50423) )
))
(declare-fun lt!655395 () Unit!50422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50422)

(assert (=> b!1511377 (= lt!655395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511378 () Bool)

(declare-fun res!1031353 () Bool)

(assert (=> b!1511378 (=> (not res!1031353) (not e!843822))))

(assert (=> b!1511378 (= res!1031353 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48607 a!2804) j!70) a!2804 mask!2512) lt!655396))))

(declare-fun b!1511379 () Bool)

(declare-fun res!1031355 () Bool)

(assert (=> b!1511379 (=> (not res!1031355) (not e!843824))))

(assert (=> b!1511379 (= res!1031355 (and (= (size!49158 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49158 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49158 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511380 () Bool)

(declare-fun res!1031345 () Bool)

(assert (=> b!1511380 (=> (not res!1031345) (not e!843824))))

(assert (=> b!1511380 (= res!1031345 (validKeyInArray!0 (select (arr!48607 a!2804) i!961)))))

(assert (= (and start!128980 res!1031347) b!1511379))

(assert (= (and b!1511379 res!1031355) b!1511380))

(assert (= (and b!1511380 res!1031345) b!1511374))

(assert (= (and b!1511374 res!1031350) b!1511370))

(assert (= (and b!1511370 res!1031354) b!1511373))

(assert (= (and b!1511373 res!1031351) b!1511371))

(assert (= (and b!1511371 res!1031346) b!1511376))

(assert (= (and b!1511376 res!1031352) b!1511378))

(assert (= (and b!1511378 res!1031353) b!1511375))

(assert (= (and b!1511375 res!1031348) b!1511377))

(assert (= (and b!1511377 res!1031349) b!1511372))

(declare-fun m!1394121 () Bool)

(assert (=> b!1511372 m!1394121))

(assert (=> b!1511372 m!1394121))

(declare-fun m!1394123 () Bool)

(assert (=> b!1511372 m!1394123))

(declare-fun m!1394125 () Bool)

(assert (=> b!1511373 m!1394125))

(declare-fun m!1394127 () Bool)

(assert (=> b!1511370 m!1394127))

(declare-fun m!1394129 () Bool)

(assert (=> b!1511380 m!1394129))

(assert (=> b!1511380 m!1394129))

(declare-fun m!1394131 () Bool)

(assert (=> b!1511380 m!1394131))

(declare-fun m!1394133 () Bool)

(assert (=> b!1511375 m!1394133))

(declare-fun m!1394135 () Bool)

(assert (=> b!1511375 m!1394135))

(assert (=> b!1511375 m!1394135))

(declare-fun m!1394137 () Bool)

(assert (=> b!1511375 m!1394137))

(assert (=> b!1511375 m!1394137))

(assert (=> b!1511375 m!1394135))

(declare-fun m!1394139 () Bool)

(assert (=> b!1511375 m!1394139))

(assert (=> b!1511378 m!1394121))

(assert (=> b!1511378 m!1394121))

(declare-fun m!1394141 () Bool)

(assert (=> b!1511378 m!1394141))

(assert (=> b!1511374 m!1394121))

(assert (=> b!1511374 m!1394121))

(declare-fun m!1394143 () Bool)

(assert (=> b!1511374 m!1394143))

(assert (=> b!1511376 m!1394121))

(assert (=> b!1511376 m!1394121))

(declare-fun m!1394145 () Bool)

(assert (=> b!1511376 m!1394145))

(assert (=> b!1511376 m!1394145))

(assert (=> b!1511376 m!1394121))

(declare-fun m!1394147 () Bool)

(assert (=> b!1511376 m!1394147))

(declare-fun m!1394149 () Bool)

(assert (=> start!128980 m!1394149))

(declare-fun m!1394151 () Bool)

(assert (=> start!128980 m!1394151))

(declare-fun m!1394153 () Bool)

(assert (=> b!1511377 m!1394153))

(declare-fun m!1394155 () Bool)

(assert (=> b!1511377 m!1394155))

(push 1)

