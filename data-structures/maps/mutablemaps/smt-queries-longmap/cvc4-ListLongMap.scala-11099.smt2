; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129652 () Bool)

(assert start!129652)

(declare-fun b!1521551 () Bool)

(declare-fun res!1040915 () Bool)

(declare-fun e!848560 () Bool)

(assert (=> b!1521551 (=> (not res!1040915) (not e!848560))))

(declare-datatypes ((array!101254 0))(
  ( (array!101255 (arr!48855 (Array (_ BitVec 32) (_ BitVec 64))) (size!49406 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101254)

(declare-datatypes ((List!35518 0))(
  ( (Nil!35515) (Cons!35514 (h!36936 (_ BitVec 64)) (t!50219 List!35518)) )
))
(declare-fun arrayNoDuplicates!0 (array!101254 (_ BitVec 32) List!35518) Bool)

(assert (=> b!1521551 (= res!1040915 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35515))))

(declare-fun b!1521552 () Bool)

(declare-fun e!848559 () Bool)

(assert (=> b!1521552 (= e!848559 false)))

(declare-datatypes ((SeekEntryResult!13041 0))(
  ( (MissingZero!13041 (index!54558 (_ BitVec 32))) (Found!13041 (index!54559 (_ BitVec 32))) (Intermediate!13041 (undefined!13853 Bool) (index!54560 (_ BitVec 32)) (x!136256 (_ BitVec 32))) (Undefined!13041) (MissingVacant!13041 (index!54561 (_ BitVec 32))) )
))
(declare-fun lt!659326 () SeekEntryResult!13041)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101254 (_ BitVec 32)) SeekEntryResult!13041)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521552 (= lt!659326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48855 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48855 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101255 (store (arr!48855 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49406 a!2804)) mask!2512))))

(declare-fun b!1521553 () Bool)

(declare-fun res!1040917 () Bool)

(assert (=> b!1521553 (=> (not res!1040917) (not e!848560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521553 (= res!1040917 (validKeyInArray!0 (select (arr!48855 a!2804) i!961)))))

(declare-fun res!1040913 () Bool)

(assert (=> start!129652 (=> (not res!1040913) (not e!848560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129652 (= res!1040913 (validMask!0 mask!2512))))

(assert (=> start!129652 e!848560))

(assert (=> start!129652 true))

(declare-fun array_inv!37800 (array!101254) Bool)

(assert (=> start!129652 (array_inv!37800 a!2804)))

(declare-fun b!1521554 () Bool)

(declare-fun res!1040916 () Bool)

(assert (=> b!1521554 (=> (not res!1040916) (not e!848560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101254 (_ BitVec 32)) Bool)

(assert (=> b!1521554 (= res!1040916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521555 () Bool)

(assert (=> b!1521555 (= e!848560 e!848559)))

(declare-fun res!1040912 () Bool)

(assert (=> b!1521555 (=> (not res!1040912) (not e!848559))))

(declare-fun lt!659325 () SeekEntryResult!13041)

(assert (=> b!1521555 (= res!1040912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48855 a!2804) j!70) mask!2512) (select (arr!48855 a!2804) j!70) a!2804 mask!2512) lt!659325))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521555 (= lt!659325 (Intermediate!13041 false resIndex!21 resX!21))))

(declare-fun b!1521556 () Bool)

(declare-fun res!1040914 () Bool)

(assert (=> b!1521556 (=> (not res!1040914) (not e!848560))))

(assert (=> b!1521556 (= res!1040914 (validKeyInArray!0 (select (arr!48855 a!2804) j!70)))))

(declare-fun b!1521557 () Bool)

(declare-fun res!1040918 () Bool)

(assert (=> b!1521557 (=> (not res!1040918) (not e!848560))))

(assert (=> b!1521557 (= res!1040918 (and (= (size!49406 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49406 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49406 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521558 () Bool)

(declare-fun res!1040919 () Bool)

(assert (=> b!1521558 (=> (not res!1040919) (not e!848560))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521558 (= res!1040919 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49406 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49406 a!2804))))))

(declare-fun b!1521559 () Bool)

(declare-fun res!1040911 () Bool)

(assert (=> b!1521559 (=> (not res!1040911) (not e!848559))))

(assert (=> b!1521559 (= res!1040911 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48855 a!2804) j!70) a!2804 mask!2512) lt!659325))))

(assert (= (and start!129652 res!1040913) b!1521557))

(assert (= (and b!1521557 res!1040918) b!1521553))

(assert (= (and b!1521553 res!1040917) b!1521556))

(assert (= (and b!1521556 res!1040914) b!1521554))

(assert (= (and b!1521554 res!1040916) b!1521551))

(assert (= (and b!1521551 res!1040915) b!1521558))

(assert (= (and b!1521558 res!1040919) b!1521555))

(assert (= (and b!1521555 res!1040912) b!1521559))

(assert (= (and b!1521559 res!1040911) b!1521552))

(declare-fun m!1404701 () Bool)

(assert (=> b!1521559 m!1404701))

(assert (=> b!1521559 m!1404701))

(declare-fun m!1404703 () Bool)

(assert (=> b!1521559 m!1404703))

(declare-fun m!1404705 () Bool)

(assert (=> b!1521554 m!1404705))

(declare-fun m!1404707 () Bool)

(assert (=> start!129652 m!1404707))

(declare-fun m!1404709 () Bool)

(assert (=> start!129652 m!1404709))

(assert (=> b!1521555 m!1404701))

(assert (=> b!1521555 m!1404701))

(declare-fun m!1404711 () Bool)

(assert (=> b!1521555 m!1404711))

(assert (=> b!1521555 m!1404711))

(assert (=> b!1521555 m!1404701))

(declare-fun m!1404713 () Bool)

(assert (=> b!1521555 m!1404713))

(declare-fun m!1404715 () Bool)

(assert (=> b!1521551 m!1404715))

(declare-fun m!1404717 () Bool)

(assert (=> b!1521553 m!1404717))

(assert (=> b!1521553 m!1404717))

(declare-fun m!1404719 () Bool)

(assert (=> b!1521553 m!1404719))

(declare-fun m!1404721 () Bool)

(assert (=> b!1521552 m!1404721))

(declare-fun m!1404723 () Bool)

(assert (=> b!1521552 m!1404723))

(assert (=> b!1521552 m!1404723))

(declare-fun m!1404725 () Bool)

(assert (=> b!1521552 m!1404725))

(assert (=> b!1521552 m!1404725))

(assert (=> b!1521552 m!1404723))

(declare-fun m!1404727 () Bool)

(assert (=> b!1521552 m!1404727))

(assert (=> b!1521556 m!1404701))

(assert (=> b!1521556 m!1404701))

(declare-fun m!1404729 () Bool)

(assert (=> b!1521556 m!1404729))

(push 1)

(assert (not b!1521554))

