; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129292 () Bool)

(assert start!129292)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101061 0))(
  ( (array!101062 (arr!48763 (Array (_ BitVec 32) (_ BitVec 64))) (size!49314 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101061)

(declare-fun e!846683 () Bool)

(declare-fun b!1517521 () Bool)

(declare-datatypes ((SeekEntryResult!12955 0))(
  ( (MissingZero!12955 (index!54214 (_ BitVec 32))) (Found!12955 (index!54215 (_ BitVec 32))) (Intermediate!12955 (undefined!13767 Bool) (index!54216 (_ BitVec 32)) (x!135910 (_ BitVec 32))) (Undefined!12955) (MissingVacant!12955 (index!54217 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101061 (_ BitVec 32)) SeekEntryResult!12955)

(assert (=> b!1517521 (= e!846683 (= (seekEntry!0 (select (arr!48763 a!2804) j!70) a!2804 mask!2512) (Found!12955 j!70)))))

(declare-fun b!1517522 () Bool)

(declare-fun res!1037501 () Bool)

(declare-fun e!846682 () Bool)

(assert (=> b!1517522 (=> (not res!1037501) (not e!846682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101061 (_ BitVec 32)) Bool)

(assert (=> b!1517522 (= res!1037501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517523 () Bool)

(declare-fun res!1037504 () Bool)

(assert (=> b!1517523 (=> (not res!1037504) (not e!846682))))

(declare-datatypes ((List!35426 0))(
  ( (Nil!35423) (Cons!35422 (h!36835 (_ BitVec 64)) (t!50127 List!35426)) )
))
(declare-fun arrayNoDuplicates!0 (array!101061 (_ BitVec 32) List!35426) Bool)

(assert (=> b!1517523 (= res!1037504 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35423))))

(declare-fun b!1517524 () Bool)

(declare-fun e!846679 () Bool)

(declare-fun e!846680 () Bool)

(assert (=> b!1517524 (= e!846679 (not e!846680))))

(declare-fun res!1037507 () Bool)

(assert (=> b!1517524 (=> res!1037507 e!846680)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517524 (= res!1037507 (or (not (= (select (arr!48763 a!2804) j!70) (select (store (arr!48763 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517524 e!846683))

(declare-fun res!1037503 () Bool)

(assert (=> b!1517524 (=> (not res!1037503) (not e!846683))))

(assert (=> b!1517524 (= res!1037503 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50734 0))(
  ( (Unit!50735) )
))
(declare-fun lt!657795 () Unit!50734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50734)

(assert (=> b!1517524 (= lt!657795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517525 () Bool)

(declare-fun res!1037508 () Bool)

(assert (=> b!1517525 (=> (not res!1037508) (not e!846679))))

(declare-fun lt!657794 () SeekEntryResult!12955)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101061 (_ BitVec 32)) SeekEntryResult!12955)

(assert (=> b!1517525 (= res!1037508 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48763 a!2804) j!70) a!2804 mask!2512) lt!657794))))

(declare-fun b!1517527 () Bool)

(declare-fun res!1037497 () Bool)

(assert (=> b!1517527 (=> (not res!1037497) (not e!846682))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517527 (= res!1037497 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49314 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49314 a!2804))))))

(declare-fun b!1517528 () Bool)

(declare-fun res!1037498 () Bool)

(assert (=> b!1517528 (=> (not res!1037498) (not e!846682))))

(assert (=> b!1517528 (= res!1037498 (and (= (size!49314 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49314 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49314 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517529 () Bool)

(assert (=> b!1517529 (= e!846682 e!846679)))

(declare-fun res!1037505 () Bool)

(assert (=> b!1517529 (=> (not res!1037505) (not e!846679))))

(declare-fun lt!657796 () SeekEntryResult!12955)

(assert (=> b!1517529 (= res!1037505 (= lt!657796 lt!657794))))

(assert (=> b!1517529 (= lt!657794 (Intermediate!12955 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517529 (= lt!657796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48763 a!2804) j!70) mask!2512) (select (arr!48763 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517530 () Bool)

(declare-fun e!846681 () Bool)

(assert (=> b!1517530 (= e!846681 true)))

(declare-fun lt!657792 () (_ BitVec 32))

(declare-fun lt!657793 () SeekEntryResult!12955)

(assert (=> b!1517530 (= lt!657793 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657792 (select (arr!48763 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1037500 () Bool)

(assert (=> start!129292 (=> (not res!1037500) (not e!846682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129292 (= res!1037500 (validMask!0 mask!2512))))

(assert (=> start!129292 e!846682))

(assert (=> start!129292 true))

(declare-fun array_inv!37708 (array!101061) Bool)

(assert (=> start!129292 (array_inv!37708 a!2804)))

(declare-fun b!1517526 () Bool)

(declare-fun res!1037502 () Bool)

(assert (=> b!1517526 (=> (not res!1037502) (not e!846679))))

(assert (=> b!1517526 (= res!1037502 (= lt!657796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48763 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48763 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101062 (store (arr!48763 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49314 a!2804)) mask!2512)))))

(declare-fun b!1517531 () Bool)

(declare-fun res!1037506 () Bool)

(assert (=> b!1517531 (=> (not res!1037506) (not e!846682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517531 (= res!1037506 (validKeyInArray!0 (select (arr!48763 a!2804) j!70)))))

(declare-fun b!1517532 () Bool)

(assert (=> b!1517532 (= e!846680 e!846681)))

(declare-fun res!1037496 () Bool)

(assert (=> b!1517532 (=> res!1037496 e!846681)))

(assert (=> b!1517532 (= res!1037496 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657792 #b00000000000000000000000000000000) (bvsge lt!657792 (size!49314 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517532 (= lt!657792 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517533 () Bool)

(declare-fun res!1037499 () Bool)

(assert (=> b!1517533 (=> (not res!1037499) (not e!846682))))

(assert (=> b!1517533 (= res!1037499 (validKeyInArray!0 (select (arr!48763 a!2804) i!961)))))

(assert (= (and start!129292 res!1037500) b!1517528))

(assert (= (and b!1517528 res!1037498) b!1517533))

(assert (= (and b!1517533 res!1037499) b!1517531))

(assert (= (and b!1517531 res!1037506) b!1517522))

(assert (= (and b!1517522 res!1037501) b!1517523))

(assert (= (and b!1517523 res!1037504) b!1517527))

(assert (= (and b!1517527 res!1037497) b!1517529))

(assert (= (and b!1517529 res!1037505) b!1517525))

(assert (= (and b!1517525 res!1037508) b!1517526))

(assert (= (and b!1517526 res!1037502) b!1517524))

(assert (= (and b!1517524 res!1037503) b!1517521))

(assert (= (and b!1517524 (not res!1037507)) b!1517532))

(assert (= (and b!1517532 (not res!1037496)) b!1517530))

(declare-fun m!1400871 () Bool)

(assert (=> b!1517529 m!1400871))

(assert (=> b!1517529 m!1400871))

(declare-fun m!1400873 () Bool)

(assert (=> b!1517529 m!1400873))

(assert (=> b!1517529 m!1400873))

(assert (=> b!1517529 m!1400871))

(declare-fun m!1400875 () Bool)

(assert (=> b!1517529 m!1400875))

(declare-fun m!1400877 () Bool)

(assert (=> b!1517523 m!1400877))

(assert (=> b!1517524 m!1400871))

(declare-fun m!1400879 () Bool)

(assert (=> b!1517524 m!1400879))

(declare-fun m!1400881 () Bool)

(assert (=> b!1517524 m!1400881))

(declare-fun m!1400883 () Bool)

(assert (=> b!1517524 m!1400883))

(declare-fun m!1400885 () Bool)

(assert (=> b!1517524 m!1400885))

(declare-fun m!1400887 () Bool)

(assert (=> b!1517533 m!1400887))

(assert (=> b!1517533 m!1400887))

(declare-fun m!1400889 () Bool)

(assert (=> b!1517533 m!1400889))

(declare-fun m!1400891 () Bool)

(assert (=> start!129292 m!1400891))

(declare-fun m!1400893 () Bool)

(assert (=> start!129292 m!1400893))

(assert (=> b!1517531 m!1400871))

(assert (=> b!1517531 m!1400871))

(declare-fun m!1400895 () Bool)

(assert (=> b!1517531 m!1400895))

(declare-fun m!1400897 () Bool)

(assert (=> b!1517522 m!1400897))

(assert (=> b!1517526 m!1400881))

(assert (=> b!1517526 m!1400883))

(assert (=> b!1517526 m!1400883))

(declare-fun m!1400899 () Bool)

(assert (=> b!1517526 m!1400899))

(assert (=> b!1517526 m!1400899))

(assert (=> b!1517526 m!1400883))

(declare-fun m!1400901 () Bool)

(assert (=> b!1517526 m!1400901))

(declare-fun m!1400903 () Bool)

(assert (=> b!1517532 m!1400903))

(assert (=> b!1517521 m!1400871))

(assert (=> b!1517521 m!1400871))

(declare-fun m!1400905 () Bool)

(assert (=> b!1517521 m!1400905))

(assert (=> b!1517525 m!1400871))

(assert (=> b!1517525 m!1400871))

(declare-fun m!1400907 () Bool)

(assert (=> b!1517525 m!1400907))

(assert (=> b!1517530 m!1400871))

(assert (=> b!1517530 m!1400871))

(declare-fun m!1400909 () Bool)

(assert (=> b!1517530 m!1400909))

(push 1)

