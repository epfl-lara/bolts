; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122150 () Bool)

(assert start!122150)

(declare-fun b!1416912 () Bool)

(declare-fun res!952901 () Bool)

(declare-fun e!801953 () Bool)

(assert (=> b!1416912 (=> (not res!952901) (not e!801953))))

(declare-datatypes ((array!96703 0))(
  ( (array!96704 (arr!46677 (Array (_ BitVec 32) (_ BitVec 64))) (size!47228 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96703)

(declare-datatypes ((List!33376 0))(
  ( (Nil!33373) (Cons!33372 (h!34662 (_ BitVec 64)) (t!48077 List!33376)) )
))
(declare-fun arrayNoDuplicates!0 (array!96703 (_ BitVec 32) List!33376) Bool)

(assert (=> b!1416912 (= res!952901 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33373))))

(declare-fun b!1416913 () Bool)

(declare-fun res!952905 () Bool)

(assert (=> b!1416913 (=> (not res!952905) (not e!801953))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416913 (= res!952905 (validKeyInArray!0 (select (arr!46677 a!2901) j!112)))))

(declare-fun b!1416914 () Bool)

(declare-fun e!801950 () Bool)

(assert (=> b!1416914 (= e!801950 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11010 0))(
  ( (MissingZero!11010 (index!46431 (_ BitVec 32))) (Found!11010 (index!46432 (_ BitVec 32))) (Intermediate!11010 (undefined!11822 Bool) (index!46433 (_ BitVec 32)) (x!128034 (_ BitVec 32))) (Undefined!11010) (MissingVacant!11010 (index!46434 (_ BitVec 32))) )
))
(declare-fun lt!625134 () SeekEntryResult!11010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96703 (_ BitVec 32)) SeekEntryResult!11010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416914 (= lt!625134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46677 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46677 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96704 (store (arr!46677 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47228 a!2901)) mask!2840))))

(declare-fun res!952900 () Bool)

(assert (=> start!122150 (=> (not res!952900) (not e!801953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122150 (= res!952900 (validMask!0 mask!2840))))

(assert (=> start!122150 e!801953))

(assert (=> start!122150 true))

(declare-fun array_inv!35622 (array!96703) Bool)

(assert (=> start!122150 (array_inv!35622 a!2901)))

(declare-fun b!1416915 () Bool)

(declare-fun res!952898 () Bool)

(assert (=> b!1416915 (=> (not res!952898) (not e!801953))))

(assert (=> b!1416915 (= res!952898 (and (= (size!47228 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47228 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47228 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416916 () Bool)

(assert (=> b!1416916 (= e!801953 (not e!801950))))

(declare-fun res!952899 () Bool)

(assert (=> b!1416916 (=> res!952899 e!801950)))

(declare-fun lt!625133 () SeekEntryResult!11010)

(assert (=> b!1416916 (= res!952899 (or (not (is-Intermediate!11010 lt!625133)) (undefined!11822 lt!625133)))))

(declare-fun e!801952 () Bool)

(assert (=> b!1416916 e!801952))

(declare-fun res!952903 () Bool)

(assert (=> b!1416916 (=> (not res!952903) (not e!801952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96703 (_ BitVec 32)) Bool)

(assert (=> b!1416916 (= res!952903 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47944 0))(
  ( (Unit!47945) )
))
(declare-fun lt!625135 () Unit!47944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47944)

(assert (=> b!1416916 (= lt!625135 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416916 (= lt!625133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46677 a!2901) j!112) mask!2840) (select (arr!46677 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416917 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96703 (_ BitVec 32)) SeekEntryResult!11010)

(assert (=> b!1416917 (= e!801952 (= (seekEntryOrOpen!0 (select (arr!46677 a!2901) j!112) a!2901 mask!2840) (Found!11010 j!112)))))

(declare-fun b!1416918 () Bool)

(declare-fun res!952904 () Bool)

(assert (=> b!1416918 (=> (not res!952904) (not e!801953))))

(assert (=> b!1416918 (= res!952904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416919 () Bool)

(declare-fun res!952902 () Bool)

(assert (=> b!1416919 (=> (not res!952902) (not e!801953))))

(assert (=> b!1416919 (= res!952902 (validKeyInArray!0 (select (arr!46677 a!2901) i!1037)))))

(assert (= (and start!122150 res!952900) b!1416915))

(assert (= (and b!1416915 res!952898) b!1416919))

(assert (= (and b!1416919 res!952902) b!1416913))

(assert (= (and b!1416913 res!952905) b!1416918))

(assert (= (and b!1416918 res!952904) b!1416912))

(assert (= (and b!1416912 res!952901) b!1416916))

(assert (= (and b!1416916 res!952903) b!1416917))

(assert (= (and b!1416916 (not res!952899)) b!1416914))

(declare-fun m!1307719 () Bool)

(assert (=> b!1416919 m!1307719))

(assert (=> b!1416919 m!1307719))

(declare-fun m!1307721 () Bool)

(assert (=> b!1416919 m!1307721))

(declare-fun m!1307723 () Bool)

(assert (=> b!1416914 m!1307723))

(declare-fun m!1307725 () Bool)

(assert (=> b!1416914 m!1307725))

(assert (=> b!1416914 m!1307725))

(declare-fun m!1307727 () Bool)

(assert (=> b!1416914 m!1307727))

(assert (=> b!1416914 m!1307727))

(assert (=> b!1416914 m!1307725))

(declare-fun m!1307729 () Bool)

(assert (=> b!1416914 m!1307729))

(declare-fun m!1307731 () Bool)

(assert (=> b!1416912 m!1307731))

(declare-fun m!1307733 () Bool)

(assert (=> b!1416917 m!1307733))

(assert (=> b!1416917 m!1307733))

(declare-fun m!1307735 () Bool)

(assert (=> b!1416917 m!1307735))

(declare-fun m!1307737 () Bool)

(assert (=> b!1416918 m!1307737))

(assert (=> b!1416916 m!1307733))

(declare-fun m!1307739 () Bool)

(assert (=> b!1416916 m!1307739))

(assert (=> b!1416916 m!1307733))

(declare-fun m!1307741 () Bool)

(assert (=> b!1416916 m!1307741))

(assert (=> b!1416916 m!1307739))

(assert (=> b!1416916 m!1307733))

(declare-fun m!1307743 () Bool)

(assert (=> b!1416916 m!1307743))

(declare-fun m!1307745 () Bool)

(assert (=> b!1416916 m!1307745))

(assert (=> b!1416913 m!1307733))

(assert (=> b!1416913 m!1307733))

(declare-fun m!1307747 () Bool)

(assert (=> b!1416913 m!1307747))

(declare-fun m!1307749 () Bool)

(assert (=> start!122150 m!1307749))

(declare-fun m!1307751 () Bool)

(assert (=> start!122150 m!1307751))

(push 1)

(assert (not start!122150))

(assert (not b!1416917))

(assert (not b!1416912))

(assert (not b!1416918))

(assert (not b!1416913))

(assert (not b!1416916))

(assert (not b!1416919))

(assert (not b!1416914))

