; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121498 () Bool)

(assert start!121498)

(declare-fun b!1411142 () Bool)

(declare-fun e!798591 () Bool)

(declare-fun e!798593 () Bool)

(assert (=> b!1411142 (= e!798591 (not e!798593))))

(declare-fun res!948486 () Bool)

(assert (=> b!1411142 (=> res!948486 e!798593)))

(declare-datatypes ((SeekEntryResult!10876 0))(
  ( (MissingZero!10876 (index!45880 (_ BitVec 32))) (Found!10876 (index!45881 (_ BitVec 32))) (Intermediate!10876 (undefined!11688 Bool) (index!45882 (_ BitVec 32)) (x!127482 (_ BitVec 32))) (Undefined!10876) (MissingVacant!10876 (index!45883 (_ BitVec 32))) )
))
(declare-fun lt!621529 () SeekEntryResult!10876)

(assert (=> b!1411142 (= res!948486 (or (not (is-Intermediate!10876 lt!621529)) (undefined!11688 lt!621529)))))

(declare-fun e!798590 () Bool)

(assert (=> b!1411142 e!798590))

(declare-fun res!948483 () Bool)

(assert (=> b!1411142 (=> (not res!948483) (not e!798590))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96417 0))(
  ( (array!96418 (arr!46543 (Array (_ BitVec 32) (_ BitVec 64))) (size!47094 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96417)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96417 (_ BitVec 32)) Bool)

(assert (=> b!1411142 (= res!948483 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47676 0))(
  ( (Unit!47677) )
))
(declare-fun lt!621530 () Unit!47676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47676)

(assert (=> b!1411142 (= lt!621530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621531 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96417 (_ BitVec 32)) SeekEntryResult!10876)

(assert (=> b!1411142 (= lt!621529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621531 (select (arr!46543 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411142 (= lt!621531 (toIndex!0 (select (arr!46543 a!2901) j!112) mask!2840))))

(declare-fun b!1411143 () Bool)

(declare-fun res!948482 () Bool)

(assert (=> b!1411143 (=> (not res!948482) (not e!798591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411143 (= res!948482 (validKeyInArray!0 (select (arr!46543 a!2901) j!112)))))

(declare-fun b!1411144 () Bool)

(declare-fun e!798592 () Bool)

(assert (=> b!1411144 (= e!798593 e!798592)))

(declare-fun res!948481 () Bool)

(assert (=> b!1411144 (=> res!948481 e!798592)))

(declare-fun lt!621528 () SeekEntryResult!10876)

(assert (=> b!1411144 (= res!948481 (or (= lt!621529 lt!621528) (not (is-Intermediate!10876 lt!621528))))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411144 (= lt!621528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46543 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46543 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96418 (store (arr!46543 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47094 a!2901)) mask!2840))))

(declare-fun b!1411145 () Bool)

(declare-fun res!948479 () Bool)

(assert (=> b!1411145 (=> (not res!948479) (not e!798591))))

(declare-datatypes ((List!33242 0))(
  ( (Nil!33239) (Cons!33238 (h!34510 (_ BitVec 64)) (t!47943 List!33242)) )
))
(declare-fun arrayNoDuplicates!0 (array!96417 (_ BitVec 32) List!33242) Bool)

(assert (=> b!1411145 (= res!948479 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33239))))

(declare-fun b!1411146 () Bool)

(assert (=> b!1411146 (= e!798592 true)))

(assert (=> b!1411146 (and (not (undefined!11688 lt!621528)) (= (index!45882 lt!621528) i!1037) (bvslt (x!127482 lt!621528) (x!127482 lt!621529)))))

(declare-fun lt!621532 () Unit!47676)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47676)

(assert (=> b!1411146 (= lt!621532 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621531 (x!127482 lt!621529) (index!45882 lt!621529) (x!127482 lt!621528) (index!45882 lt!621528) (undefined!11688 lt!621528) mask!2840))))

(declare-fun b!1411147 () Bool)

(declare-fun res!948478 () Bool)

(assert (=> b!1411147 (=> (not res!948478) (not e!798591))))

(assert (=> b!1411147 (= res!948478 (and (= (size!47094 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47094 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47094 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411148 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96417 (_ BitVec 32)) SeekEntryResult!10876)

(assert (=> b!1411148 (= e!798590 (= (seekEntryOrOpen!0 (select (arr!46543 a!2901) j!112) a!2901 mask!2840) (Found!10876 j!112)))))

(declare-fun b!1411149 () Bool)

(declare-fun res!948485 () Bool)

(assert (=> b!1411149 (=> (not res!948485) (not e!798591))))

(assert (=> b!1411149 (= res!948485 (validKeyInArray!0 (select (arr!46543 a!2901) i!1037)))))

(declare-fun b!1411150 () Bool)

(declare-fun res!948480 () Bool)

(assert (=> b!1411150 (=> (not res!948480) (not e!798591))))

(assert (=> b!1411150 (= res!948480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948484 () Bool)

(assert (=> start!121498 (=> (not res!948484) (not e!798591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121498 (= res!948484 (validMask!0 mask!2840))))

(assert (=> start!121498 e!798591))

(assert (=> start!121498 true))

(declare-fun array_inv!35488 (array!96417) Bool)

(assert (=> start!121498 (array_inv!35488 a!2901)))

(assert (= (and start!121498 res!948484) b!1411147))

(assert (= (and b!1411147 res!948478) b!1411149))

(assert (= (and b!1411149 res!948485) b!1411143))

(assert (= (and b!1411143 res!948482) b!1411150))

(assert (= (and b!1411150 res!948480) b!1411145))

(assert (= (and b!1411145 res!948479) b!1411142))

(assert (= (and b!1411142 res!948483) b!1411148))

(assert (= (and b!1411142 (not res!948486)) b!1411144))

(assert (= (and b!1411144 (not res!948481)) b!1411146))

(declare-fun m!1300973 () Bool)

(assert (=> b!1411142 m!1300973))

(declare-fun m!1300975 () Bool)

(assert (=> b!1411142 m!1300975))

(assert (=> b!1411142 m!1300973))

(declare-fun m!1300977 () Bool)

(assert (=> b!1411142 m!1300977))

(declare-fun m!1300979 () Bool)

(assert (=> b!1411142 m!1300979))

(assert (=> b!1411142 m!1300973))

(declare-fun m!1300981 () Bool)

(assert (=> b!1411142 m!1300981))

(assert (=> b!1411148 m!1300973))

(assert (=> b!1411148 m!1300973))

(declare-fun m!1300983 () Bool)

(assert (=> b!1411148 m!1300983))

(declare-fun m!1300985 () Bool)

(assert (=> start!121498 m!1300985))

(declare-fun m!1300987 () Bool)

(assert (=> start!121498 m!1300987))

(declare-fun m!1300989 () Bool)

(assert (=> b!1411149 m!1300989))

(assert (=> b!1411149 m!1300989))

(declare-fun m!1300991 () Bool)

(assert (=> b!1411149 m!1300991))

(declare-fun m!1300993 () Bool)

(assert (=> b!1411144 m!1300993))

(declare-fun m!1300995 () Bool)

(assert (=> b!1411144 m!1300995))

(assert (=> b!1411144 m!1300995))

(declare-fun m!1300997 () Bool)

(assert (=> b!1411144 m!1300997))

(assert (=> b!1411144 m!1300997))

(assert (=> b!1411144 m!1300995))

(declare-fun m!1300999 () Bool)

(assert (=> b!1411144 m!1300999))

(declare-fun m!1301001 () Bool)

(assert (=> b!1411150 m!1301001))

(declare-fun m!1301003 () Bool)

(assert (=> b!1411146 m!1301003))

(declare-fun m!1301005 () Bool)

(assert (=> b!1411145 m!1301005))

(assert (=> b!1411143 m!1300973))

(assert (=> b!1411143 m!1300973))

(declare-fun m!1301007 () Bool)

(assert (=> b!1411143 m!1301007))

(push 1)

