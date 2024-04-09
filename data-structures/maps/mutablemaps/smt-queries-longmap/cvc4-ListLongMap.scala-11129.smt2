; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130106 () Bool)

(assert start!130106)

(declare-fun b!1526313 () Bool)

(declare-fun res!1044486 () Bool)

(declare-fun e!850790 () Bool)

(assert (=> b!1526313 (=> (not res!1044486) (not e!850790))))

(declare-datatypes ((array!101446 0))(
  ( (array!101447 (arr!48945 (Array (_ BitVec 32) (_ BitVec 64))) (size!49496 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101446)

(declare-datatypes ((List!35608 0))(
  ( (Nil!35605) (Cons!35604 (h!37038 (_ BitVec 64)) (t!50309 List!35608)) )
))
(declare-fun arrayNoDuplicates!0 (array!101446 (_ BitVec 32) List!35608) Bool)

(assert (=> b!1526313 (= res!1044486 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35605))))

(declare-fun b!1526314 () Bool)

(declare-fun e!850787 () Bool)

(assert (=> b!1526314 (= e!850787 (not true))))

(declare-fun e!850789 () Bool)

(assert (=> b!1526314 e!850789))

(declare-fun res!1044485 () Bool)

(assert (=> b!1526314 (=> (not res!1044485) (not e!850789))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101446 (_ BitVec 32)) Bool)

(assert (=> b!1526314 (= res!1044485 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51002 0))(
  ( (Unit!51003) )
))
(declare-fun lt!660997 () Unit!51002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51002)

(assert (=> b!1526314 (= lt!660997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1044498 () Bool)

(assert (=> start!130106 (=> (not res!1044498) (not e!850790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130106 (= res!1044498 (validMask!0 mask!2512))))

(assert (=> start!130106 e!850790))

(assert (=> start!130106 true))

(declare-fun array_inv!37890 (array!101446) Bool)

(assert (=> start!130106 (array_inv!37890 a!2804)))

(declare-fun lt!661000 () (_ BitVec 64))

(declare-fun e!850785 () Bool)

(declare-fun b!1526315 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!660996 () array!101446)

(declare-datatypes ((SeekEntryResult!13131 0))(
  ( (MissingZero!13131 (index!54918 (_ BitVec 32))) (Found!13131 (index!54919 (_ BitVec 32))) (Intermediate!13131 (undefined!13943 Bool) (index!54920 (_ BitVec 32)) (x!136620 (_ BitVec 32))) (Undefined!13131) (MissingVacant!13131 (index!54921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101446 (_ BitVec 32)) SeekEntryResult!13131)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101446 (_ BitVec 32)) SeekEntryResult!13131)

(assert (=> b!1526315 (= e!850785 (= (seekEntryOrOpen!0 lt!661000 lt!660996 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661000 lt!660996 mask!2512)))))

(declare-fun b!1526316 () Bool)

(declare-fun res!1044496 () Bool)

(assert (=> b!1526316 (=> (not res!1044496) (not e!850789))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101446 (_ BitVec 32)) SeekEntryResult!13131)

(assert (=> b!1526316 (= res!1044496 (= (seekEntry!0 (select (arr!48945 a!2804) j!70) a!2804 mask!2512) (Found!13131 j!70)))))

(declare-fun b!1526317 () Bool)

(declare-fun res!1044492 () Bool)

(assert (=> b!1526317 (=> (not res!1044492) (not e!850790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526317 (= res!1044492 (validKeyInArray!0 (select (arr!48945 a!2804) j!70)))))

(declare-fun b!1526318 () Bool)

(declare-fun e!850788 () Bool)

(assert (=> b!1526318 (= e!850790 e!850788)))

(declare-fun res!1044497 () Bool)

(assert (=> b!1526318 (=> (not res!1044497) (not e!850788))))

(declare-fun lt!660999 () SeekEntryResult!13131)

(declare-fun lt!660998 () SeekEntryResult!13131)

(assert (=> b!1526318 (= res!1044497 (= lt!660999 lt!660998))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526318 (= lt!660998 (Intermediate!13131 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101446 (_ BitVec 32)) SeekEntryResult!13131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526318 (= lt!660999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48945 a!2804) j!70) mask!2512) (select (arr!48945 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526319 () Bool)

(declare-fun res!1044488 () Bool)

(assert (=> b!1526319 (=> (not res!1044488) (not e!850790))))

(assert (=> b!1526319 (= res!1044488 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49496 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49496 a!2804))))))

(declare-fun b!1526320 () Bool)

(assert (=> b!1526320 (= e!850788 e!850787)))

(declare-fun res!1044489 () Bool)

(assert (=> b!1526320 (=> (not res!1044489) (not e!850787))))

(assert (=> b!1526320 (= res!1044489 (= lt!660999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661000 mask!2512) lt!661000 lt!660996 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526320 (= lt!661000 (select (store (arr!48945 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526320 (= lt!660996 (array!101447 (store (arr!48945 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49496 a!2804)))))

(declare-fun b!1526321 () Bool)

(declare-fun res!1044487 () Bool)

(assert (=> b!1526321 (=> (not res!1044487) (not e!850790))))

(assert (=> b!1526321 (= res!1044487 (and (= (size!49496 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49496 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49496 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526322 () Bool)

(declare-fun res!1044495 () Bool)

(assert (=> b!1526322 (=> (not res!1044495) (not e!850788))))

(assert (=> b!1526322 (= res!1044495 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48945 a!2804) j!70) a!2804 mask!2512) lt!660998))))

(declare-fun b!1526323 () Bool)

(declare-fun res!1044491 () Bool)

(assert (=> b!1526323 (=> (not res!1044491) (not e!850790))))

(assert (=> b!1526323 (= res!1044491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526324 () Bool)

(declare-fun e!850784 () Bool)

(assert (=> b!1526324 (= e!850784 e!850785)))

(declare-fun res!1044493 () Bool)

(assert (=> b!1526324 (=> (not res!1044493) (not e!850785))))

(assert (=> b!1526324 (= res!1044493 (= (seekEntryOrOpen!0 (select (arr!48945 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48945 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526325 () Bool)

(assert (=> b!1526325 (= e!850789 e!850784)))

(declare-fun res!1044494 () Bool)

(assert (=> b!1526325 (=> res!1044494 e!850784)))

(assert (=> b!1526325 (= res!1044494 (or (not (= (select (arr!48945 a!2804) j!70) lt!661000)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48945 a!2804) index!487) (select (arr!48945 a!2804) j!70)) (not (= (select (arr!48945 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526326 () Bool)

(declare-fun res!1044490 () Bool)

(assert (=> b!1526326 (=> (not res!1044490) (not e!850790))))

(assert (=> b!1526326 (= res!1044490 (validKeyInArray!0 (select (arr!48945 a!2804) i!961)))))

(assert (= (and start!130106 res!1044498) b!1526321))

(assert (= (and b!1526321 res!1044487) b!1526326))

(assert (= (and b!1526326 res!1044490) b!1526317))

(assert (= (and b!1526317 res!1044492) b!1526323))

(assert (= (and b!1526323 res!1044491) b!1526313))

(assert (= (and b!1526313 res!1044486) b!1526319))

(assert (= (and b!1526319 res!1044488) b!1526318))

(assert (= (and b!1526318 res!1044497) b!1526322))

(assert (= (and b!1526322 res!1044495) b!1526320))

(assert (= (and b!1526320 res!1044489) b!1526314))

(assert (= (and b!1526314 res!1044485) b!1526316))

(assert (= (and b!1526316 res!1044496) b!1526325))

(assert (= (and b!1526325 (not res!1044494)) b!1526324))

(assert (= (and b!1526324 res!1044493) b!1526315))

(declare-fun m!1409165 () Bool)

(assert (=> b!1526322 m!1409165))

(assert (=> b!1526322 m!1409165))

(declare-fun m!1409167 () Bool)

(assert (=> b!1526322 m!1409167))

(assert (=> b!1526318 m!1409165))

(assert (=> b!1526318 m!1409165))

(declare-fun m!1409169 () Bool)

(assert (=> b!1526318 m!1409169))

(assert (=> b!1526318 m!1409169))

(assert (=> b!1526318 m!1409165))

(declare-fun m!1409171 () Bool)

(assert (=> b!1526318 m!1409171))

(declare-fun m!1409173 () Bool)

(assert (=> b!1526313 m!1409173))

(declare-fun m!1409175 () Bool)

(assert (=> b!1526314 m!1409175))

(declare-fun m!1409177 () Bool)

(assert (=> b!1526314 m!1409177))

(assert (=> b!1526316 m!1409165))

(assert (=> b!1526316 m!1409165))

(declare-fun m!1409179 () Bool)

(assert (=> b!1526316 m!1409179))

(declare-fun m!1409181 () Bool)

(assert (=> b!1526323 m!1409181))

(declare-fun m!1409183 () Bool)

(assert (=> start!130106 m!1409183))

(declare-fun m!1409185 () Bool)

(assert (=> start!130106 m!1409185))

(declare-fun m!1409187 () Bool)

(assert (=> b!1526315 m!1409187))

(declare-fun m!1409189 () Bool)

(assert (=> b!1526315 m!1409189))

(declare-fun m!1409191 () Bool)

(assert (=> b!1526326 m!1409191))

(assert (=> b!1526326 m!1409191))

(declare-fun m!1409193 () Bool)

(assert (=> b!1526326 m!1409193))

(assert (=> b!1526317 m!1409165))

(assert (=> b!1526317 m!1409165))

(declare-fun m!1409195 () Bool)

(assert (=> b!1526317 m!1409195))

(assert (=> b!1526324 m!1409165))

(assert (=> b!1526324 m!1409165))

(declare-fun m!1409197 () Bool)

(assert (=> b!1526324 m!1409197))

(assert (=> b!1526324 m!1409165))

(declare-fun m!1409199 () Bool)

(assert (=> b!1526324 m!1409199))

(assert (=> b!1526325 m!1409165))

(declare-fun m!1409201 () Bool)

(assert (=> b!1526325 m!1409201))

(declare-fun m!1409203 () Bool)

(assert (=> b!1526320 m!1409203))

(assert (=> b!1526320 m!1409203))

(declare-fun m!1409205 () Bool)

(assert (=> b!1526320 m!1409205))

(declare-fun m!1409207 () Bool)

(assert (=> b!1526320 m!1409207))

(declare-fun m!1409209 () Bool)

(assert (=> b!1526320 m!1409209))

(push 1)

