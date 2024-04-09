; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129384 () Bool)

(assert start!129384)

(declare-fun b!1519389 () Bool)

(declare-fun e!847583 () Bool)

(declare-fun e!847579 () Bool)

(assert (=> b!1519389 (= e!847583 (not e!847579))))

(declare-fun res!1039367 () Bool)

(assert (=> b!1519389 (=> res!1039367 e!847579)))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101153 0))(
  ( (array!101154 (arr!48809 (Array (_ BitVec 32) (_ BitVec 64))) (size!49360 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101153)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!658619 () (_ BitVec 64))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519389 (= res!1039367 (or (not (= (select (arr!48809 a!2804) j!70) lt!658619)) (= x!534 resX!21)))))

(declare-fun e!847580 () Bool)

(assert (=> b!1519389 e!847580))

(declare-fun res!1039371 () Bool)

(assert (=> b!1519389 (=> (not res!1039371) (not e!847580))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101153 (_ BitVec 32)) Bool)

(assert (=> b!1519389 (= res!1039371 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50826 0))(
  ( (Unit!50827) )
))
(declare-fun lt!658624 () Unit!50826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50826)

(assert (=> b!1519389 (= lt!658624 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519390 () Bool)

(declare-fun res!1039377 () Bool)

(declare-fun e!847582 () Bool)

(assert (=> b!1519390 (=> (not res!1039377) (not e!847582))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519390 (= res!1039377 (validKeyInArray!0 (select (arr!48809 a!2804) i!961)))))

(declare-fun b!1519391 () Bool)

(declare-fun e!847581 () Bool)

(assert (=> b!1519391 (= e!847582 e!847581)))

(declare-fun res!1039376 () Bool)

(assert (=> b!1519391 (=> (not res!1039376) (not e!847581))))

(declare-datatypes ((SeekEntryResult!13001 0))(
  ( (MissingZero!13001 (index!54398 (_ BitVec 32))) (Found!13001 (index!54399 (_ BitVec 32))) (Intermediate!13001 (undefined!13813 Bool) (index!54400 (_ BitVec 32)) (x!136076 (_ BitVec 32))) (Undefined!13001) (MissingVacant!13001 (index!54401 (_ BitVec 32))) )
))
(declare-fun lt!658618 () SeekEntryResult!13001)

(declare-fun lt!658622 () SeekEntryResult!13001)

(assert (=> b!1519391 (= res!1039376 (= lt!658618 lt!658622))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519391 (= lt!658622 (Intermediate!13001 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101153 (_ BitVec 32)) SeekEntryResult!13001)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519391 (= lt!658618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48809 a!2804) j!70) mask!2512) (select (arr!48809 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519392 () Bool)

(declare-fun res!1039368 () Bool)

(declare-fun e!847585 () Bool)

(assert (=> b!1519392 (=> res!1039368 e!847585)))

(declare-fun lt!658621 () (_ BitVec 32))

(assert (=> b!1519392 (= res!1039368 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658621 (select (arr!48809 a!2804) j!70) a!2804 mask!2512) lt!658622)))))

(declare-fun b!1519393 () Bool)

(assert (=> b!1519393 (= e!847579 e!847585)))

(declare-fun res!1039366 () Bool)

(assert (=> b!1519393 (=> res!1039366 e!847585)))

(assert (=> b!1519393 (= res!1039366 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658621 #b00000000000000000000000000000000) (bvsge lt!658621 (size!49360 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519393 (= lt!658621 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519394 () Bool)

(declare-fun res!1039373 () Bool)

(assert (=> b!1519394 (=> (not res!1039373) (not e!847581))))

(assert (=> b!1519394 (= res!1039373 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48809 a!2804) j!70) a!2804 mask!2512) lt!658622))))

(declare-fun b!1519395 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101153 (_ BitVec 32)) SeekEntryResult!13001)

