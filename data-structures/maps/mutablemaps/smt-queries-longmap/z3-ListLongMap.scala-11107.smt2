; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129780 () Bool)

(assert start!129780)

(declare-fun b!1522692 () Bool)

(declare-fun res!1041738 () Bool)

(declare-fun e!849065 () Bool)

(assert (=> b!1522692 (=> (not res!1041738) (not e!849065))))

(declare-datatypes ((array!101303 0))(
  ( (array!101304 (arr!48878 (Array (_ BitVec 32) (_ BitVec 64))) (size!49429 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101303)

(declare-datatypes ((List!35541 0))(
  ( (Nil!35538) (Cons!35537 (h!36962 (_ BitVec 64)) (t!50242 List!35541)) )
))
(declare-fun arrayNoDuplicates!0 (array!101303 (_ BitVec 32) List!35541) Bool)

(assert (=> b!1522692 (= res!1041738 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35538))))

(declare-fun b!1522693 () Bool)

(declare-fun res!1041744 () Bool)

(assert (=> b!1522693 (=> (not res!1041744) (not e!849065))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522693 (= res!1041744 (validKeyInArray!0 (select (arr!48878 a!2804) i!961)))))

(declare-fun b!1522694 () Bool)

(declare-fun res!1041739 () Bool)

(declare-fun e!849068 () Bool)

(assert (=> b!1522694 (=> (not res!1041739) (not e!849068))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13064 0))(
  ( (MissingZero!13064 (index!54650 (_ BitVec 32))) (Found!13064 (index!54651 (_ BitVec 32))) (Intermediate!13064 (undefined!13876 Bool) (index!54652 (_ BitVec 32)) (x!136353 (_ BitVec 32))) (Undefined!13064) (MissingVacant!13064 (index!54653 (_ BitVec 32))) )
))
(declare-fun lt!659707 () SeekEntryResult!13064)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101303 (_ BitVec 32)) SeekEntryResult!13064)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522694 (= res!1041739 (= lt!659707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48878 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48878 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101304 (store (arr!48878 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49429 a!2804)) mask!2512)))))

(declare-fun res!1041737 () Bool)

(assert (=> start!129780 (=> (not res!1041737) (not e!849065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129780 (= res!1041737 (validMask!0 mask!2512))))

(assert (=> start!129780 e!849065))

(assert (=> start!129780 true))

(declare-fun array_inv!37823 (array!101303) Bool)

(assert (=> start!129780 (array_inv!37823 a!2804)))

(declare-fun b!1522695 () Bool)

(declare-fun res!1041747 () Bool)

(assert (=> b!1522695 (=> (not res!1041747) (not e!849065))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522695 (= res!1041747 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49429 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49429 a!2804))))))

(declare-fun b!1522696 () Bool)

(declare-fun res!1041745 () Bool)

