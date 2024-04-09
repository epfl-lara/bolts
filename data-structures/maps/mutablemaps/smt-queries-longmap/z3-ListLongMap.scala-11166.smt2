; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130572 () Bool)

(assert start!130572)

(declare-fun b!1531872 () Bool)

(declare-fun e!853563 () Bool)

(declare-fun e!853568 () Bool)

(assert (=> b!1531872 (= e!853563 e!853568)))

(declare-fun res!1049161 () Bool)

(assert (=> b!1531872 (=> (not res!1049161) (not e!853568))))

(declare-datatypes ((SeekEntryResult!13241 0))(
  ( (MissingZero!13241 (index!55358 (_ BitVec 32))) (Found!13241 (index!55359 (_ BitVec 32))) (Intermediate!13241 (undefined!14053 Bool) (index!55360 (_ BitVec 32)) (x!137062 (_ BitVec 32))) (Undefined!13241) (MissingVacant!13241 (index!55361 (_ BitVec 32))) )
))
(declare-fun lt!663408 () SeekEntryResult!13241)

(declare-datatypes ((array!101678 0))(
  ( (array!101679 (arr!49055 (Array (_ BitVec 32) (_ BitVec 64))) (size!49606 (_ BitVec 32))) )
))
(declare-fun lt!663412 () array!101678)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!663406 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101678 (_ BitVec 32)) SeekEntryResult!13241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531872 (= res!1049161 (= lt!663408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663406 mask!2512) lt!663406 lt!663412 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101678)

