; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129294 () Bool)

(assert start!129294)

(declare-fun b!1517560 () Bool)

(declare-fun e!846701 () Bool)

(declare-fun e!846697 () Bool)

(assert (=> b!1517560 (= e!846701 e!846697)))

(declare-fun res!1037543 () Bool)

(assert (=> b!1517560 (=> res!1037543 e!846697)))

(declare-datatypes ((array!101063 0))(
  ( (array!101064 (arr!48764 (Array (_ BitVec 32) (_ BitVec 64))) (size!49315 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101063)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657811 () (_ BitVec 32))

(assert (=> b!1517560 (= res!1037543 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657811 #b00000000000000000000000000000000) (bvsge lt!657811 (size!49315 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517560 (= lt!657811 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517561 () Bool)

(declare-fun e!846699 () Bool)

(declare-fun e!846698 () Bool)

(assert (=> b!1517561 (= e!846699 e!846698)))

(declare-fun res!1037538 () Bool)

(assert (=> b!1517561 (=> (not res!1037538) (not e!846698))))

(declare-datatypes ((SeekEntryResult!12956 0))(
  ( (MissingZero!12956 (index!54218 (_ BitVec 32))) (Found!12956 (index!54219 (_ BitVec 32))) (Intermediate!12956 (undefined!13768 Bool) (index!54220 (_ BitVec 32)) (x!135911 (_ BitVec 32))) (Undefined!12956) (MissingVacant!12956 (index!54221 (_ BitVec 32))) )
))
(declare-fun lt!657809 () SeekEntryResult!12956)

(declare-fun lt!657808 () SeekEntryResult!12956)

(assert (=> b!1517561 (= res!1037538 (= lt!657809 lt!657808))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517561 (= lt!657808 (Intermediate!12956 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101063 (_ BitVec 32)) SeekEntryResult!12956)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517561 (= lt!657809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48764 a!2804) j!70) mask!2512) (select (arr!48764 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517562 () Bool)

(declare-fun res!1037535 () Bool)

(assert (=> b!1517562 (=> (not res!1037535) (not e!846698))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517562 (= res!1037535 (= lt!657809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48764 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48764 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101064 (store (arr!48764 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49315 a!2804)) mask!2512)))))

(declare-fun b!1517563 () Bool)

(declare-fun res!1037540 () Bool)

(assert (=> b!1517563 (=> (not res!1037540) (not e!846699))))

(assert (=> b!1517563 (= res!1037540 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49315 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49315 a!2804))))))

(declare-fun b!1517564 () Bool)

(declare-fun res!1037547 () Bool)

(assert (=> b!1517564 (=> (not res!1037547) (not e!846699))))

(declare-datatypes ((List!35427 0))(
  ( (Nil!35424) (Cons!35423 (h!36836 (_ BitVec 64)) (t!50128 List!35427)) )
))
(declare-fun arrayNoDuplicates!0 (array!101063 (_ BitVec 32) List!35427) Bool)

(assert (=> b!1517564 (= res!1037547 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35424))))

(declare-fun b!1517565 () Bool)

(assert (=> b!1517565 (= e!846697 true)))

(declare-fun lt!657810 () SeekEntryResult!12956)

(assert (=> b!1517565 (= lt!657810 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657811 (select (arr!48764 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!846700 () Bool)

(declare-fun b!1517566 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101063 (_ BitVec 32)) SeekEntryResult!12956)

(assert (=> b!1517566 (= e!846700 (= (seekEntry!0 (select (arr!48764 a!2804) j!70) a!2804 mask!2512) (Found!12956 j!70)))))

(declare-fun b!1517567 () Bool)

(declare-fun res!1037537 () Bool)

(assert (=> b!1517567 (=> (not res!1037537) (not e!846699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517567 (= res!1037537 (validKeyInArray!0 (select (arr!48764 a!2804) j!70)))))

(declare-fun b!1517568 () Bool)

(declare-fun res!1037545 () Bool)

(assert (=> b!1517568 (=> (not res!1037545) (not e!846699))))

(assert (=> b!1517568 (= res!1037545 (and (= (size!49315 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49315 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49315 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517569 () Bool)

(declare-fun res!1037542 () Bool)

(assert (=> b!1517569 (=> (not res!1037542) (not e!846699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101063 (_ BitVec 32)) Bool)

(assert (=> b!1517569 (= res!1037542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517570 () Bool)

(declare-fun res!1037546 () Bool)

(assert (=> b!1517570 (=> (not res!1037546) (not e!846699))))

(assert (=> b!1517570 (= res!1037546 (validKeyInArray!0 (select (arr!48764 a!2804) i!961)))))

(declare-fun b!1517571 () Bool)

(declare-fun res!1037539 () Bool)

(assert (=> b!1517571 (=> (not res!1037539) (not e!846698))))

(assert (=> b!1517571 (= res!1037539 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48764 a!2804) j!70) a!2804 mask!2512) lt!657808))))

(declare-fun res!1037536 () Bool)

(assert (=> start!129294 (=> (not res!1037536) (not e!846699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129294 (= res!1037536 (validMask!0 mask!2512))))

(assert (=> start!129294 e!846699))

(assert (=> start!129294 true))

(declare-fun array_inv!37709 (array!101063) Bool)

(assert (=> start!129294 (array_inv!37709 a!2804)))

(declare-fun b!1517572 () Bool)

(assert (=> b!1517572 (= e!846698 (not e!846701))))

(declare-fun res!1037544 () Bool)

(assert (=> b!1517572 (=> res!1037544 e!846701)))

(assert (=> b!1517572 (= res!1037544 (or (not (= (select (arr!48764 a!2804) j!70) (select (store (arr!48764 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517572 e!846700))

(declare-fun res!1037541 () Bool)

(assert (=> b!1517572 (=> (not res!1037541) (not e!846700))))

(assert (=> b!1517572 (= res!1037541 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50736 0))(
  ( (Unit!50737) )
))
(declare-fun lt!657807 () Unit!50736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50736)

(assert (=> b!1517572 (= lt!657807 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129294 res!1037536) b!1517568))

(assert (= (and b!1517568 res!1037545) b!1517570))

(assert (= (and b!1517570 res!1037546) b!1517567))

(assert (= (and b!1517567 res!1037537) b!1517569))

(assert (= (and b!1517569 res!1037542) b!1517564))

(assert (= (and b!1517564 res!1037547) b!1517563))

(assert (= (and b!1517563 res!1037540) b!1517561))

(assert (= (and b!1517561 res!1037538) b!1517571))

(assert (= (and b!1517571 res!1037539) b!1517562))

(assert (= (and b!1517562 res!1037535) b!1517572))

(assert (= (and b!1517572 res!1037541) b!1517566))

(assert (= (and b!1517572 (not res!1037544)) b!1517560))

(assert (= (and b!1517560 (not res!1037543)) b!1517565))

(declare-fun m!1400911 () Bool)

(assert (=> b!1517569 m!1400911))

(declare-fun m!1400913 () Bool)

(assert (=> b!1517567 m!1400913))

(assert (=> b!1517567 m!1400913))

(declare-fun m!1400915 () Bool)

(assert (=> b!1517567 m!1400915))

(assert (=> b!1517561 m!1400913))

(assert (=> b!1517561 m!1400913))

(declare-fun m!1400917 () Bool)

(assert (=> b!1517561 m!1400917))

(assert (=> b!1517561 m!1400917))

(assert (=> b!1517561 m!1400913))

(declare-fun m!1400919 () Bool)

(assert (=> b!1517561 m!1400919))

(assert (=> b!1517572 m!1400913))

(declare-fun m!1400921 () Bool)

(assert (=> b!1517572 m!1400921))

(declare-fun m!1400923 () Bool)

(assert (=> b!1517572 m!1400923))

(declare-fun m!1400925 () Bool)

(assert (=> b!1517572 m!1400925))

(declare-fun m!1400927 () Bool)

(assert (=> b!1517572 m!1400927))

(assert (=> b!1517571 m!1400913))

(assert (=> b!1517571 m!1400913))

(declare-fun m!1400929 () Bool)

(assert (=> b!1517571 m!1400929))

(assert (=> b!1517562 m!1400923))

(assert (=> b!1517562 m!1400925))

(assert (=> b!1517562 m!1400925))

(declare-fun m!1400931 () Bool)

(assert (=> b!1517562 m!1400931))

(assert (=> b!1517562 m!1400931))

(assert (=> b!1517562 m!1400925))

(declare-fun m!1400933 () Bool)

(assert (=> b!1517562 m!1400933))

(declare-fun m!1400935 () Bool)

(assert (=> b!1517564 m!1400935))

(declare-fun m!1400937 () Bool)

(assert (=> b!1517570 m!1400937))

(assert (=> b!1517570 m!1400937))

(declare-fun m!1400939 () Bool)

(assert (=> b!1517570 m!1400939))

(assert (=> b!1517565 m!1400913))

(assert (=> b!1517565 m!1400913))

(declare-fun m!1400941 () Bool)

(assert (=> b!1517565 m!1400941))

(assert (=> b!1517566 m!1400913))

(assert (=> b!1517566 m!1400913))

(declare-fun m!1400943 () Bool)

(assert (=> b!1517566 m!1400943))

(declare-fun m!1400945 () Bool)

(assert (=> start!129294 m!1400945))

(declare-fun m!1400947 () Bool)

(assert (=> start!129294 m!1400947))

(declare-fun m!1400949 () Bool)

(assert (=> b!1517560 m!1400949))

(check-sat (not b!1517560) (not b!1517567) (not b!1517562) (not b!1517565) (not b!1517564) (not b!1517566) (not b!1517570) (not b!1517572) (not start!129294) (not b!1517569) (not b!1517561) (not b!1517571))
(check-sat)
