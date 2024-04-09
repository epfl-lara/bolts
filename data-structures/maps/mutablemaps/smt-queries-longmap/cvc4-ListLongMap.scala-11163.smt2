; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130556 () Bool)

(assert start!130556)

(declare-fun b!1531536 () Bool)

(declare-fun res!1048819 () Bool)

(declare-fun e!853400 () Bool)

(assert (=> b!1531536 (=> (not res!1048819) (not e!853400))))

(declare-datatypes ((array!101662 0))(
  ( (array!101663 (arr!49047 (Array (_ BitVec 32) (_ BitVec 64))) (size!49598 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101662)

(declare-datatypes ((List!35710 0))(
  ( (Nil!35707) (Cons!35706 (h!37152 (_ BitVec 64)) (t!50411 List!35710)) )
))
(declare-fun arrayNoDuplicates!0 (array!101662 (_ BitVec 32) List!35710) Bool)

(assert (=> b!1531536 (= res!1048819 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35707))))

(declare-fun b!1531537 () Bool)

(declare-fun res!1048815 () Bool)

(assert (=> b!1531537 (=> (not res!1048815) (not e!853400))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531537 (= res!1048815 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49598 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49598 a!2804))))))

(declare-fun b!1531538 () Bool)

(declare-fun e!853399 () Bool)

(declare-fun e!853397 () Bool)

(assert (=> b!1531538 (= e!853399 e!853397)))

(declare-fun res!1048825 () Bool)

(assert (=> b!1531538 (=> res!1048825 e!853397)))

(declare-fun lt!663243 () (_ BitVec 32))

(assert (=> b!1531538 (= res!1048825 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663243 #b00000000000000000000000000000000) (bvsge lt!663243 (size!49598 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531538 (= lt!663243 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531540 () Bool)

(declare-fun res!1048817 () Bool)

(declare-fun e!853395 () Bool)

(assert (=> b!1531540 (=> (not res!1048817) (not e!853395))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13233 0))(
  ( (MissingZero!13233 (index!55326 (_ BitVec 32))) (Found!13233 (index!55327 (_ BitVec 32))) (Intermediate!13233 (undefined!14045 Bool) (index!55328 (_ BitVec 32)) (x!137030 (_ BitVec 32))) (Undefined!13233) (MissingVacant!13233 (index!55329 (_ BitVec 32))) )
))
(declare-fun lt!663242 () SeekEntryResult!13233)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101662 (_ BitVec 32)) SeekEntryResult!13233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531540 (= res!1048817 (= lt!663242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49047 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49047 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101663 (store (arr!49047 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49598 a!2804)) mask!2512)))))

(declare-fun b!1531541 () Bool)

(assert (=> b!1531541 (= e!853395 (not e!853399))))

(declare-fun res!1048820 () Bool)

(assert (=> b!1531541 (=> res!1048820 e!853399)))

