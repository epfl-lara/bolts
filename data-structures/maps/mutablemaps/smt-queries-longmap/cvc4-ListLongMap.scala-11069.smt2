; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129296 () Bool)

(assert start!129296)

(declare-fun b!1517599 () Bool)

(declare-fun res!1037577 () Bool)

(declare-fun e!846718 () Bool)

(assert (=> b!1517599 (=> (not res!1037577) (not e!846718))))

(declare-datatypes ((SeekEntryResult!12957 0))(
  ( (MissingZero!12957 (index!54222 (_ BitVec 32))) (Found!12957 (index!54223 (_ BitVec 32))) (Intermediate!12957 (undefined!13769 Bool) (index!54224 (_ BitVec 32)) (x!135912 (_ BitVec 32))) (Undefined!12957) (MissingVacant!12957 (index!54225 (_ BitVec 32))) )
))
(declare-fun lt!657822 () SeekEntryResult!12957)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101065 0))(
  ( (array!101066 (arr!48765 (Array (_ BitVec 32) (_ BitVec 64))) (size!49316 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101065)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101065 (_ BitVec 32)) SeekEntryResult!12957)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517599 (= res!1037577 (= lt!657822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48765 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48765 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101066 (store (arr!48765 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49316 a!2804)) mask!2512)))))

(declare-fun b!1517600 () Bool)

(declare-fun res!1037585 () Bool)

(declare-fun e!846719 () Bool)

(assert (=> b!1517600 (=> (not res!1037585) (not e!846719))))

