; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129246 () Bool)

(assert start!129246)

(declare-fun b!1516624 () Bool)

(declare-fun e!846268 () Bool)

(declare-fun e!846267 () Bool)

(assert (=> b!1516624 (= e!846268 e!846267)))

(declare-fun res!1036610 () Bool)

(assert (=> b!1516624 (=> res!1036610 e!846267)))

(declare-fun lt!657450 () (_ BitVec 32))

(declare-datatypes ((array!101015 0))(
  ( (array!101016 (arr!48740 (Array (_ BitVec 32) (_ BitVec 64))) (size!49291 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101015)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516624 (= res!1036610 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657450 #b00000000000000000000000000000000) (bvsge lt!657450 (size!49291 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516624 (= lt!657450 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516625 () Bool)

(assert (=> b!1516625 (= e!846267 true)))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12932 0))(
  ( (MissingZero!12932 (index!54122 (_ BitVec 32))) (Found!12932 (index!54123 (_ BitVec 32))) (Intermediate!12932 (undefined!13744 Bool) (index!54124 (_ BitVec 32)) (x!135823 (_ BitVec 32))) (Undefined!12932) (MissingVacant!12932 (index!54125 (_ BitVec 32))) )
))
(declare-fun lt!657448 () SeekEntryResult!12932)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101015 (_ BitVec 32)) SeekEntryResult!12932)