(assert (=> b!1531541 (= res!1048820 (or (not (= (select (arr!49047 a!2804) j!70) (select (store (arr!49047 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853396 () Bool)

(assert (=> b!1531541 e!853396))

(declare-fun res!1048816 () Bool)

(assert (=> b!1531541 (=> (not res!1048816) (not e!853396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101662 (_ BitVec 32)) Bool)

(assert (=> b!1531541 (= res!1048816 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51206 0))(
  ( (Unit!51207) )
))
(declare-fun lt!663244 () Unit!51206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51206)

(assert (=> b!1531541 (= lt!663244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531542 () Bool)

(assert (=> b!1531542 (= e!853400 e!853395)))

(declare-fun res!1048823 () Bool)

(assert (=> b!1531542 (=> (not res!1048823) (not e!853395))))

(declare-fun lt!663241 () SeekEntryResult!13233)

(assert (=> b!1531542 (= res!1048823 (= lt!663242 lt!663241))))

(assert (=> b!1531542 (= lt!663241 (Intermediate!13233 false resIndex!21 resX!21))))

(assert (=> b!1531542 (= lt!663242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49047 a!2804) j!70) mask!2512) (select (arr!49047 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531543 () Bool)

(declare-fun res!1048826 () Bool)

(assert (=> b!1531543 (=> (not res!1048826) (not e!853400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531543 (= res!1048826 (validKeyInArray!0 (select (arr!49047 a!2804) j!70)))))

(declare-fun b!1531544 () Bool)

(declare-fun res!1048814 () Bool)

(assert (=> b!1531544 (=> (not res!1048814) (not e!853400))))

(assert (=> b!1531544 (= res!1048814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531545 () Bool)

(declare-fun res!1048824 () Bool)

(assert (=> b!1531545 (=> (not res!1048824) (not e!853395))))

(assert (=> b!1531545 (= res!1048824 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49047 a!2804) j!70) a!2804 mask!2512) lt!663241))))

(declare-fun b!1531546 () Bool)

(assert (=> b!1531546 (= e!853397 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!534)) (bvsub #b01111111111111111111111111111110 x!534)))))

(declare-fun b!1531539 () Bool)

(declare-fun res!1048821 () Bool)

(assert (=> b!1531539 (=> (not res!1048821) (not e!853400))))

(assert (=> b!1531539 (= res!1048821 (validKeyInArray!0 (select (arr!49047 a!2804) i!961)))))

(declare-fun res!1048822 () Bool)

(assert (=> start!130556 (=> (not res!1048822) (not e!853400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130556 (= res!1048822 (validMask!0 mask!2512))))

(assert (=> start!130556 e!853400))

(assert (=> start!130556 true))

(declare-fun array_inv!37992 (array!101662) Bool)

(assert (=> start!130556 (array_inv!37992 a!2804)))

(declare-fun b!1531547 () Bool)

(declare-fun res!1048818 () Bool)

(assert (=> b!1531547 (=> res!1048818 e!853397)))

(assert (=> b!1531547 (= res!1048818 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663243 (select (arr!49047 a!2804) j!70) a!2804 mask!2512) lt!663241)))))

(declare-fun b!1531548 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101662 (_ BitVec 32)) SeekEntryResult!13233)

(assert (=> b!1531548 (= e!853396 (= (seekEntry!0 (select (arr!49047 a!2804) j!70) a!2804 mask!2512) (Found!13233 j!70)))))

(declare-fun b!1531549 () Bool)

(declare-fun res!1048827 () Bool)

(assert (=> b!1531549 (=> (not res!1048827) (not e!853400))))

(assert (=> b!1531549 (= res!1048827 (and (= (size!49598 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49598 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49598 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130556 res!1048822) b!1531549))

(assert (= (and b!1531549 res!1048827) b!1531539))

(assert (= (and b!1531539 res!1048821) b!1531543))

(assert (= (and b!1531543 res!1048826) b!1531544))

(assert (= (and b!1531544 res!1048814) b!1531536))

(assert (= (and b!1531536 res!1048819) b!1531537))

(assert (= (and b!1531537 res!1048815) b!1531542))

(assert (= (and b!1531542 res!1048823) b!1531545))

(assert (= (and b!1531545 res!1048824) b!1531540))

(assert (= (and b!1531540 res!1048817) b!1531541))

(assert (= (and b!1531541 res!1048816) b!1531548))

(assert (= (and b!1531541 (not res!1048820)) b!1531538))

(assert (= (and b!1531538 (not res!1048825)) b!1531547))

(assert (= (and b!1531547 (not res!1048818)) b!1531546))

(declare-fun m!1414241 () Bool)

(assert (=> b!1531542 m!1414241))

(assert (=> b!1531542 m!1414241))

(declare-fun m!1414243 () Bool)

(assert (=> b!1531542 m!1414243))

(assert (=> b!1531542 m!1414243))

(assert (=> b!1531542 m!1414241))

(declare-fun m!1414245 () Bool)

(assert (=> b!1531542 m!1414245))

(assert (=> b!1531545 m!1414241))

(assert (=> b!1531545 m!1414241))

(declare-fun m!1414247 () Bool)

(assert (=> b!1531545 m!1414247))

(declare-fun m!1414249 () Bool)

(assert (=> b!1531544 m!1414249))

(declare-fun m!1414251 () Bool)

(assert (=> start!130556 m!1414251))

(declare-fun m!1414253 () Bool)

(assert (=> start!130556 m!1414253))

(declare-fun m!1414255 () Bool)

(assert (=> b!1531539 m!1414255))

(assert (=> b!1531539 m!1414255))

(declare-fun m!1414257 () Bool)

(assert (=> b!1531539 m!1414257))

(declare-fun m!1414259 () Bool)

(assert (=> b!1531538 m!1414259))

(assert (=> b!1531547 m!1414241))

(assert (=> b!1531547 m!1414241))

(declare-fun m!1414261 () Bool)

(assert (=> b!1531547 m!1414261))

(assert (=> b!1531541 m!1414241))

(declare-fun m!1414263 () Bool)

(assert (=> b!1531541 m!1414263))

(declare-fun m!1414265 () Bool)

(assert (=> b!1531541 m!1414265))

(declare-fun m!1414267 () Bool)

(assert (=> b!1531541 m!1414267))

(declare-fun m!1414269 () Bool)

(assert (=> b!1531541 m!1414269))

(declare-fun m!1414271 () Bool)

(assert (=> b!1531536 m!1414271))

(assert (=> b!1531540 m!1414265))

(assert (=> b!1531540 m!1414267))

(assert (=> b!1531540 m!1414267))

(declare-fun m!1414273 () Bool)

(assert (=> b!1531540 m!1414273))

(assert (=> b!1531540 m!1414273))

(assert (=> b!1531540 m!1414267))

(declare-fun m!1414275 () Bool)

(assert (=> b!1531540 m!1414275))

(assert (=> b!1531548 m!1414241))

(assert (=> b!1531548 m!1414241))

(declare-fun m!1414277 () Bool)

(assert (=> b!1531548 m!1414277))

(assert (=> b!1531543 m!1414241))

(assert (=> b!1531543 m!1414241))

(declare-fun m!1414279 () Bool)

(assert (=> b!1531543 m!1414279))

(push 1)

(assert (not b!1531536))

(assert (not b!1531539))

(assert (not b!1531544))

(assert (not b!1531545))

(assert (not b!1531543))

(assert (not b!1531542))

(assert (not b!1531538))

(assert (not b!1531547))

(assert (not b!1531548))

(assert (not b!1531540))

(assert (not start!130556))

(assert (not b!1531541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

