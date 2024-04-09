; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129990 () Bool)

(assert start!129990)

(declare-fun b!1524850 () Bool)

(declare-fun res!1043361 () Bool)

(declare-fun e!850043 () Bool)

(assert (=> b!1524850 (=> (not res!1043361) (not e!850043))))

(declare-datatypes ((array!101393 0))(
  ( (array!101394 (arr!48920 (Array (_ BitVec 32) (_ BitVec 64))) (size!49471 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101393)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524850 (= res!1043361 (validKeyInArray!0 (select (arr!48920 a!2804) j!70)))))

(declare-fun b!1524851 () Bool)

(declare-fun e!850040 () Bool)

(assert (=> b!1524851 (= e!850040 (not true))))

(declare-fun e!850041 () Bool)

(assert (=> b!1524851 e!850041))

(declare-fun res!1043360 () Bool)

(assert (=> b!1524851 (=> (not res!1043360) (not e!850041))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101393 (_ BitVec 32)) Bool)

(assert (=> b!1524851 (= res!1043360 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50952 0))(
  ( (Unit!50953) )
))
(declare-fun lt!660452 () Unit!50952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50952)

(assert (=> b!1524851 (= lt!660452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524852 () Bool)

(assert (=> b!1524852 (= e!850043 e!850040)))

(declare-fun res!1043351 () Bool)

(assert (=> b!1524852 (=> (not res!1043351) (not e!850040))))

(declare-datatypes ((SeekEntryResult!13106 0))(
  ( (MissingZero!13106 (index!54818 (_ BitVec 32))) (Found!13106 (index!54819 (_ BitVec 32))) (Intermediate!13106 (undefined!13918 Bool) (index!54820 (_ BitVec 32)) (x!136522 (_ BitVec 32))) (Undefined!13106) (MissingVacant!13106 (index!54821 (_ BitVec 32))) )
))
(declare-fun lt!660453 () SeekEntryResult!13106)

(declare-fun lt!660454 () SeekEntryResult!13106)

(assert (=> b!1524852 (= res!1043351 (= lt!660453 lt!660454))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524852 (= lt!660454 (Intermediate!13106 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101393 (_ BitVec 32)) SeekEntryResult!13106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524852 (= lt!660453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48920 a!2804) j!70) mask!2512) (select (arr!48920 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524853 () Bool)

(declare-fun e!850042 () Bool)

(assert (=> b!1524853 (= e!850041 e!850042)))

(declare-fun res!1043357 () Bool)

(assert (=> b!1524853 (=> res!1043357 e!850042)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524853 (= res!1043357 (or (not (= (select (arr!48920 a!2804) j!70) (select (store (arr!48920 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48920 a!2804) index!487) (select (arr!48920 a!2804) j!70)) (not (= (select (arr!48920 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1524854 () Bool)

(declare-fun res!1043349 () Bool)

(assert (=> b!1524854 (=> (not res!1043349) (not e!850043))))

(assert (=> b!1524854 (= res!1043349 (and (= (size!49471 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49471 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49471 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524855 () Bool)

(declare-fun res!1043355 () Bool)

(assert (=> b!1524855 (=> (not res!1043355) (not e!850043))))

(assert (=> b!1524855 (= res!1043355 (validKeyInArray!0 (select (arr!48920 a!2804) i!961)))))

(declare-fun res!1043353 () Bool)

(assert (=> start!129990 (=> (not res!1043353) (not e!850043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129990 (= res!1043353 (validMask!0 mask!2512))))

(assert (=> start!129990 e!850043))

(assert (=> start!129990 true))

(declare-fun array_inv!37865 (array!101393) Bool)

(assert (=> start!129990 (array_inv!37865 a!2804)))

(declare-fun b!1524856 () Bool)

(declare-fun res!1043350 () Bool)

(assert (=> b!1524856 (=> (not res!1043350) (not e!850040))))

(assert (=> b!1524856 (= res!1043350 (= lt!660453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48920 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48920 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101394 (store (arr!48920 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49471 a!2804)) mask!2512)))))

(declare-fun b!1524857 () Bool)

(declare-fun res!1043358 () Bool)

(assert (=> b!1524857 (=> (not res!1043358) (not e!850043))))

(assert (=> b!1524857 (= res!1043358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524858 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101393 (_ BitVec 32)) SeekEntryResult!13106)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101393 (_ BitVec 32)) SeekEntryResult!13106)

(assert (=> b!1524858 (= e!850042 (= (seekEntryOrOpen!0 (select (arr!48920 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48920 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524859 () Bool)

(declare-fun res!1043356 () Bool)

(assert (=> b!1524859 (=> (not res!1043356) (not e!850043))))

(declare-datatypes ((List!35583 0))(
  ( (Nil!35580) (Cons!35579 (h!37010 (_ BitVec 64)) (t!50284 List!35583)) )
))
(declare-fun arrayNoDuplicates!0 (array!101393 (_ BitVec 32) List!35583) Bool)

(assert (=> b!1524859 (= res!1043356 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35580))))

(declare-fun b!1524860 () Bool)

(declare-fun res!1043354 () Bool)

(assert (=> b!1524860 (=> (not res!1043354) (not e!850041))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101393 (_ BitVec 32)) SeekEntryResult!13106)

(assert (=> b!1524860 (= res!1043354 (= (seekEntry!0 (select (arr!48920 a!2804) j!70) a!2804 mask!2512) (Found!13106 j!70)))))

(declare-fun b!1524861 () Bool)

(declare-fun res!1043359 () Bool)

(assert (=> b!1524861 (=> (not res!1043359) (not e!850043))))

(assert (=> b!1524861 (= res!1043359 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49471 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49471 a!2804))))))

(declare-fun b!1524862 () Bool)

(declare-fun res!1043352 () Bool)

(assert (=> b!1524862 (=> (not res!1043352) (not e!850040))))

(assert (=> b!1524862 (= res!1043352 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48920 a!2804) j!70) a!2804 mask!2512) lt!660454))))

(assert (= (and start!129990 res!1043353) b!1524854))

(assert (= (and b!1524854 res!1043349) b!1524855))

(assert (= (and b!1524855 res!1043355) b!1524850))

(assert (= (and b!1524850 res!1043361) b!1524857))

(assert (= (and b!1524857 res!1043358) b!1524859))

(assert (= (and b!1524859 res!1043356) b!1524861))

(assert (= (and b!1524861 res!1043359) b!1524852))

(assert (= (and b!1524852 res!1043351) b!1524862))

(assert (= (and b!1524862 res!1043352) b!1524856))

(assert (= (and b!1524856 res!1043350) b!1524851))

(assert (= (and b!1524851 res!1043360) b!1524860))

(assert (= (and b!1524860 res!1043354) b!1524853))

(assert (= (and b!1524853 (not res!1043357)) b!1524858))

(declare-fun m!1407777 () Bool)

(assert (=> b!1524858 m!1407777))

(assert (=> b!1524858 m!1407777))

(declare-fun m!1407779 () Bool)

(assert (=> b!1524858 m!1407779))

(assert (=> b!1524858 m!1407777))

(declare-fun m!1407781 () Bool)

(assert (=> b!1524858 m!1407781))

(declare-fun m!1407783 () Bool)

(assert (=> b!1524856 m!1407783))

(declare-fun m!1407785 () Bool)

(assert (=> b!1524856 m!1407785))

(assert (=> b!1524856 m!1407785))

(declare-fun m!1407787 () Bool)

(assert (=> b!1524856 m!1407787))

(assert (=> b!1524856 m!1407787))

(assert (=> b!1524856 m!1407785))

(declare-fun m!1407789 () Bool)

(assert (=> b!1524856 m!1407789))

(declare-fun m!1407791 () Bool)

(assert (=> b!1524851 m!1407791))

(declare-fun m!1407793 () Bool)

(assert (=> b!1524851 m!1407793))

(assert (=> b!1524850 m!1407777))

(assert (=> b!1524850 m!1407777))

(declare-fun m!1407795 () Bool)

(assert (=> b!1524850 m!1407795))

(declare-fun m!1407797 () Bool)

(assert (=> b!1524855 m!1407797))

(assert (=> b!1524855 m!1407797))

(declare-fun m!1407799 () Bool)

(assert (=> b!1524855 m!1407799))

(assert (=> b!1524860 m!1407777))

(assert (=> b!1524860 m!1407777))

(declare-fun m!1407801 () Bool)

(assert (=> b!1524860 m!1407801))

(declare-fun m!1407803 () Bool)

(assert (=> b!1524859 m!1407803))

(declare-fun m!1407805 () Bool)

(assert (=> start!129990 m!1407805))

(declare-fun m!1407807 () Bool)

(assert (=> start!129990 m!1407807))

(assert (=> b!1524852 m!1407777))

(assert (=> b!1524852 m!1407777))

(declare-fun m!1407809 () Bool)

(assert (=> b!1524852 m!1407809))

(assert (=> b!1524852 m!1407809))

(assert (=> b!1524852 m!1407777))

(declare-fun m!1407811 () Bool)

(assert (=> b!1524852 m!1407811))

(assert (=> b!1524862 m!1407777))

(assert (=> b!1524862 m!1407777))

(declare-fun m!1407813 () Bool)

(assert (=> b!1524862 m!1407813))

(assert (=> b!1524853 m!1407777))

(assert (=> b!1524853 m!1407783))

(assert (=> b!1524853 m!1407785))

(declare-fun m!1407815 () Bool)

(assert (=> b!1524853 m!1407815))

(declare-fun m!1407817 () Bool)

(assert (=> b!1524857 m!1407817))

(check-sat (not b!1524852) (not b!1524858) (not b!1524860) (not b!1524859) (not b!1524850) (not b!1524855) (not start!129990) (not b!1524857) (not b!1524851) (not b!1524862) (not b!1524856))
(check-sat)
