; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129994 () Bool)

(assert start!129994)

(declare-fun b!1524928 () Bool)

(declare-fun res!1043430 () Bool)

(declare-fun e!850069 () Bool)

(assert (=> b!1524928 (=> (not res!1043430) (not e!850069))))

(declare-datatypes ((array!101397 0))(
  ( (array!101398 (arr!48922 (Array (_ BitVec 32) (_ BitVec 64))) (size!49473 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101397)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101397 (_ BitVec 32)) Bool)

(assert (=> b!1524928 (= res!1043430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524929 () Bool)

(declare-fun res!1043435 () Bool)

(declare-fun e!850071 () Bool)

(assert (=> b!1524929 (=> (not res!1043435) (not e!850071))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13108 0))(
  ( (MissingZero!13108 (index!54826 (_ BitVec 32))) (Found!13108 (index!54827 (_ BitVec 32))) (Intermediate!13108 (undefined!13920 Bool) (index!54828 (_ BitVec 32)) (x!136532 (_ BitVec 32))) (Undefined!13108) (MissingVacant!13108 (index!54829 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101397 (_ BitVec 32)) SeekEntryResult!13108)

(assert (=> b!1524929 (= res!1043435 (= (seekEntry!0 (select (arr!48922 a!2804) j!70) a!2804 mask!2512) (Found!13108 j!70)))))

(declare-fun res!1043432 () Bool)

(assert (=> start!129994 (=> (not res!1043432) (not e!850069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129994 (= res!1043432 (validMask!0 mask!2512))))

(assert (=> start!129994 e!850069))

(assert (=> start!129994 true))

(declare-fun array_inv!37867 (array!101397) Bool)

(assert (=> start!129994 (array_inv!37867 a!2804)))

(declare-fun b!1524930 () Bool)

(declare-fun res!1043429 () Bool)

(assert (=> b!1524930 (=> (not res!1043429) (not e!850069))))

(declare-datatypes ((List!35585 0))(
  ( (Nil!35582) (Cons!35581 (h!37012 (_ BitVec 64)) (t!50286 List!35585)) )
))
(declare-fun arrayNoDuplicates!0 (array!101397 (_ BitVec 32) List!35585) Bool)

(assert (=> b!1524930 (= res!1043429 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35582))))

(declare-fun b!1524931 () Bool)

(declare-fun e!850070 () Bool)

(assert (=> b!1524931 (= e!850069 e!850070)))

(declare-fun res!1043439 () Bool)

(assert (=> b!1524931 (=> (not res!1043439) (not e!850070))))

(declare-fun lt!660470 () SeekEntryResult!13108)

(declare-fun lt!660472 () SeekEntryResult!13108)

(assert (=> b!1524931 (= res!1043439 (= lt!660470 lt!660472))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524931 (= lt!660472 (Intermediate!13108 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101397 (_ BitVec 32)) SeekEntryResult!13108)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524931 (= lt!660470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48922 a!2804) j!70) mask!2512) (select (arr!48922 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524932 () Bool)

(assert (=> b!1524932 (= e!850070 (not true))))

(assert (=> b!1524932 e!850071))

(declare-fun res!1043427 () Bool)

(assert (=> b!1524932 (=> (not res!1043427) (not e!850071))))

(assert (=> b!1524932 (= res!1043427 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50956 0))(
  ( (Unit!50957) )
))
(declare-fun lt!660471 () Unit!50956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50956)

(assert (=> b!1524932 (= lt!660471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524933 () Bool)

(declare-fun res!1043438 () Bool)

(assert (=> b!1524933 (=> (not res!1043438) (not e!850069))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524933 (= res!1043438 (validKeyInArray!0 (select (arr!48922 a!2804) i!961)))))

(declare-fun b!1524934 () Bool)

(declare-fun e!850072 () Bool)

(assert (=> b!1524934 (= e!850071 e!850072)))

(declare-fun res!1043428 () Bool)

(assert (=> b!1524934 (=> res!1043428 e!850072)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524934 (= res!1043428 (or (not (= (select (arr!48922 a!2804) j!70) (select (store (arr!48922 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48922 a!2804) index!487) (select (arr!48922 a!2804) j!70)) (not (= (select (arr!48922 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1524935 () Bool)

(declare-fun res!1043431 () Bool)

(assert (=> b!1524935 (=> (not res!1043431) (not e!850070))))

(assert (=> b!1524935 (= res!1043431 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48922 a!2804) j!70) a!2804 mask!2512) lt!660472))))

(declare-fun b!1524936 () Bool)

(declare-fun res!1043436 () Bool)

(assert (=> b!1524936 (=> (not res!1043436) (not e!850070))))

(assert (=> b!1524936 (= res!1043436 (= lt!660470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48922 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48922 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101398 (store (arr!48922 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49473 a!2804)) mask!2512)))))

(declare-fun b!1524937 () Bool)

(declare-fun res!1043434 () Bool)

(assert (=> b!1524937 (=> (not res!1043434) (not e!850069))))

(assert (=> b!1524937 (= res!1043434 (and (= (size!49473 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49473 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49473 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524938 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101397 (_ BitVec 32)) SeekEntryResult!13108)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101397 (_ BitVec 32)) SeekEntryResult!13108)

(assert (=> b!1524938 (= e!850072 (= (seekEntryOrOpen!0 (select (arr!48922 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48922 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524939 () Bool)

(declare-fun res!1043433 () Bool)

(assert (=> b!1524939 (=> (not res!1043433) (not e!850069))))

(assert (=> b!1524939 (= res!1043433 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49473 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49473 a!2804))))))

(declare-fun b!1524940 () Bool)

(declare-fun res!1043437 () Bool)

(assert (=> b!1524940 (=> (not res!1043437) (not e!850069))))

(assert (=> b!1524940 (= res!1043437 (validKeyInArray!0 (select (arr!48922 a!2804) j!70)))))

(assert (= (and start!129994 res!1043432) b!1524937))

(assert (= (and b!1524937 res!1043434) b!1524933))

(assert (= (and b!1524933 res!1043438) b!1524940))

(assert (= (and b!1524940 res!1043437) b!1524928))

(assert (= (and b!1524928 res!1043430) b!1524930))

(assert (= (and b!1524930 res!1043429) b!1524939))

(assert (= (and b!1524939 res!1043433) b!1524931))

(assert (= (and b!1524931 res!1043439) b!1524935))

(assert (= (and b!1524935 res!1043431) b!1524936))

(assert (= (and b!1524936 res!1043436) b!1524932))

(assert (= (and b!1524932 res!1043427) b!1524929))

(assert (= (and b!1524929 res!1043435) b!1524934))

(assert (= (and b!1524934 (not res!1043428)) b!1524938))

(declare-fun m!1407861 () Bool)

(assert (=> b!1524932 m!1407861))

(declare-fun m!1407863 () Bool)

(assert (=> b!1524932 m!1407863))

(declare-fun m!1407865 () Bool)

(assert (=> b!1524934 m!1407865))

(declare-fun m!1407867 () Bool)

(assert (=> b!1524934 m!1407867))

(declare-fun m!1407869 () Bool)

(assert (=> b!1524934 m!1407869))

(declare-fun m!1407871 () Bool)

(assert (=> b!1524934 m!1407871))

(assert (=> b!1524935 m!1407865))

(assert (=> b!1524935 m!1407865))

(declare-fun m!1407873 () Bool)

(assert (=> b!1524935 m!1407873))

(declare-fun m!1407875 () Bool)

(assert (=> b!1524928 m!1407875))

(assert (=> b!1524940 m!1407865))

(assert (=> b!1524940 m!1407865))

(declare-fun m!1407877 () Bool)

(assert (=> b!1524940 m!1407877))

(declare-fun m!1407879 () Bool)

(assert (=> b!1524933 m!1407879))

(assert (=> b!1524933 m!1407879))

(declare-fun m!1407881 () Bool)

(assert (=> b!1524933 m!1407881))

(declare-fun m!1407883 () Bool)

(assert (=> b!1524930 m!1407883))

(assert (=> b!1524938 m!1407865))

(assert (=> b!1524938 m!1407865))

(declare-fun m!1407885 () Bool)

(assert (=> b!1524938 m!1407885))

(assert (=> b!1524938 m!1407865))

(declare-fun m!1407887 () Bool)

(assert (=> b!1524938 m!1407887))

(assert (=> b!1524931 m!1407865))

(assert (=> b!1524931 m!1407865))

(declare-fun m!1407889 () Bool)

(assert (=> b!1524931 m!1407889))

(assert (=> b!1524931 m!1407889))

(assert (=> b!1524931 m!1407865))

(declare-fun m!1407891 () Bool)

(assert (=> b!1524931 m!1407891))

(declare-fun m!1407893 () Bool)

(assert (=> start!129994 m!1407893))

(declare-fun m!1407895 () Bool)

(assert (=> start!129994 m!1407895))

(assert (=> b!1524929 m!1407865))

(assert (=> b!1524929 m!1407865))

(declare-fun m!1407897 () Bool)

(assert (=> b!1524929 m!1407897))

(assert (=> b!1524936 m!1407867))

(assert (=> b!1524936 m!1407869))

(assert (=> b!1524936 m!1407869))

(declare-fun m!1407899 () Bool)

(assert (=> b!1524936 m!1407899))

(assert (=> b!1524936 m!1407899))

(assert (=> b!1524936 m!1407869))

(declare-fun m!1407901 () Bool)

(assert (=> b!1524936 m!1407901))

(push 1)

