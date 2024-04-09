; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129988 () Bool)

(assert start!129988)

(declare-fun b!1524811 () Bool)

(declare-fun res!1043315 () Bool)

(declare-fun e!850027 () Bool)

(assert (=> b!1524811 (=> (not res!1043315) (not e!850027))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101391 0))(
  ( (array!101392 (arr!48919 (Array (_ BitVec 32) (_ BitVec 64))) (size!49470 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101391)

(assert (=> b!1524811 (= res!1043315 (and (= (size!49470 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49470 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49470 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524812 () Bool)

(declare-fun res!1043316 () Bool)

(declare-fun e!850026 () Bool)

(assert (=> b!1524812 (=> (not res!1043316) (not e!850026))))

(declare-datatypes ((SeekEntryResult!13105 0))(
  ( (MissingZero!13105 (index!54814 (_ BitVec 32))) (Found!13105 (index!54815 (_ BitVec 32))) (Intermediate!13105 (undefined!13917 Bool) (index!54816 (_ BitVec 32)) (x!136521 (_ BitVec 32))) (Undefined!13105) (MissingVacant!13105 (index!54817 (_ BitVec 32))) )
))
(declare-fun lt!660444 () SeekEntryResult!13105)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101391 (_ BitVec 32)) SeekEntryResult!13105)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524812 (= res!1043316 (= lt!660444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48919 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48919 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101392 (store (arr!48919 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49470 a!2804)) mask!2512)))))

(declare-fun b!1524813 () Bool)

(declare-fun res!1043321 () Bool)

(assert (=> b!1524813 (=> (not res!1043321) (not e!850027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101391 (_ BitVec 32)) Bool)

(assert (=> b!1524813 (= res!1043321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524814 () Bool)

(assert (=> b!1524814 (= e!850027 e!850026)))

(declare-fun res!1043312 () Bool)

(assert (=> b!1524814 (=> (not res!1043312) (not e!850026))))

(declare-fun lt!660445 () SeekEntryResult!13105)

(assert (=> b!1524814 (= res!1043312 (= lt!660444 lt!660445))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524814 (= lt!660445 (Intermediate!13105 false resIndex!21 resX!21))))

(assert (=> b!1524814 (= lt!660444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48919 a!2804) j!70) mask!2512) (select (arr!48919 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524815 () Bool)

(declare-fun res!1043319 () Bool)

(declare-fun e!850024 () Bool)

(assert (=> b!1524815 (=> (not res!1043319) (not e!850024))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101391 (_ BitVec 32)) SeekEntryResult!13105)

(assert (=> b!1524815 (= res!1043319 (= (seekEntry!0 (select (arr!48919 a!2804) j!70) a!2804 mask!2512) (Found!13105 j!70)))))

(declare-fun b!1524816 () Bool)

(declare-fun res!1043320 () Bool)

(assert (=> b!1524816 (=> (not res!1043320) (not e!850027))))

(declare-datatypes ((List!35582 0))(
  ( (Nil!35579) (Cons!35578 (h!37009 (_ BitVec 64)) (t!50283 List!35582)) )
))
(declare-fun arrayNoDuplicates!0 (array!101391 (_ BitVec 32) List!35582) Bool)

(assert (=> b!1524816 (= res!1043320 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35579))))

(declare-fun b!1524818 () Bool)

(declare-fun res!1043322 () Bool)

(assert (=> b!1524818 (=> (not res!1043322) (not e!850027))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1524818 (= res!1043322 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49470 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49470 a!2804))))))

(declare-fun b!1524819 () Bool)

(declare-fun res!1043314 () Bool)

(assert (=> b!1524819 (=> (not res!1043314) (not e!850026))))

(assert (=> b!1524819 (= res!1043314 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48919 a!2804) j!70) a!2804 mask!2512) lt!660445))))

(declare-fun b!1524820 () Bool)

(declare-fun e!850025 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101391 (_ BitVec 32)) SeekEntryResult!13105)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101391 (_ BitVec 32)) SeekEntryResult!13105)