(assert (=> b!1519395 (= e!847580 (= (seekEntry!0 (select (arr!48809 a!2804) j!70) a!2804 mask!2512) (Found!13001 j!70)))))

(declare-fun b!1519396 () Bool)

(declare-fun res!1039363 () Bool)

(assert (=> b!1519396 (=> (not res!1039363) (not e!847582))))

(assert (=> b!1519396 (= res!1039363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1039372 () Bool)

(assert (=> start!129384 (=> (not res!1039372) (not e!847582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129384 (= res!1039372 (validMask!0 mask!2512))))

(assert (=> start!129384 e!847582))

(assert (=> start!129384 true))

(declare-fun array_inv!37754 (array!101153) Bool)

(assert (=> start!129384 (array_inv!37754 a!2804)))

(declare-fun b!1519388 () Bool)

(declare-fun e!847586 () Bool)

(assert (=> b!1519388 (= e!847586 (validKeyInArray!0 lt!658619))))

(declare-fun b!1519397 () Bool)

(declare-fun res!1039374 () Bool)

(assert (=> b!1519397 (=> (not res!1039374) (not e!847582))))

(declare-datatypes ((List!35472 0))(
  ( (Nil!35469) (Cons!35468 (h!36881 (_ BitVec 64)) (t!50173 List!35472)) )
))
(declare-fun arrayNoDuplicates!0 (array!101153 (_ BitVec 32) List!35472) Bool)

(assert (=> b!1519397 (= res!1039374 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35469))))

(declare-fun b!1519398 () Bool)

(declare-fun res!1039364 () Bool)

(assert (=> b!1519398 (=> (not res!1039364) (not e!847582))))

(assert (=> b!1519398 (= res!1039364 (and (= (size!49360 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49360 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49360 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519399 () Bool)

(assert (=> b!1519399 (= e!847585 e!847586)))

(declare-fun res!1039365 () Bool)

(assert (=> b!1519399 (=> res!1039365 e!847586)))

(assert (=> b!1519399 (= res!1039365 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!658623 () array!101153)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101153 (_ BitVec 32)) SeekEntryResult!13001)

(assert (=> b!1519399 (= (seekEntryOrOpen!0 (select (arr!48809 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658619 lt!658623 mask!2512))))

(declare-fun lt!658620 () Unit!50826)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50826)

(assert (=> b!1519399 (= lt!658620 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658621 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519400 () Bool)

(declare-fun res!1039375 () Bool)

(assert (=> b!1519400 (=> (not res!1039375) (not e!847582))))

(assert (=> b!1519400 (= res!1039375 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49360 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49360 a!2804))))))

(declare-fun b!1519401 () Bool)

(assert (=> b!1519401 (= e!847581 e!847583)))

(declare-fun res!1039369 () Bool)

(assert (=> b!1519401 (=> (not res!1039369) (not e!847583))))

(assert (=> b!1519401 (= res!1039369 (= lt!658618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658619 mask!2512) lt!658619 lt!658623 mask!2512)))))

(assert (=> b!1519401 (= lt!658619 (select (store (arr!48809 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519401 (= lt!658623 (array!101154 (store (arr!48809 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49360 a!2804)))))

(declare-fun b!1519402 () Bool)

(declare-fun res!1039370 () Bool)

(assert (=> b!1519402 (=> (not res!1039370) (not e!847582))))

(assert (=> b!1519402 (= res!1039370 (validKeyInArray!0 (select (arr!48809 a!2804) j!70)))))

(assert (= (and start!129384 res!1039372) b!1519398))

(assert (= (and b!1519398 res!1039364) b!1519390))

(assert (= (and b!1519390 res!1039377) b!1519402))

(assert (= (and b!1519402 res!1039370) b!1519396))

(assert (= (and b!1519396 res!1039363) b!1519397))

(assert (= (and b!1519397 res!1039374) b!1519400))

(assert (= (and b!1519400 res!1039375) b!1519391))

(assert (= (and b!1519391 res!1039376) b!1519394))

(assert (= (and b!1519394 res!1039373) b!1519401))

(assert (= (and b!1519401 res!1039369) b!1519389))

(assert (= (and b!1519389 res!1039371) b!1519395))

(assert (= (and b!1519389 (not res!1039367)) b!1519393))

(assert (= (and b!1519393 (not res!1039366)) b!1519392))

(assert (= (and b!1519392 (not res!1039368)) b!1519399))

(assert (= (and b!1519399 (not res!1039365)) b!1519388))

(declare-fun m!1402845 () Bool)

(assert (=> b!1519397 m!1402845))

(declare-fun m!1402847 () Bool)

(assert (=> b!1519389 m!1402847))

(declare-fun m!1402849 () Bool)

(assert (=> b!1519389 m!1402849))

(declare-fun m!1402851 () Bool)

(assert (=> b!1519389 m!1402851))

(assert (=> b!1519402 m!1402847))

(assert (=> b!1519402 m!1402847))

(declare-fun m!1402853 () Bool)

(assert (=> b!1519402 m!1402853))

(assert (=> b!1519395 m!1402847))

(assert (=> b!1519395 m!1402847))

(declare-fun m!1402855 () Bool)

(assert (=> b!1519395 m!1402855))

(declare-fun m!1402857 () Bool)

(assert (=> b!1519393 m!1402857))

(assert (=> b!1519394 m!1402847))

(assert (=> b!1519394 m!1402847))

(declare-fun m!1402859 () Bool)

(assert (=> b!1519394 m!1402859))

(declare-fun m!1402861 () Bool)

(assert (=> b!1519396 m!1402861))

(declare-fun m!1402863 () Bool)

(assert (=> b!1519388 m!1402863))

(assert (=> b!1519399 m!1402847))

(assert (=> b!1519399 m!1402847))

(declare-fun m!1402865 () Bool)

(assert (=> b!1519399 m!1402865))

(declare-fun m!1402867 () Bool)

(assert (=> b!1519399 m!1402867))

(declare-fun m!1402869 () Bool)

(assert (=> b!1519399 m!1402869))

(declare-fun m!1402871 () Bool)

(assert (=> b!1519390 m!1402871))

(assert (=> b!1519390 m!1402871))

(declare-fun m!1402873 () Bool)

(assert (=> b!1519390 m!1402873))

(assert (=> b!1519391 m!1402847))

(assert (=> b!1519391 m!1402847))

(declare-fun m!1402875 () Bool)

(assert (=> b!1519391 m!1402875))

(assert (=> b!1519391 m!1402875))

(assert (=> b!1519391 m!1402847))

(declare-fun m!1402877 () Bool)

(assert (=> b!1519391 m!1402877))

(declare-fun m!1402879 () Bool)

(assert (=> start!129384 m!1402879))

(declare-fun m!1402881 () Bool)

(assert (=> start!129384 m!1402881))

(assert (=> b!1519392 m!1402847))

(assert (=> b!1519392 m!1402847))

(declare-fun m!1402883 () Bool)

(assert (=> b!1519392 m!1402883))

(declare-fun m!1402885 () Bool)

(assert (=> b!1519401 m!1402885))

(assert (=> b!1519401 m!1402885))

(declare-fun m!1402887 () Bool)

(assert (=> b!1519401 m!1402887))

(declare-fun m!1402889 () Bool)

(assert (=> b!1519401 m!1402889))

(declare-fun m!1402891 () Bool)

(assert (=> b!1519401 m!1402891))

(check-sat (not start!129384) (not b!1519388) (not b!1519396) (not b!1519402) (not b!1519395) (not b!1519391) (not b!1519392) (not b!1519399) (not b!1519401) (not b!1519397) (not b!1519394) (not b!1519390) (not b!1519389) (not b!1519393))
(check-sat)