(assert (=> b!1522696 (=> (not res!1041745) (not e!849065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101303 (_ BitVec 32)) Bool)

(assert (=> b!1522696 (= res!1041745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522697 () Bool)

(assert (=> b!1522697 (= e!849068 (not true))))

(declare-fun e!849066 () Bool)

(assert (=> b!1522697 e!849066))

(declare-fun res!1041746 () Bool)

(assert (=> b!1522697 (=> (not res!1041746) (not e!849066))))

(assert (=> b!1522697 (= res!1041746 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50868 0))(
  ( (Unit!50869) )
))
(declare-fun lt!659706 () Unit!50868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50868)

(assert (=> b!1522697 (= lt!659706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522698 () Bool)

(declare-fun res!1041743 () Bool)

(assert (=> b!1522698 (=> (not res!1041743) (not e!849065))))

(assert (=> b!1522698 (= res!1041743 (and (= (size!49429 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49429 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49429 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522699 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101303 (_ BitVec 32)) SeekEntryResult!13064)

(assert (=> b!1522699 (= e!849066 (= (seekEntry!0 (select (arr!48878 a!2804) j!70) a!2804 mask!2512) (Found!13064 j!70)))))

(declare-fun b!1522700 () Bool)

(assert (=> b!1522700 (= e!849065 e!849068)))

(declare-fun res!1041741 () Bool)

(assert (=> b!1522700 (=> (not res!1041741) (not e!849068))))

(declare-fun lt!659705 () SeekEntryResult!13064)

(assert (=> b!1522700 (= res!1041741 (= lt!659707 lt!659705))))

(assert (=> b!1522700 (= lt!659705 (Intermediate!13064 false resIndex!21 resX!21))))

(assert (=> b!1522700 (= lt!659707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48878 a!2804) j!70) mask!2512) (select (arr!48878 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522701 () Bool)

(declare-fun res!1041742 () Bool)

(assert (=> b!1522701 (=> (not res!1041742) (not e!849065))))

(assert (=> b!1522701 (= res!1041742 (validKeyInArray!0 (select (arr!48878 a!2804) j!70)))))

(declare-fun b!1522702 () Bool)

(declare-fun res!1041740 () Bool)

(assert (=> b!1522702 (=> (not res!1041740) (not e!849068))))

(assert (=> b!1522702 (= res!1041740 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48878 a!2804) j!70) a!2804 mask!2512) lt!659705))))

(assert (= (and start!129780 res!1041737) b!1522698))

(assert (= (and b!1522698 res!1041743) b!1522693))

(assert (= (and b!1522693 res!1041744) b!1522701))

(assert (= (and b!1522701 res!1041742) b!1522696))

(assert (= (and b!1522696 res!1041745) b!1522692))

(assert (= (and b!1522692 res!1041738) b!1522695))

(assert (= (and b!1522695 res!1041747) b!1522700))

(assert (= (and b!1522700 res!1041741) b!1522702))

(assert (= (and b!1522702 res!1041740) b!1522694))

(assert (= (and b!1522694 res!1041739) b!1522697))

(assert (= (and b!1522697 res!1041746) b!1522699))

(declare-fun m!1405803 () Bool)

(assert (=> b!1522694 m!1405803))

(declare-fun m!1405805 () Bool)

(assert (=> b!1522694 m!1405805))

(assert (=> b!1522694 m!1405805))

(declare-fun m!1405807 () Bool)

(assert (=> b!1522694 m!1405807))

(assert (=> b!1522694 m!1405807))

(assert (=> b!1522694 m!1405805))

(declare-fun m!1405809 () Bool)

(assert (=> b!1522694 m!1405809))

(declare-fun m!1405811 () Bool)

(assert (=> b!1522701 m!1405811))

(assert (=> b!1522701 m!1405811))

(declare-fun m!1405813 () Bool)

(assert (=> b!1522701 m!1405813))

(assert (=> b!1522699 m!1405811))

(assert (=> b!1522699 m!1405811))

(declare-fun m!1405815 () Bool)

(assert (=> b!1522699 m!1405815))

(declare-fun m!1405817 () Bool)

(assert (=> b!1522697 m!1405817))

(declare-fun m!1405819 () Bool)

(assert (=> b!1522697 m!1405819))

(declare-fun m!1405821 () Bool)

(assert (=> b!1522693 m!1405821))

(assert (=> b!1522693 m!1405821))

(declare-fun m!1405823 () Bool)

(assert (=> b!1522693 m!1405823))

(declare-fun m!1405825 () Bool)

(assert (=> b!1522692 m!1405825))

(assert (=> b!1522702 m!1405811))

(assert (=> b!1522702 m!1405811))

(declare-fun m!1405827 () Bool)

(assert (=> b!1522702 m!1405827))

(declare-fun m!1405829 () Bool)

(assert (=> start!129780 m!1405829))

(declare-fun m!1405831 () Bool)

(assert (=> start!129780 m!1405831))

(assert (=> b!1522700 m!1405811))

(assert (=> b!1522700 m!1405811))

(declare-fun m!1405833 () Bool)

(assert (=> b!1522700 m!1405833))

(assert (=> b!1522700 m!1405833))

(assert (=> b!1522700 m!1405811))

(declare-fun m!1405835 () Bool)

(assert (=> b!1522700 m!1405835))

(declare-fun m!1405837 () Bool)

(assert (=> b!1522696 m!1405837))

(check-sat (not b!1522699) (not b!1522700) (not b!1522701) (not b!1522694) (not b!1522692) (not b!1522697) (not start!129780) (not b!1522696) (not b!1522702) (not b!1522693))
(check-sat)