(assert (=> b!1524820 (= e!850025 (= (seekEntryOrOpen!0 (select (arr!48919 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48919 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524821 () Bool)

(declare-fun res!1043313 () Bool)

(assert (=> b!1524821 (=> (not res!1043313) (not e!850027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524821 (= res!1043313 (validKeyInArray!0 (select (arr!48919 a!2804) j!70)))))

(declare-fun b!1524822 () Bool)

(assert (=> b!1524822 (= e!850024 e!850025)))

(declare-fun res!1043318 () Bool)

(assert (=> b!1524822 (=> res!1043318 e!850025)))

(assert (=> b!1524822 (= res!1043318 (or (not (= (select (arr!48919 a!2804) j!70) (select (store (arr!48919 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48919 a!2804) index!487) (select (arr!48919 a!2804) j!70)) (not (= (select (arr!48919 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1524823 () Bool)

(declare-fun res!1043317 () Bool)

(assert (=> b!1524823 (=> (not res!1043317) (not e!850027))))

(assert (=> b!1524823 (= res!1043317 (validKeyInArray!0 (select (arr!48919 a!2804) i!961)))))

(declare-fun res!1043311 () Bool)

(assert (=> start!129988 (=> (not res!1043311) (not e!850027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129988 (= res!1043311 (validMask!0 mask!2512))))

(assert (=> start!129988 e!850027))

(assert (=> start!129988 true))

(declare-fun array_inv!37864 (array!101391) Bool)

(assert (=> start!129988 (array_inv!37864 a!2804)))

(declare-fun b!1524817 () Bool)

(assert (=> b!1524817 (= e!850026 (not true))))

(assert (=> b!1524817 e!850024))

(declare-fun res!1043310 () Bool)

(assert (=> b!1524817 (=> (not res!1043310) (not e!850024))))

(assert (=> b!1524817 (= res!1043310 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50950 0))(
  ( (Unit!50951) )
))
(declare-fun lt!660443 () Unit!50950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50950)

(assert (=> b!1524817 (= lt!660443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129988 res!1043311) b!1524811))

(assert (= (and b!1524811 res!1043315) b!1524823))

(assert (= (and b!1524823 res!1043317) b!1524821))

(assert (= (and b!1524821 res!1043313) b!1524813))

(assert (= (and b!1524813 res!1043321) b!1524816))

(assert (= (and b!1524816 res!1043320) b!1524818))

(assert (= (and b!1524818 res!1043322) b!1524814))

(assert (= (and b!1524814 res!1043312) b!1524819))

(assert (= (and b!1524819 res!1043314) b!1524812))

(assert (= (and b!1524812 res!1043316) b!1524817))

(assert (= (and b!1524817 res!1043310) b!1524815))

(assert (= (and b!1524815 res!1043319) b!1524822))

(assert (= (and b!1524822 (not res!1043318)) b!1524820))

(declare-fun m!1407735 () Bool)

(assert (=> b!1524819 m!1407735))

(assert (=> b!1524819 m!1407735))

(declare-fun m!1407737 () Bool)

(assert (=> b!1524819 m!1407737))

(declare-fun m!1407739 () Bool)

(assert (=> b!1524823 m!1407739))

(assert (=> b!1524823 m!1407739))

(declare-fun m!1407741 () Bool)

(assert (=> b!1524823 m!1407741))

(assert (=> b!1524822 m!1407735))

(declare-fun m!1407743 () Bool)

(assert (=> b!1524822 m!1407743))

(declare-fun m!1407745 () Bool)

(assert (=> b!1524822 m!1407745))

(declare-fun m!1407747 () Bool)

(assert (=> b!1524822 m!1407747))

(assert (=> b!1524820 m!1407735))

(assert (=> b!1524820 m!1407735))

(declare-fun m!1407749 () Bool)

(assert (=> b!1524820 m!1407749))

(assert (=> b!1524820 m!1407735))

(declare-fun m!1407751 () Bool)

(assert (=> b!1524820 m!1407751))

(declare-fun m!1407753 () Bool)

(assert (=> start!129988 m!1407753))

(declare-fun m!1407755 () Bool)

(assert (=> start!129988 m!1407755))

(declare-fun m!1407757 () Bool)

(assert (=> b!1524816 m!1407757))

(declare-fun m!1407759 () Bool)

(assert (=> b!1524817 m!1407759))

(declare-fun m!1407761 () Bool)

(assert (=> b!1524817 m!1407761))

(assert (=> b!1524812 m!1407743))

(assert (=> b!1524812 m!1407745))

(assert (=> b!1524812 m!1407745))

(declare-fun m!1407763 () Bool)

(assert (=> b!1524812 m!1407763))

(assert (=> b!1524812 m!1407763))

(assert (=> b!1524812 m!1407745))

(declare-fun m!1407765 () Bool)

(assert (=> b!1524812 m!1407765))

(declare-fun m!1407767 () Bool)

(assert (=> b!1524813 m!1407767))

(assert (=> b!1524815 m!1407735))

(assert (=> b!1524815 m!1407735))

(declare-fun m!1407769 () Bool)

(assert (=> b!1524815 m!1407769))

(assert (=> b!1524814 m!1407735))

(assert (=> b!1524814 m!1407735))

(declare-fun m!1407771 () Bool)

(assert (=> b!1524814 m!1407771))

(assert (=> b!1524814 m!1407771))

(assert (=> b!1524814 m!1407735))

(declare-fun m!1407773 () Bool)

(assert (=> b!1524814 m!1407773))

(assert (=> b!1524821 m!1407735))

(assert (=> b!1524821 m!1407735))

(declare-fun m!1407775 () Bool)

(assert (=> b!1524821 m!1407775))

(push 1)