(assert (=> b!1531872 (= lt!663406 (select (store (arr!49055 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531872 (= lt!663412 (array!101679 (store (arr!49055 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49606 a!2804)))))

(declare-fun b!1531873 () Bool)

(declare-fun res!1049150 () Bool)

(declare-fun e!853565 () Bool)

(assert (=> b!1531873 (=> (not res!1049150) (not e!853565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101678 (_ BitVec 32)) Bool)

(assert (=> b!1531873 (= res!1049150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531874 () Bool)

(declare-fun res!1049163 () Bool)

(assert (=> b!1531874 (=> (not res!1049163) (not e!853565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531874 (= res!1049163 (validKeyInArray!0 (select (arr!49055 a!2804) i!961)))))

(declare-fun b!1531875 () Bool)

(declare-fun res!1049160 () Bool)

(assert (=> b!1531875 (=> (not res!1049160) (not e!853563))))

(declare-fun lt!663407 () SeekEntryResult!13241)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531875 (= res!1049160 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49055 a!2804) j!70) a!2804 mask!2512) lt!663407))))

(declare-fun b!1531876 () Bool)

(declare-fun e!853564 () Bool)

(assert (=> b!1531876 (= e!853568 (not e!853564))))

(declare-fun res!1049154 () Bool)

(assert (=> b!1531876 (=> res!1049154 e!853564)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1531876 (= res!1049154 (or (not (= (select (arr!49055 a!2804) j!70) lt!663406)) (= x!534 resX!21)))))

(declare-fun e!853562 () Bool)

(assert (=> b!1531876 e!853562))

(declare-fun res!1049157 () Bool)

(assert (=> b!1531876 (=> (not res!1049157) (not e!853562))))

(assert (=> b!1531876 (= res!1049157 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51222 0))(
  ( (Unit!51223) )
))
(declare-fun lt!663411 () Unit!51222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101678 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51222)

(assert (=> b!1531876 (= lt!663411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531877 () Bool)

(declare-fun res!1049162 () Bool)

(assert (=> b!1531877 (=> (not res!1049162) (not e!853565))))

(assert (=> b!1531877 (= res!1049162 (validKeyInArray!0 (select (arr!49055 a!2804) j!70)))))

(declare-fun b!1531878 () Bool)

(assert (=> b!1531878 (= e!853565 e!853563)))

(declare-fun res!1049156 () Bool)

(assert (=> b!1531878 (=> (not res!1049156) (not e!853563))))

(assert (=> b!1531878 (= res!1049156 (= lt!663408 lt!663407))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531878 (= lt!663407 (Intermediate!13241 false resIndex!21 resX!21))))

(assert (=> b!1531878 (= lt!663408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49055 a!2804) j!70) mask!2512) (select (arr!49055 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531879 () Bool)

(declare-fun res!1049153 () Bool)

(assert (=> b!1531879 (=> (not res!1049153) (not e!853565))))

(assert (=> b!1531879 (= res!1049153 (and (= (size!49606 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49606 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49606 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531881 () Bool)

(declare-fun res!1049159 () Bool)

(assert (=> b!1531881 (=> (not res!1049159) (not e!853565))))

(declare-datatypes ((List!35718 0))(
  ( (Nil!35715) (Cons!35714 (h!37160 (_ BitVec 64)) (t!50419 List!35718)) )
))
(declare-fun arrayNoDuplicates!0 (array!101678 (_ BitVec 32) List!35718) Bool)

(assert (=> b!1531881 (= res!1049159 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35715))))

(declare-fun b!1531882 () Bool)

(declare-fun e!853567 () Bool)

(assert (=> b!1531882 (= e!853564 e!853567)))

(declare-fun res!1049158 () Bool)

(assert (=> b!1531882 (=> res!1049158 e!853567)))

(declare-fun lt!663409 () (_ BitVec 32))

(assert (=> b!1531882 (= res!1049158 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663409 #b00000000000000000000000000000000) (bvsge lt!663409 (size!49606 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531882 (= lt!663409 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531883 () Bool)

(assert (=> b!1531883 (= e!853567 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101678 (_ BitVec 32)) SeekEntryResult!13241)

(assert (=> b!1531883 (= (seekEntryOrOpen!0 (select (arr!49055 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663406 lt!663412 mask!2512))))

(declare-fun lt!663410 () Unit!51222)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101678 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51222)

(assert (=> b!1531883 (= lt!663410 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663409 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531884 () Bool)

(declare-fun res!1049152 () Bool)

(assert (=> b!1531884 (=> res!1049152 e!853567)))

(assert (=> b!1531884 (= res!1049152 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663409 (select (arr!49055 a!2804) j!70) a!2804 mask!2512) lt!663407)))))

(declare-fun b!1531885 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101678 (_ BitVec 32)) SeekEntryResult!13241)

(assert (=> b!1531885 (= e!853562 (= (seekEntry!0 (select (arr!49055 a!2804) j!70) a!2804 mask!2512) (Found!13241 j!70)))))

(declare-fun b!1531880 () Bool)

(declare-fun res!1049151 () Bool)

(assert (=> b!1531880 (=> (not res!1049151) (not e!853565))))

(assert (=> b!1531880 (= res!1049151 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49606 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49606 a!2804))))))

(declare-fun res!1049155 () Bool)

(assert (=> start!130572 (=> (not res!1049155) (not e!853565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130572 (= res!1049155 (validMask!0 mask!2512))))

(assert (=> start!130572 e!853565))

(assert (=> start!130572 true))

(declare-fun array_inv!38000 (array!101678) Bool)

(assert (=> start!130572 (array_inv!38000 a!2804)))

(assert (= (and start!130572 res!1049155) b!1531879))

(assert (= (and b!1531879 res!1049153) b!1531874))

(assert (= (and b!1531874 res!1049163) b!1531877))

(assert (= (and b!1531877 res!1049162) b!1531873))

(assert (= (and b!1531873 res!1049150) b!1531881))

(assert (= (and b!1531881 res!1049159) b!1531880))

(assert (= (and b!1531880 res!1049151) b!1531878))

(assert (= (and b!1531878 res!1049156) b!1531875))

(assert (= (and b!1531875 res!1049160) b!1531872))

(assert (= (and b!1531872 res!1049161) b!1531876))

(assert (= (and b!1531876 res!1049157) b!1531885))

(assert (= (and b!1531876 (not res!1049154)) b!1531882))

(assert (= (and b!1531882 (not res!1049158)) b!1531884))

(assert (= (and b!1531884 (not res!1049152)) b!1531883))

(declare-fun m!1414603 () Bool)

(assert (=> b!1531874 m!1414603))

(assert (=> b!1531874 m!1414603))

(declare-fun m!1414605 () Bool)

(assert (=> b!1531874 m!1414605))

(declare-fun m!1414607 () Bool)

(assert (=> b!1531877 m!1414607))

(assert (=> b!1531877 m!1414607))

(declare-fun m!1414609 () Bool)

(assert (=> b!1531877 m!1414609))

(declare-fun m!1414611 () Bool)

(assert (=> b!1531881 m!1414611))

(assert (=> b!1531885 m!1414607))

(assert (=> b!1531885 m!1414607))

(declare-fun m!1414613 () Bool)

(assert (=> b!1531885 m!1414613))

(assert (=> b!1531878 m!1414607))

(assert (=> b!1531878 m!1414607))

(declare-fun m!1414615 () Bool)

(assert (=> b!1531878 m!1414615))

(assert (=> b!1531878 m!1414615))

(assert (=> b!1531878 m!1414607))

(declare-fun m!1414617 () Bool)

(assert (=> b!1531878 m!1414617))

(declare-fun m!1414619 () Bool)

(assert (=> b!1531872 m!1414619))

(assert (=> b!1531872 m!1414619))

(declare-fun m!1414621 () Bool)

(assert (=> b!1531872 m!1414621))

(declare-fun m!1414623 () Bool)

(assert (=> b!1531872 m!1414623))

(declare-fun m!1414625 () Bool)

(assert (=> b!1531872 m!1414625))

(declare-fun m!1414627 () Bool)

(assert (=> b!1531882 m!1414627))

(assert (=> b!1531876 m!1414607))

(declare-fun m!1414629 () Bool)

(assert (=> b!1531876 m!1414629))

(declare-fun m!1414631 () Bool)

(assert (=> b!1531876 m!1414631))

(assert (=> b!1531884 m!1414607))

(assert (=> b!1531884 m!1414607))

(declare-fun m!1414633 () Bool)

(assert (=> b!1531884 m!1414633))

(assert (=> b!1531875 m!1414607))

(assert (=> b!1531875 m!1414607))

(declare-fun m!1414635 () Bool)

(assert (=> b!1531875 m!1414635))

(assert (=> b!1531883 m!1414607))

(assert (=> b!1531883 m!1414607))

(declare-fun m!1414637 () Bool)

(assert (=> b!1531883 m!1414637))

(declare-fun m!1414639 () Bool)

(assert (=> b!1531883 m!1414639))

(declare-fun m!1414641 () Bool)

(assert (=> b!1531883 m!1414641))

(declare-fun m!1414643 () Bool)

(assert (=> start!130572 m!1414643))

(declare-fun m!1414645 () Bool)

(assert (=> start!130572 m!1414645))

(declare-fun m!1414647 () Bool)

(assert (=> b!1531873 m!1414647))

(check-sat (not start!130572) (not b!1531876) (not b!1531872) (not b!1531883) (not b!1531874) (not b!1531877) (not b!1531884) (not b!1531878) (not b!1531882) (not b!1531885) (not b!1531875) (not b!1531881) (not b!1531873))
(check-sat)