(assert (=> b!1517600 (= res!1037585 (and (= (size!49316 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49316 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49316 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517601 () Bool)

(declare-fun res!1037579 () Bool)

(assert (=> b!1517601 (=> (not res!1037579) (not e!846719))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517601 (= res!1037579 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49316 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49316 a!2804))))))

(declare-fun b!1517603 () Bool)

(declare-fun e!846716 () Bool)

(assert (=> b!1517603 (= e!846716 true)))

(declare-fun lt!657823 () SeekEntryResult!12957)

(declare-fun lt!657825 () (_ BitVec 32))

(assert (=> b!1517603 (= lt!657823 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657825 (select (arr!48765 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517604 () Bool)

(declare-fun e!846715 () Bool)

(assert (=> b!1517604 (= e!846715 e!846716)))

(declare-fun res!1037583 () Bool)

(assert (=> b!1517604 (=> res!1037583 e!846716)))

(assert (=> b!1517604 (= res!1037583 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657825 #b00000000000000000000000000000000) (bvsge lt!657825 (size!49316 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517604 (= lt!657825 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517605 () Bool)

(assert (=> b!1517605 (= e!846718 (not e!846715))))

(declare-fun res!1037574 () Bool)

(assert (=> b!1517605 (=> res!1037574 e!846715)))

(assert (=> b!1517605 (= res!1037574 (or (not (= (select (arr!48765 a!2804) j!70) (select (store (arr!48765 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846714 () Bool)

(assert (=> b!1517605 e!846714))

(declare-fun res!1037581 () Bool)

(assert (=> b!1517605 (=> (not res!1037581) (not e!846714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101065 (_ BitVec 32)) Bool)

(assert (=> b!1517605 (= res!1037581 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50738 0))(
  ( (Unit!50739) )
))
(declare-fun lt!657824 () Unit!50738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50738)

(assert (=> b!1517605 (= lt!657824 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517606 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101065 (_ BitVec 32)) SeekEntryResult!12957)

(assert (=> b!1517606 (= e!846714 (= (seekEntry!0 (select (arr!48765 a!2804) j!70) a!2804 mask!2512) (Found!12957 j!70)))))

(declare-fun b!1517607 () Bool)

(declare-fun res!1037578 () Bool)

(assert (=> b!1517607 (=> (not res!1037578) (not e!846718))))

(declare-fun lt!657826 () SeekEntryResult!12957)

(assert (=> b!1517607 (= res!1037578 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48765 a!2804) j!70) a!2804 mask!2512) lt!657826))))

(declare-fun b!1517608 () Bool)

(declare-fun res!1037586 () Bool)

(assert (=> b!1517608 (=> (not res!1037586) (not e!846719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517608 (= res!1037586 (validKeyInArray!0 (select (arr!48765 a!2804) i!961)))))

(declare-fun b!1517609 () Bool)

(declare-fun res!1037582 () Bool)

(assert (=> b!1517609 (=> (not res!1037582) (not e!846719))))

(declare-datatypes ((List!35428 0))(
  ( (Nil!35425) (Cons!35424 (h!36837 (_ BitVec 64)) (t!50129 List!35428)) )
))
(declare-fun arrayNoDuplicates!0 (array!101065 (_ BitVec 32) List!35428) Bool)

(assert (=> b!1517609 (= res!1037582 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35425))))

(declare-fun b!1517610 () Bool)

(assert (=> b!1517610 (= e!846719 e!846718)))

(declare-fun res!1037575 () Bool)

(assert (=> b!1517610 (=> (not res!1037575) (not e!846718))))

(assert (=> b!1517610 (= res!1037575 (= lt!657822 lt!657826))))

(assert (=> b!1517610 (= lt!657826 (Intermediate!12957 false resIndex!21 resX!21))))

(assert (=> b!1517610 (= lt!657822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48765 a!2804) j!70) mask!2512) (select (arr!48765 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517611 () Bool)

(declare-fun res!1037580 () Bool)

(assert (=> b!1517611 (=> (not res!1037580) (not e!846719))))

(assert (=> b!1517611 (= res!1037580 (validKeyInArray!0 (select (arr!48765 a!2804) j!70)))))

(declare-fun b!1517602 () Bool)

(declare-fun res!1037576 () Bool)

(assert (=> b!1517602 (=> (not res!1037576) (not e!846719))))

(assert (=> b!1517602 (= res!1037576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1037584 () Bool)

(assert (=> start!129296 (=> (not res!1037584) (not e!846719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129296 (= res!1037584 (validMask!0 mask!2512))))

(assert (=> start!129296 e!846719))

(assert (=> start!129296 true))

(declare-fun array_inv!37710 (array!101065) Bool)

(assert (=> start!129296 (array_inv!37710 a!2804)))

(assert (= (and start!129296 res!1037584) b!1517600))

(assert (= (and b!1517600 res!1037585) b!1517608))

(assert (= (and b!1517608 res!1037586) b!1517611))

(assert (= (and b!1517611 res!1037580) b!1517602))

(assert (= (and b!1517602 res!1037576) b!1517609))

(assert (= (and b!1517609 res!1037582) b!1517601))

(assert (= (and b!1517601 res!1037579) b!1517610))

(assert (= (and b!1517610 res!1037575) b!1517607))

(assert (= (and b!1517607 res!1037578) b!1517599))

(assert (= (and b!1517599 res!1037577) b!1517605))

(assert (= (and b!1517605 res!1037581) b!1517606))

(assert (= (and b!1517605 (not res!1037574)) b!1517604))

(assert (= (and b!1517604 (not res!1037583)) b!1517603))

(declare-fun m!1400951 () Bool)

(assert (=> b!1517611 m!1400951))

(assert (=> b!1517611 m!1400951))

(declare-fun m!1400953 () Bool)

(assert (=> b!1517611 m!1400953))

(assert (=> b!1517607 m!1400951))

(assert (=> b!1517607 m!1400951))

(declare-fun m!1400955 () Bool)

(assert (=> b!1517607 m!1400955))

(declare-fun m!1400957 () Bool)

(assert (=> b!1517599 m!1400957))

(declare-fun m!1400959 () Bool)

(assert (=> b!1517599 m!1400959))

(assert (=> b!1517599 m!1400959))

(declare-fun m!1400961 () Bool)

(assert (=> b!1517599 m!1400961))

(assert (=> b!1517599 m!1400961))

(assert (=> b!1517599 m!1400959))

(declare-fun m!1400963 () Bool)

(assert (=> b!1517599 m!1400963))

(assert (=> b!1517605 m!1400951))

(declare-fun m!1400965 () Bool)

(assert (=> b!1517605 m!1400965))

(assert (=> b!1517605 m!1400957))

(assert (=> b!1517605 m!1400959))

(declare-fun m!1400967 () Bool)

(assert (=> b!1517605 m!1400967))

(declare-fun m!1400969 () Bool)

(assert (=> b!1517609 m!1400969))

(assert (=> b!1517603 m!1400951))

(assert (=> b!1517603 m!1400951))

(declare-fun m!1400971 () Bool)

(assert (=> b!1517603 m!1400971))

(declare-fun m!1400973 () Bool)

(assert (=> b!1517608 m!1400973))

(assert (=> b!1517608 m!1400973))

(declare-fun m!1400975 () Bool)

(assert (=> b!1517608 m!1400975))

(assert (=> b!1517610 m!1400951))

(assert (=> b!1517610 m!1400951))

(declare-fun m!1400977 () Bool)

(assert (=> b!1517610 m!1400977))

(assert (=> b!1517610 m!1400977))

(assert (=> b!1517610 m!1400951))

(declare-fun m!1400979 () Bool)

(assert (=> b!1517610 m!1400979))

(declare-fun m!1400981 () Bool)

(assert (=> b!1517602 m!1400981))

(assert (=> b!1517606 m!1400951))

(assert (=> b!1517606 m!1400951))

(declare-fun m!1400983 () Bool)

(assert (=> b!1517606 m!1400983))

(declare-fun m!1400985 () Bool)

(assert (=> b!1517604 m!1400985))

(declare-fun m!1400987 () Bool)

(assert (=> start!129296 m!1400987))

(declare-fun m!1400989 () Bool)

(assert (=> start!129296 m!1400989))

(push 1)

