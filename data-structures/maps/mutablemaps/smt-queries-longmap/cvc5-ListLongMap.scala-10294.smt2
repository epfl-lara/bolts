; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121126 () Bool)

(assert start!121126)

(declare-fun b!1407747 () Bool)

(declare-fun res!945579 () Bool)

(declare-fun e!796799 () Bool)

(assert (=> b!1407747 (=> (not res!945579) (not e!796799))))

(declare-datatypes ((array!96198 0))(
  ( (array!96199 (arr!46438 (Array (_ BitVec 32) (_ BitVec 64))) (size!46989 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96198)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407747 (= res!945579 (validKeyInArray!0 (select (arr!46438 a!2901) i!1037)))))

(declare-fun b!1407748 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!796796 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10771 0))(
  ( (MissingZero!10771 (index!45460 (_ BitVec 32))) (Found!10771 (index!45461 (_ BitVec 32))) (Intermediate!10771 (undefined!11583 Bool) (index!45462 (_ BitVec 32)) (x!127079 (_ BitVec 32))) (Undefined!10771) (MissingVacant!10771 (index!45463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96198 (_ BitVec 32)) SeekEntryResult!10771)

(assert (=> b!1407748 (= e!796796 (= (seekEntryOrOpen!0 (select (arr!46438 a!2901) j!112) a!2901 mask!2840) (Found!10771 j!112)))))

(declare-fun b!1407749 () Bool)

(declare-fun e!796798 () Bool)

(assert (=> b!1407749 (= e!796798 true)))

(declare-fun lt!619895 () SeekEntryResult!10771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96198 (_ BitVec 32)) SeekEntryResult!10771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407749 (= lt!619895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46438 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46438 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96199 (store (arr!46438 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46989 a!2901)) mask!2840))))

(declare-fun b!1407750 () Bool)

(declare-fun res!945581 () Bool)

(assert (=> b!1407750 (=> (not res!945581) (not e!796799))))

(declare-datatypes ((List!33137 0))(
  ( (Nil!33134) (Cons!33133 (h!34396 (_ BitVec 64)) (t!47838 List!33137)) )
))
(declare-fun arrayNoDuplicates!0 (array!96198 (_ BitVec 32) List!33137) Bool)

(assert (=> b!1407750 (= res!945581 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33134))))

(declare-fun b!1407751 () Bool)

(declare-fun res!945580 () Bool)

(assert (=> b!1407751 (=> (not res!945580) (not e!796799))))

(assert (=> b!1407751 (= res!945580 (and (= (size!46989 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46989 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46989 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!945584 () Bool)

(assert (=> start!121126 (=> (not res!945584) (not e!796799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121126 (= res!945584 (validMask!0 mask!2840))))

(assert (=> start!121126 e!796799))

(assert (=> start!121126 true))

(declare-fun array_inv!35383 (array!96198) Bool)

(assert (=> start!121126 (array_inv!35383 a!2901)))

(declare-fun b!1407752 () Bool)

(assert (=> b!1407752 (= e!796799 (not e!796798))))

(declare-fun res!945582 () Bool)

(assert (=> b!1407752 (=> res!945582 e!796798)))

(declare-fun lt!619897 () SeekEntryResult!10771)

(assert (=> b!1407752 (= res!945582 (or (not (is-Intermediate!10771 lt!619897)) (undefined!11583 lt!619897)))))

(assert (=> b!1407752 e!796796))

(declare-fun res!945585 () Bool)

(assert (=> b!1407752 (=> (not res!945585) (not e!796796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96198 (_ BitVec 32)) Bool)

(assert (=> b!1407752 (= res!945585 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47466 0))(
  ( (Unit!47467) )
))
(declare-fun lt!619896 () Unit!47466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96198 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47466)

(assert (=> b!1407752 (= lt!619896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407752 (= lt!619897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46438 a!2901) j!112) mask!2840) (select (arr!46438 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407753 () Bool)

(declare-fun res!945578 () Bool)

(assert (=> b!1407753 (=> (not res!945578) (not e!796799))))

(assert (=> b!1407753 (= res!945578 (validKeyInArray!0 (select (arr!46438 a!2901) j!112)))))

(declare-fun b!1407754 () Bool)

(declare-fun res!945583 () Bool)

(assert (=> b!1407754 (=> (not res!945583) (not e!796799))))

(assert (=> b!1407754 (= res!945583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121126 res!945584) b!1407751))

(assert (= (and b!1407751 res!945580) b!1407747))

(assert (= (and b!1407747 res!945579) b!1407753))

(assert (= (and b!1407753 res!945578) b!1407754))

(assert (= (and b!1407754 res!945583) b!1407750))

(assert (= (and b!1407750 res!945581) b!1407752))

(assert (= (and b!1407752 res!945585) b!1407748))

(assert (= (and b!1407752 (not res!945582)) b!1407749))

(declare-fun m!1296857 () Bool)

(assert (=> b!1407747 m!1296857))

(assert (=> b!1407747 m!1296857))

(declare-fun m!1296859 () Bool)

(assert (=> b!1407747 m!1296859))

(declare-fun m!1296861 () Bool)

(assert (=> b!1407754 m!1296861))

(declare-fun m!1296863 () Bool)

(assert (=> b!1407753 m!1296863))

(assert (=> b!1407753 m!1296863))

(declare-fun m!1296865 () Bool)

(assert (=> b!1407753 m!1296865))

(assert (=> b!1407748 m!1296863))

(assert (=> b!1407748 m!1296863))

(declare-fun m!1296867 () Bool)

(assert (=> b!1407748 m!1296867))

(declare-fun m!1296869 () Bool)

(assert (=> b!1407749 m!1296869))

(declare-fun m!1296871 () Bool)

(assert (=> b!1407749 m!1296871))

(assert (=> b!1407749 m!1296871))

(declare-fun m!1296873 () Bool)

(assert (=> b!1407749 m!1296873))

(assert (=> b!1407749 m!1296873))

(assert (=> b!1407749 m!1296871))

(declare-fun m!1296875 () Bool)

(assert (=> b!1407749 m!1296875))

(assert (=> b!1407752 m!1296863))

(declare-fun m!1296877 () Bool)

(assert (=> b!1407752 m!1296877))

(assert (=> b!1407752 m!1296863))

(declare-fun m!1296879 () Bool)

(assert (=> b!1407752 m!1296879))

(assert (=> b!1407752 m!1296877))

(assert (=> b!1407752 m!1296863))

(declare-fun m!1296881 () Bool)

(assert (=> b!1407752 m!1296881))

(declare-fun m!1296883 () Bool)

(assert (=> b!1407752 m!1296883))

(declare-fun m!1296885 () Bool)

(assert (=> b!1407750 m!1296885))

(declare-fun m!1296887 () Bool)

(assert (=> start!121126 m!1296887))

(declare-fun m!1296889 () Bool)

(assert (=> start!121126 m!1296889))

(push 1)

(assert (not b!1407752))

(assert (not b!1407748))

(assert (not b!1407753))

(assert (not b!1407750))

(assert (not b!1407749))

(assert (not b!1407747))

(assert (not start!121126))

(assert (not b!1407754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