(assert (=> b!1516625 (= lt!657448 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657450 (select (arr!48740 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516626 () Bool)

(declare-fun e!846265 () Bool)

(assert (=> b!1516626 (= e!846265 (not e!846268))))

(declare-fun res!1036608 () Bool)

(assert (=> b!1516626 (=> res!1036608 e!846268)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516626 (= res!1036608 (or (not (= (select (arr!48740 a!2804) j!70) (select (store (arr!48740 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846266 () Bool)

(assert (=> b!1516626 e!846266))

(declare-fun res!1036611 () Bool)

(assert (=> b!1516626 (=> (not res!1036611) (not e!846266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101015 (_ BitVec 32)) Bool)

(assert (=> b!1516626 (= res!1036611 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50688 0))(
  ( (Unit!50689) )
))
(declare-fun lt!657449 () Unit!50688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50688)

(assert (=> b!1516626 (= lt!657449 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516627 () Bool)

(declare-fun res!1036604 () Bool)

(assert (=> b!1516627 (=> (not res!1036604) (not e!846265))))

(declare-fun lt!657447 () SeekEntryResult!12932)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516627 (= res!1036604 (= lt!657447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48740 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48740 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101016 (store (arr!48740 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49291 a!2804)) mask!2512)))))

(declare-fun b!1516628 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101015 (_ BitVec 32)) SeekEntryResult!12932)

(assert (=> b!1516628 (= e!846266 (= (seekEntry!0 (select (arr!48740 a!2804) j!70) a!2804 mask!2512) (Found!12932 j!70)))))

(declare-fun b!1516629 () Bool)

(declare-fun res!1036606 () Bool)

(declare-fun e!846269 () Bool)

(assert (=> b!1516629 (=> (not res!1036606) (not e!846269))))

(assert (=> b!1516629 (= res!1036606 (and (= (size!49291 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49291 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49291 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516630 () Bool)

(assert (=> b!1516630 (= e!846269 e!846265)))

(declare-fun res!1036605 () Bool)

(assert (=> b!1516630 (=> (not res!1036605) (not e!846265))))

(declare-fun lt!657451 () SeekEntryResult!12932)

(assert (=> b!1516630 (= res!1036605 (= lt!657447 lt!657451))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516630 (= lt!657451 (Intermediate!12932 false resIndex!21 resX!21))))

(assert (=> b!1516630 (= lt!657447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48740 a!2804) j!70) mask!2512) (select (arr!48740 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516631 () Bool)

(declare-fun res!1036602 () Bool)

(assert (=> b!1516631 (=> (not res!1036602) (not e!846269))))

(declare-datatypes ((List!35403 0))(
  ( (Nil!35400) (Cons!35399 (h!36812 (_ BitVec 64)) (t!50104 List!35403)) )
))
(declare-fun arrayNoDuplicates!0 (array!101015 (_ BitVec 32) List!35403) Bool)

(assert (=> b!1516631 (= res!1036602 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35400))))

(declare-fun res!1036599 () Bool)

(assert (=> start!129246 (=> (not res!1036599) (not e!846269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129246 (= res!1036599 (validMask!0 mask!2512))))

(assert (=> start!129246 e!846269))

(assert (=> start!129246 true))

(declare-fun array_inv!37685 (array!101015) Bool)

(assert (=> start!129246 (array_inv!37685 a!2804)))

(declare-fun b!1516632 () Bool)

(declare-fun res!1036607 () Bool)

(assert (=> b!1516632 (=> (not res!1036607) (not e!846269))))

(assert (=> b!1516632 (= res!1036607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516633 () Bool)

(declare-fun res!1036601 () Bool)

(assert (=> b!1516633 (=> (not res!1036601) (not e!846269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516633 (= res!1036601 (validKeyInArray!0 (select (arr!48740 a!2804) i!961)))))

(declare-fun b!1516634 () Bool)

(declare-fun res!1036603 () Bool)

(assert (=> b!1516634 (=> (not res!1036603) (not e!846269))))

(assert (=> b!1516634 (= res!1036603 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49291 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49291 a!2804))))))

(declare-fun b!1516635 () Bool)

(declare-fun res!1036600 () Bool)

(assert (=> b!1516635 (=> (not res!1036600) (not e!846269))))

(assert (=> b!1516635 (= res!1036600 (validKeyInArray!0 (select (arr!48740 a!2804) j!70)))))

(declare-fun b!1516636 () Bool)

(declare-fun res!1036609 () Bool)

(assert (=> b!1516636 (=> (not res!1036609) (not e!846265))))

(assert (=> b!1516636 (= res!1036609 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48740 a!2804) j!70) a!2804 mask!2512) lt!657451))))

(assert (= (and start!129246 res!1036599) b!1516629))

(assert (= (and b!1516629 res!1036606) b!1516633))

(assert (= (and b!1516633 res!1036601) b!1516635))

(assert (= (and b!1516635 res!1036600) b!1516632))

(assert (= (and b!1516632 res!1036607) b!1516631))

(assert (= (and b!1516631 res!1036602) b!1516634))

(assert (= (and b!1516634 res!1036603) b!1516630))

(assert (= (and b!1516630 res!1036605) b!1516636))

(assert (= (and b!1516636 res!1036609) b!1516627))

(assert (= (and b!1516627 res!1036604) b!1516626))

(assert (= (and b!1516626 res!1036611) b!1516628))

(assert (= (and b!1516626 (not res!1036608)) b!1516624))

(assert (= (and b!1516624 (not res!1036610)) b!1516625))

(declare-fun m!1399951 () Bool)

(assert (=> b!1516625 m!1399951))

(assert (=> b!1516625 m!1399951))

(declare-fun m!1399953 () Bool)

(assert (=> b!1516625 m!1399953))

(declare-fun m!1399955 () Bool)

(assert (=> b!1516632 m!1399955))

(declare-fun m!1399957 () Bool)

(assert (=> b!1516624 m!1399957))

(assert (=> b!1516630 m!1399951))

(assert (=> b!1516630 m!1399951))

(declare-fun m!1399959 () Bool)

(assert (=> b!1516630 m!1399959))

(assert (=> b!1516630 m!1399959))

(assert (=> b!1516630 m!1399951))

(declare-fun m!1399961 () Bool)

(assert (=> b!1516630 m!1399961))

(declare-fun m!1399963 () Bool)

(assert (=> b!1516633 m!1399963))

(assert (=> b!1516633 m!1399963))

(declare-fun m!1399965 () Bool)

(assert (=> b!1516633 m!1399965))

(declare-fun m!1399967 () Bool)

(assert (=> b!1516627 m!1399967))

(declare-fun m!1399969 () Bool)

(assert (=> b!1516627 m!1399969))

(assert (=> b!1516627 m!1399969))

(declare-fun m!1399971 () Bool)

(assert (=> b!1516627 m!1399971))

(assert (=> b!1516627 m!1399971))

(assert (=> b!1516627 m!1399969))

(declare-fun m!1399973 () Bool)

(assert (=> b!1516627 m!1399973))

(assert (=> b!1516628 m!1399951))

(assert (=> b!1516628 m!1399951))

(declare-fun m!1399975 () Bool)

(assert (=> b!1516628 m!1399975))

(declare-fun m!1399977 () Bool)

(assert (=> start!129246 m!1399977))

(declare-fun m!1399979 () Bool)

(assert (=> start!129246 m!1399979))

(assert (=> b!1516635 m!1399951))

(assert (=> b!1516635 m!1399951))

(declare-fun m!1399981 () Bool)

(assert (=> b!1516635 m!1399981))

(declare-fun m!1399983 () Bool)

(assert (=> b!1516631 m!1399983))

(assert (=> b!1516626 m!1399951))

(declare-fun m!1399985 () Bool)

(assert (=> b!1516626 m!1399985))

(assert (=> b!1516626 m!1399967))

(assert (=> b!1516626 m!1399969))

(declare-fun m!1399987 () Bool)

(assert (=> b!1516626 m!1399987))

(assert (=> b!1516636 m!1399951))

(assert (=> b!1516636 m!1399951))

(declare-fun m!1399989 () Bool)

(assert (=> b!1516636 m!1399989))

(check-sat (not b!1516626) (not b!1516636) (not b!1516630) (not b!1516631) (not b!1516625) (not b!1516628) (not b!1516627) (not b!1516632) (not start!129246) (not b!1516624) (not b!1516635) (not b!1516633))
(check-sat)
