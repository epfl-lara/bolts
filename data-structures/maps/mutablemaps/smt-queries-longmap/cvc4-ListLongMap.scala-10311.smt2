; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121232 () Bool)

(assert start!121232)

(declare-fun b!1409064 () Bool)

(declare-fun e!797434 () Bool)

(assert (=> b!1409064 (= e!797434 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96304 0))(
  ( (array!96305 (arr!46491 (Array (_ BitVec 32) (_ BitVec 64))) (size!47042 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96304)

(declare-datatypes ((SeekEntryResult!10824 0))(
  ( (MissingZero!10824 (index!45672 (_ BitVec 32))) (Found!10824 (index!45673 (_ BitVec 32))) (Intermediate!10824 (undefined!11636 Bool) (index!45674 (_ BitVec 32)) (x!127268 (_ BitVec 32))) (Undefined!10824) (MissingVacant!10824 (index!45675 (_ BitVec 32))) )
))
(declare-fun lt!620554 () SeekEntryResult!10824)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96304 (_ BitVec 32)) SeekEntryResult!10824)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409064 (= lt!620554 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46491 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46491 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96305 (store (arr!46491 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47042 a!2901)) mask!2840))))

(declare-fun b!1409065 () Bool)

(declare-fun e!797433 () Bool)

(assert (=> b!1409065 (= e!797433 (not e!797434))))

(declare-fun res!946895 () Bool)

(assert (=> b!1409065 (=> res!946895 e!797434)))

(declare-fun lt!620553 () SeekEntryResult!10824)

(assert (=> b!1409065 (= res!946895 (or (not (is-Intermediate!10824 lt!620553)) (undefined!11636 lt!620553)))))

(declare-fun e!797432 () Bool)

(assert (=> b!1409065 e!797432))

(declare-fun res!946899 () Bool)

(assert (=> b!1409065 (=> (not res!946899) (not e!797432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96304 (_ BitVec 32)) Bool)

(assert (=> b!1409065 (= res!946899 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47572 0))(
  ( (Unit!47573) )
))
(declare-fun lt!620552 () Unit!47572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47572)

(assert (=> b!1409065 (= lt!620552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409065 (= lt!620553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46491 a!2901) j!112) mask!2840) (select (arr!46491 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409066 () Bool)

(declare-fun res!946896 () Bool)

(assert (=> b!1409066 (=> (not res!946896) (not e!797433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409066 (= res!946896 (validKeyInArray!0 (select (arr!46491 a!2901) i!1037)))))

(declare-fun b!1409067 () Bool)

(declare-fun res!946900 () Bool)

(assert (=> b!1409067 (=> (not res!946900) (not e!797433))))

(declare-datatypes ((List!33190 0))(
  ( (Nil!33187) (Cons!33186 (h!34449 (_ BitVec 64)) (t!47891 List!33190)) )
))
(declare-fun arrayNoDuplicates!0 (array!96304 (_ BitVec 32) List!33190) Bool)

(assert (=> b!1409067 (= res!946900 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33187))))

(declare-fun res!946901 () Bool)

(assert (=> start!121232 (=> (not res!946901) (not e!797433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121232 (= res!946901 (validMask!0 mask!2840))))

(assert (=> start!121232 e!797433))

(assert (=> start!121232 true))

(declare-fun array_inv!35436 (array!96304) Bool)

(assert (=> start!121232 (array_inv!35436 a!2901)))

(declare-fun b!1409068 () Bool)

(declare-fun res!946898 () Bool)

(assert (=> b!1409068 (=> (not res!946898) (not e!797433))))

(assert (=> b!1409068 (= res!946898 (validKeyInArray!0 (select (arr!46491 a!2901) j!112)))))

(declare-fun b!1409069 () Bool)

(declare-fun res!946902 () Bool)

(assert (=> b!1409069 (=> (not res!946902) (not e!797433))))

(assert (=> b!1409069 (= res!946902 (and (= (size!47042 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47042 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47042 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409070 () Bool)

(declare-fun res!946897 () Bool)

(assert (=> b!1409070 (=> (not res!946897) (not e!797433))))

(assert (=> b!1409070 (= res!946897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409071 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96304 (_ BitVec 32)) SeekEntryResult!10824)

(assert (=> b!1409071 (= e!797432 (= (seekEntryOrOpen!0 (select (arr!46491 a!2901) j!112) a!2901 mask!2840) (Found!10824 j!112)))))

(assert (= (and start!121232 res!946901) b!1409069))

(assert (= (and b!1409069 res!946902) b!1409066))

(assert (= (and b!1409066 res!946896) b!1409068))

(assert (= (and b!1409068 res!946898) b!1409070))

(assert (= (and b!1409070 res!946897) b!1409067))

(assert (= (and b!1409067 res!946900) b!1409065))

(assert (= (and b!1409065 res!946899) b!1409071))

(assert (= (and b!1409065 (not res!946895)) b!1409064))

(declare-fun m!1298719 () Bool)

(assert (=> start!121232 m!1298719))

(declare-fun m!1298721 () Bool)

(assert (=> start!121232 m!1298721))

(declare-fun m!1298723 () Bool)

(assert (=> b!1409071 m!1298723))

(assert (=> b!1409071 m!1298723))

(declare-fun m!1298725 () Bool)

(assert (=> b!1409071 m!1298725))

(assert (=> b!1409068 m!1298723))

(assert (=> b!1409068 m!1298723))

(declare-fun m!1298727 () Bool)

(assert (=> b!1409068 m!1298727))

(declare-fun m!1298729 () Bool)

(assert (=> b!1409066 m!1298729))

(assert (=> b!1409066 m!1298729))

(declare-fun m!1298731 () Bool)

(assert (=> b!1409066 m!1298731))

(declare-fun m!1298733 () Bool)

(assert (=> b!1409067 m!1298733))

(declare-fun m!1298735 () Bool)

(assert (=> b!1409070 m!1298735))

(declare-fun m!1298737 () Bool)

(assert (=> b!1409064 m!1298737))

(declare-fun m!1298739 () Bool)

(assert (=> b!1409064 m!1298739))

(assert (=> b!1409064 m!1298739))

(declare-fun m!1298741 () Bool)

(assert (=> b!1409064 m!1298741))

(assert (=> b!1409064 m!1298741))

(assert (=> b!1409064 m!1298739))

(declare-fun m!1298743 () Bool)

(assert (=> b!1409064 m!1298743))

(assert (=> b!1409065 m!1298723))

(declare-fun m!1298745 () Bool)

(assert (=> b!1409065 m!1298745))

(assert (=> b!1409065 m!1298723))

(declare-fun m!1298747 () Bool)

(assert (=> b!1409065 m!1298747))

(assert (=> b!1409065 m!1298745))

(assert (=> b!1409065 m!1298723))

(declare-fun m!1298749 () Bool)

(assert (=> b!1409065 m!1298749))

(declare-fun m!1298751 () Bool)

(assert (=> b!1409065 m!1298751))

(push 1)

(assert (not b!1409064))

(assert (not b!1409067))

(assert (not b!1409068))

(assert (not b!1409065))

(assert (not b!1409071))

(assert (not start!121232))

(assert (not b!1409070))

(assert (not b!1409066))

(check-sat)

(pop 1)

