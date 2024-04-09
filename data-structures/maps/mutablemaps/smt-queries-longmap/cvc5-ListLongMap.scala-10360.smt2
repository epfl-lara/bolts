; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122014 () Bool)

(assert start!122014)

(declare-fun b!1415488 () Bool)

(declare-fun res!951644 () Bool)

(declare-fun e!801160 () Bool)

(assert (=> b!1415488 (=> (not res!951644) (not e!801160))))

(declare-datatypes ((array!96618 0))(
  ( (array!96619 (arr!46636 (Array (_ BitVec 32) (_ BitVec 64))) (size!47187 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96618)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415488 (= res!951644 (validKeyInArray!0 (select (arr!46636 a!2901) j!112)))))

(declare-fun b!1415489 () Bool)

(declare-fun res!951639 () Bool)

(assert (=> b!1415489 (=> (not res!951639) (not e!801160))))

(declare-datatypes ((List!33335 0))(
  ( (Nil!33332) (Cons!33331 (h!34618 (_ BitVec 64)) (t!48036 List!33335)) )
))
(declare-fun arrayNoDuplicates!0 (array!96618 (_ BitVec 32) List!33335) Bool)

(assert (=> b!1415489 (= res!951639 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33332))))

(declare-fun b!1415490 () Bool)

(declare-fun res!951646 () Bool)

(assert (=> b!1415490 (=> (not res!951646) (not e!801160))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415490 (= res!951646 (and (= (size!47187 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47187 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47187 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415491 () Bool)

(declare-fun res!951645 () Bool)

(assert (=> b!1415491 (=> (not res!951645) (not e!801160))))

(assert (=> b!1415491 (= res!951645 (validKeyInArray!0 (select (arr!46636 a!2901) i!1037)))))

(declare-fun res!951641 () Bool)

(assert (=> start!122014 (=> (not res!951641) (not e!801160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122014 (= res!951641 (validMask!0 mask!2840))))

(assert (=> start!122014 e!801160))

(assert (=> start!122014 true))

(declare-fun array_inv!35581 (array!96618) Bool)

(assert (=> start!122014 (array_inv!35581 a!2901)))

(declare-fun b!1415492 () Bool)

(declare-datatypes ((SeekEntryResult!10969 0))(
  ( (MissingZero!10969 (index!46267 (_ BitVec 32))) (Found!10969 (index!46268 (_ BitVec 32))) (Intermediate!10969 (undefined!11781 Bool) (index!46269 (_ BitVec 32)) (x!127883 (_ BitVec 32))) (Undefined!10969) (MissingVacant!10969 (index!46270 (_ BitVec 32))) )
))
(declare-fun lt!624180 () SeekEntryResult!10969)

(declare-fun lt!624181 () array!96618)

(declare-fun e!801159 () Bool)

(declare-fun lt!624175 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96618 (_ BitVec 32)) SeekEntryResult!10969)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96618 (_ BitVec 32)) SeekEntryResult!10969)

(assert (=> b!1415492 (= e!801159 (= (seekEntryOrOpen!0 lt!624175 lt!624181 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127883 lt!624180) (index!46269 lt!624180) (index!46269 lt!624180) (select (arr!46636 a!2901) j!112) lt!624181 mask!2840)))))

(declare-fun b!1415493 () Bool)

(declare-fun e!801161 () Bool)

(declare-fun e!801163 () Bool)

(assert (=> b!1415493 (= e!801161 e!801163)))

(declare-fun res!951643 () Bool)

(assert (=> b!1415493 (=> res!951643 e!801163)))

(declare-fun lt!624177 () SeekEntryResult!10969)

(assert (=> b!1415493 (= res!951643 (or (= lt!624177 lt!624180) (not (is-Intermediate!10969 lt!624180))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96618 (_ BitVec 32)) SeekEntryResult!10969)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415493 (= lt!624180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624175 mask!2840) lt!624175 lt!624181 mask!2840))))

(assert (=> b!1415493 (= lt!624175 (select (store (arr!46636 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415493 (= lt!624181 (array!96619 (store (arr!46636 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47187 a!2901)))))

(declare-fun lt!624176 () (_ BitVec 32))

(declare-fun b!1415494 () Bool)

(assert (=> b!1415494 (= e!801163 (or (bvslt (x!127883 lt!624177) #b00000000000000000000000000000000) (bvsgt (x!127883 lt!624177) #b01111111111111111111111111111110) (bvslt (x!127883 lt!624180) #b00000000000000000000000000000000) (bvsgt (x!127883 lt!624180) #b01111111111111111111111111111110) (bvslt lt!624176 #b00000000000000000000000000000000) (bvsge lt!624176 (size!47187 a!2901)) (bvslt (index!46269 lt!624177) #b00000000000000000000000000000000) (bvsge (index!46269 lt!624177) (size!47187 a!2901)) (bvslt (index!46269 lt!624180) #b00000000000000000000000000000000) (bvsge (index!46269 lt!624180) (size!47187 a!2901)) (not (= lt!624177 (Intermediate!10969 false (index!46269 lt!624177) (x!127883 lt!624177)))) (= lt!624180 (Intermediate!10969 false (index!46269 lt!624180) (x!127883 lt!624180)))))))

(assert (=> b!1415494 e!801159))

(declare-fun res!951647 () Bool)

(assert (=> b!1415494 (=> (not res!951647) (not e!801159))))

(assert (=> b!1415494 (= res!951647 (and (not (undefined!11781 lt!624180)) (= (index!46269 lt!624180) i!1037) (bvslt (x!127883 lt!624180) (x!127883 lt!624177)) (= (select (store (arr!46636 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46269 lt!624180)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47862 0))(
  ( (Unit!47863) )
))
(declare-fun lt!624179 () Unit!47862)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47862)

(assert (=> b!1415494 (= lt!624179 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624176 (x!127883 lt!624177) (index!46269 lt!624177) (x!127883 lt!624180) (index!46269 lt!624180) (undefined!11781 lt!624180) mask!2840))))

(declare-fun b!1415495 () Bool)

(assert (=> b!1415495 (= e!801160 (not e!801161))))

(declare-fun res!951640 () Bool)

(assert (=> b!1415495 (=> res!951640 e!801161)))

(assert (=> b!1415495 (= res!951640 (or (not (is-Intermediate!10969 lt!624177)) (undefined!11781 lt!624177)))))

(declare-fun e!801162 () Bool)

(assert (=> b!1415495 e!801162))

(declare-fun res!951648 () Bool)

(assert (=> b!1415495 (=> (not res!951648) (not e!801162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96618 (_ BitVec 32)) Bool)

(assert (=> b!1415495 (= res!951648 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624178 () Unit!47862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47862)

(assert (=> b!1415495 (= lt!624178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415495 (= lt!624177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624176 (select (arr!46636 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415495 (= lt!624176 (toIndex!0 (select (arr!46636 a!2901) j!112) mask!2840))))

(declare-fun b!1415496 () Bool)

(declare-fun res!951642 () Bool)

(assert (=> b!1415496 (=> (not res!951642) (not e!801160))))

(assert (=> b!1415496 (= res!951642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415497 () Bool)

(assert (=> b!1415497 (= e!801162 (= (seekEntryOrOpen!0 (select (arr!46636 a!2901) j!112) a!2901 mask!2840) (Found!10969 j!112)))))

(assert (= (and start!122014 res!951641) b!1415490))

(assert (= (and b!1415490 res!951646) b!1415491))

(assert (= (and b!1415491 res!951645) b!1415488))

(assert (= (and b!1415488 res!951644) b!1415496))

(assert (= (and b!1415496 res!951642) b!1415489))

(assert (= (and b!1415489 res!951639) b!1415495))

(assert (= (and b!1415495 res!951648) b!1415497))

(assert (= (and b!1415495 (not res!951640)) b!1415493))

(assert (= (and b!1415493 (not res!951643)) b!1415494))

(assert (= (and b!1415494 res!951647) b!1415492))

(declare-fun m!1305881 () Bool)

(assert (=> b!1415494 m!1305881))

(declare-fun m!1305883 () Bool)

(assert (=> b!1415494 m!1305883))

(declare-fun m!1305885 () Bool)

(assert (=> b!1415494 m!1305885))

(declare-fun m!1305887 () Bool)

(assert (=> b!1415495 m!1305887))

(declare-fun m!1305889 () Bool)

(assert (=> b!1415495 m!1305889))

(assert (=> b!1415495 m!1305887))

(declare-fun m!1305891 () Bool)

(assert (=> b!1415495 m!1305891))

(assert (=> b!1415495 m!1305887))

(declare-fun m!1305893 () Bool)

(assert (=> b!1415495 m!1305893))

(declare-fun m!1305895 () Bool)

(assert (=> b!1415495 m!1305895))

(declare-fun m!1305897 () Bool)

(assert (=> b!1415493 m!1305897))

(assert (=> b!1415493 m!1305897))

(declare-fun m!1305899 () Bool)

(assert (=> b!1415493 m!1305899))

(assert (=> b!1415493 m!1305881))

(declare-fun m!1305901 () Bool)

(assert (=> b!1415493 m!1305901))

(declare-fun m!1305903 () Bool)

(assert (=> b!1415492 m!1305903))

(assert (=> b!1415492 m!1305887))

(assert (=> b!1415492 m!1305887))

(declare-fun m!1305905 () Bool)

(assert (=> b!1415492 m!1305905))

(declare-fun m!1305907 () Bool)

(assert (=> start!122014 m!1305907))

(declare-fun m!1305909 () Bool)

(assert (=> start!122014 m!1305909))

(assert (=> b!1415488 m!1305887))

(assert (=> b!1415488 m!1305887))

(declare-fun m!1305911 () Bool)

(assert (=> b!1415488 m!1305911))

(declare-fun m!1305913 () Bool)

(assert (=> b!1415489 m!1305913))

(declare-fun m!1305915 () Bool)

(assert (=> b!1415491 m!1305915))

(assert (=> b!1415491 m!1305915))

(declare-fun m!1305917 () Bool)

(assert (=> b!1415491 m!1305917))

(declare-fun m!1305919 () Bool)

(assert (=> b!1415496 m!1305919))

(assert (=> b!1415497 m!1305887))

(assert (=> b!1415497 m!1305887))

(declare-fun m!1305921 () Bool)

(assert (=> b!1415497 m!1305921))

(push 1)

