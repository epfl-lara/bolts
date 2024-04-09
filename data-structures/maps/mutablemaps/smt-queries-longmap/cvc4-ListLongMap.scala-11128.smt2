; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130100 () Bool)

(assert start!130100)

(declare-fun b!1526187 () Bool)

(declare-fun res!1044359 () Bool)

(declare-fun e!850724 () Bool)

(assert (=> b!1526187 (=> (not res!1044359) (not e!850724))))

(declare-datatypes ((array!101440 0))(
  ( (array!101441 (arr!48942 (Array (_ BitVec 32) (_ BitVec 64))) (size!49493 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101440)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526187 (= res!1044359 (validKeyInArray!0 (select (arr!48942 a!2804) j!70)))))

(declare-fun b!1526188 () Bool)

(declare-fun res!1044371 () Bool)

(assert (=> b!1526188 (=> (not res!1044371) (not e!850724))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526188 (= res!1044371 (validKeyInArray!0 (select (arr!48942 a!2804) i!961)))))

(declare-fun b!1526189 () Bool)

(declare-fun res!1044361 () Bool)

(assert (=> b!1526189 (=> (not res!1044361) (not e!850724))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101440 (_ BitVec 32)) Bool)

(assert (=> b!1526189 (= res!1044361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526190 () Bool)

(declare-fun e!850723 () Bool)

(assert (=> b!1526190 (= e!850724 e!850723)))

(declare-fun res!1044360 () Bool)

(assert (=> b!1526190 (=> (not res!1044360) (not e!850723))))

(declare-datatypes ((SeekEntryResult!13128 0))(
  ( (MissingZero!13128 (index!54906 (_ BitVec 32))) (Found!13128 (index!54907 (_ BitVec 32))) (Intermediate!13128 (undefined!13940 Bool) (index!54908 (_ BitVec 32)) (x!136609 (_ BitVec 32))) (Undefined!13128) (MissingVacant!13128 (index!54909 (_ BitVec 32))) )
))
(declare-fun lt!660953 () SeekEntryResult!13128)

(declare-fun lt!660954 () SeekEntryResult!13128)

(assert (=> b!1526190 (= res!1044360 (= lt!660953 lt!660954))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526190 (= lt!660954 (Intermediate!13128 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101440 (_ BitVec 32)) SeekEntryResult!13128)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526190 (= lt!660953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48942 a!2804) j!70) mask!2512) (select (arr!48942 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1044365 () Bool)

(assert (=> start!130100 (=> (not res!1044365) (not e!850724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130100 (= res!1044365 (validMask!0 mask!2512))))

(assert (=> start!130100 e!850724))

(assert (=> start!130100 true))

(declare-fun array_inv!37887 (array!101440) Bool)

(assert (=> start!130100 (array_inv!37887 a!2804)))

(declare-fun b!1526191 () Bool)

(declare-fun e!850721 () Bool)

(declare-fun e!850726 () Bool)

(assert (=> b!1526191 (= e!850721 e!850726)))

(declare-fun res!1044368 () Bool)

(assert (=> b!1526191 (=> (not res!1044368) (not e!850726))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101440 (_ BitVec 32)) SeekEntryResult!13128)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101440 (_ BitVec 32)) SeekEntryResult!13128)

(assert (=> b!1526191 (= res!1044368 (= (seekEntryOrOpen!0 (select (arr!48942 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48942 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526192 () Bool)

(declare-fun e!850722 () Bool)

(assert (=> b!1526192 (= e!850723 e!850722)))

(declare-fun res!1044364 () Bool)

(assert (=> b!1526192 (=> (not res!1044364) (not e!850722))))

(declare-fun lt!660955 () array!101440)

(declare-fun lt!660952 () (_ BitVec 64))

(assert (=> b!1526192 (= res!1044364 (= lt!660953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660952 mask!2512) lt!660952 lt!660955 mask!2512)))))

(assert (=> b!1526192 (= lt!660952 (select (store (arr!48942 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526192 (= lt!660955 (array!101441 (store (arr!48942 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49493 a!2804)))))

(declare-fun b!1526193 () Bool)

(declare-fun res!1044367 () Bool)

(assert (=> b!1526193 (=> (not res!1044367) (not e!850724))))

(assert (=> b!1526193 (= res!1044367 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49493 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49493 a!2804))))))

(declare-fun b!1526194 () Bool)

(assert (=> b!1526194 (= e!850726 (= (seekEntryOrOpen!0 lt!660952 lt!660955 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660952 lt!660955 mask!2512)))))

(declare-fun b!1526195 () Bool)

(declare-fun res!1044370 () Bool)

(assert (=> b!1526195 (=> (not res!1044370) (not e!850724))))

(assert (=> b!1526195 (= res!1044370 (and (= (size!49493 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49493 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49493 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526196 () Bool)

(declare-fun res!1044366 () Bool)

(declare-fun e!850727 () Bool)

(assert (=> b!1526196 (=> (not res!1044366) (not e!850727))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101440 (_ BitVec 32)) SeekEntryResult!13128)

(assert (=> b!1526196 (= res!1044366 (= (seekEntry!0 (select (arr!48942 a!2804) j!70) a!2804 mask!2512) (Found!13128 j!70)))))

(declare-fun b!1526197 () Bool)

(assert (=> b!1526197 (= e!850722 (not true))))

(assert (=> b!1526197 e!850727))

(declare-fun res!1044369 () Bool)

(assert (=> b!1526197 (=> (not res!1044369) (not e!850727))))

(assert (=> b!1526197 (= res!1044369 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50996 0))(
  ( (Unit!50997) )
))
(declare-fun lt!660951 () Unit!50996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50996)

(assert (=> b!1526197 (= lt!660951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526198 () Bool)

(declare-fun res!1044372 () Bool)

(assert (=> b!1526198 (=> (not res!1044372) (not e!850723))))

(assert (=> b!1526198 (= res!1044372 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48942 a!2804) j!70) a!2804 mask!2512) lt!660954))))

(declare-fun b!1526199 () Bool)

(assert (=> b!1526199 (= e!850727 e!850721)))

(declare-fun res!1044362 () Bool)

(assert (=> b!1526199 (=> res!1044362 e!850721)))

(assert (=> b!1526199 (= res!1044362 (or (not (= (select (arr!48942 a!2804) j!70) lt!660952)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48942 a!2804) index!487) (select (arr!48942 a!2804) j!70)) (not (= (select (arr!48942 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526200 () Bool)

(declare-fun res!1044363 () Bool)

(assert (=> b!1526200 (=> (not res!1044363) (not e!850724))))

(declare-datatypes ((List!35605 0))(
  ( (Nil!35602) (Cons!35601 (h!37035 (_ BitVec 64)) (t!50306 List!35605)) )
))
(declare-fun arrayNoDuplicates!0 (array!101440 (_ BitVec 32) List!35605) Bool)

(assert (=> b!1526200 (= res!1044363 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35602))))

(assert (= (and start!130100 res!1044365) b!1526195))

(assert (= (and b!1526195 res!1044370) b!1526188))

(assert (= (and b!1526188 res!1044371) b!1526187))

(assert (= (and b!1526187 res!1044359) b!1526189))

(assert (= (and b!1526189 res!1044361) b!1526200))

(assert (= (and b!1526200 res!1044363) b!1526193))

(assert (= (and b!1526193 res!1044367) b!1526190))

(assert (= (and b!1526190 res!1044360) b!1526198))

(assert (= (and b!1526198 res!1044372) b!1526192))

(assert (= (and b!1526192 res!1044364) b!1526197))

(assert (= (and b!1526197 res!1044369) b!1526196))

(assert (= (and b!1526196 res!1044366) b!1526199))

(assert (= (and b!1526199 (not res!1044362)) b!1526191))

(assert (= (and b!1526191 res!1044368) b!1526194))

(declare-fun m!1409027 () Bool)

(assert (=> b!1526198 m!1409027))

(assert (=> b!1526198 m!1409027))

(declare-fun m!1409029 () Bool)

(assert (=> b!1526198 m!1409029))

(declare-fun m!1409031 () Bool)

(assert (=> b!1526194 m!1409031))

(declare-fun m!1409033 () Bool)

(assert (=> b!1526194 m!1409033))

(assert (=> b!1526196 m!1409027))

(assert (=> b!1526196 m!1409027))

(declare-fun m!1409035 () Bool)

(assert (=> b!1526196 m!1409035))

(declare-fun m!1409037 () Bool)

(assert (=> b!1526200 m!1409037))

(declare-fun m!1409039 () Bool)

(assert (=> b!1526192 m!1409039))

(assert (=> b!1526192 m!1409039))

(declare-fun m!1409041 () Bool)

(assert (=> b!1526192 m!1409041))

(declare-fun m!1409043 () Bool)

(assert (=> b!1526192 m!1409043))

(declare-fun m!1409045 () Bool)

(assert (=> b!1526192 m!1409045))

(declare-fun m!1409047 () Bool)

(assert (=> b!1526188 m!1409047))

(assert (=> b!1526188 m!1409047))

(declare-fun m!1409049 () Bool)

(assert (=> b!1526188 m!1409049))

(assert (=> b!1526199 m!1409027))

(declare-fun m!1409051 () Bool)

(assert (=> b!1526199 m!1409051))

(assert (=> b!1526191 m!1409027))

(assert (=> b!1526191 m!1409027))

(declare-fun m!1409053 () Bool)

(assert (=> b!1526191 m!1409053))

(assert (=> b!1526191 m!1409027))

(declare-fun m!1409055 () Bool)

(assert (=> b!1526191 m!1409055))

(declare-fun m!1409057 () Bool)

(assert (=> start!130100 m!1409057))

(declare-fun m!1409059 () Bool)

(assert (=> start!130100 m!1409059))

(declare-fun m!1409061 () Bool)

(assert (=> b!1526189 m!1409061))

(declare-fun m!1409063 () Bool)

(assert (=> b!1526197 m!1409063))

(declare-fun m!1409065 () Bool)

(assert (=> b!1526197 m!1409065))

(assert (=> b!1526187 m!1409027))

(assert (=> b!1526187 m!1409027))

(declare-fun m!1409067 () Bool)

(assert (=> b!1526187 m!1409067))

(assert (=> b!1526190 m!1409027))

(assert (=> b!1526190 m!1409027))

(declare-fun m!1409069 () Bool)

(assert (=> b!1526190 m!1409069))

(assert (=> b!1526190 m!1409069))

(assert (=> b!1526190 m!1409027))

(declare-fun m!1409071 () Bool)

(assert (=> b!1526190 m!1409071))

(push 1)

