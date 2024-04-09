; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122012 () Bool)

(assert start!122012)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96616 0))(
  ( (array!96617 (arr!46635 (Array (_ BitVec 32) (_ BitVec 64))) (size!47186 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96616)

(declare-fun lt!624157 () (_ BitVec 64))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10968 0))(
  ( (MissingZero!10968 (index!46263 (_ BitVec 32))) (Found!10968 (index!46264 (_ BitVec 32))) (Intermediate!10968 (undefined!11780 Bool) (index!46265 (_ BitVec 32)) (x!127874 (_ BitVec 32))) (Undefined!10968) (MissingVacant!10968 (index!46266 (_ BitVec 32))) )
))
(declare-fun lt!624156 () SeekEntryResult!10968)

(declare-fun lt!624155 () array!96616)

(declare-fun e!801145 () Bool)

(declare-fun b!1415458 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96616 (_ BitVec 32)) SeekEntryResult!10968)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96616 (_ BitVec 32)) SeekEntryResult!10968)

(assert (=> b!1415458 (= e!801145 (= (seekEntryOrOpen!0 lt!624157 lt!624155 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127874 lt!624156) (index!46265 lt!624156) (index!46265 lt!624156) (select (arr!46635 a!2901) j!112) lt!624155 mask!2840)))))

(declare-fun b!1415459 () Bool)

(declare-fun res!951614 () Bool)

(declare-fun e!801144 () Bool)

(assert (=> b!1415459 (=> (not res!951614) (not e!801144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96616 (_ BitVec 32)) Bool)

(assert (=> b!1415459 (= res!951614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415460 () Bool)

(declare-fun res!951609 () Bool)

(assert (=> b!1415460 (=> (not res!951609) (not e!801144))))

(declare-datatypes ((List!33334 0))(
  ( (Nil!33331) (Cons!33330 (h!34617 (_ BitVec 64)) (t!48035 List!33334)) )
))
(declare-fun arrayNoDuplicates!0 (array!96616 (_ BitVec 32) List!33334) Bool)

(assert (=> b!1415460 (= res!951609 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33331))))

(declare-fun b!1415461 () Bool)

(declare-fun res!951610 () Bool)

(assert (=> b!1415461 (=> (not res!951610) (not e!801144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415461 (= res!951610 (validKeyInArray!0 (select (arr!46635 a!2901) j!112)))))

(declare-fun b!1415462 () Bool)

(declare-fun res!951615 () Bool)

(assert (=> b!1415462 (=> (not res!951615) (not e!801144))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415462 (= res!951615 (validKeyInArray!0 (select (arr!46635 a!2901) i!1037)))))

(declare-fun res!951618 () Bool)

(assert (=> start!122012 (=> (not res!951618) (not e!801144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122012 (= res!951618 (validMask!0 mask!2840))))

(assert (=> start!122012 e!801144))

(assert (=> start!122012 true))

(declare-fun array_inv!35580 (array!96616) Bool)

(assert (=> start!122012 (array_inv!35580 a!2901)))

(declare-fun b!1415463 () Bool)

(declare-fun e!801142 () Bool)

(declare-fun e!801146 () Bool)

(assert (=> b!1415463 (= e!801142 e!801146)))

(declare-fun res!951616 () Bool)

(assert (=> b!1415463 (=> res!951616 e!801146)))

(declare-fun lt!624160 () SeekEntryResult!10968)

(assert (=> b!1415463 (= res!951616 (or (= lt!624160 lt!624156) (not (is-Intermediate!10968 lt!624156))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96616 (_ BitVec 32)) SeekEntryResult!10968)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415463 (= lt!624156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624157 mask!2840) lt!624157 lt!624155 mask!2840))))

(assert (=> b!1415463 (= lt!624157 (select (store (arr!46635 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415463 (= lt!624155 (array!96617 (store (arr!46635 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47186 a!2901)))))

(declare-fun b!1415464 () Bool)

(declare-fun res!951611 () Bool)

(assert (=> b!1415464 (=> (not res!951611) (not e!801144))))

(assert (=> b!1415464 (= res!951611 (and (= (size!47186 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47186 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47186 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415465 () Bool)

(assert (=> b!1415465 (= e!801146 true)))

(assert (=> b!1415465 e!801145))

(declare-fun res!951613 () Bool)

(assert (=> b!1415465 (=> (not res!951613) (not e!801145))))

(assert (=> b!1415465 (= res!951613 (and (not (undefined!11780 lt!624156)) (= (index!46265 lt!624156) i!1037) (bvslt (x!127874 lt!624156) (x!127874 lt!624160)) (= (select (store (arr!46635 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46265 lt!624156)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624159 () (_ BitVec 32))

(declare-datatypes ((Unit!47860 0))(
  ( (Unit!47861) )
))
(declare-fun lt!624154 () Unit!47860)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47860)

(assert (=> b!1415465 (= lt!624154 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624159 (x!127874 lt!624160) (index!46265 lt!624160) (x!127874 lt!624156) (index!46265 lt!624156) (undefined!11780 lt!624156) mask!2840))))

(declare-fun e!801143 () Bool)

(declare-fun b!1415466 () Bool)

(assert (=> b!1415466 (= e!801143 (= (seekEntryOrOpen!0 (select (arr!46635 a!2901) j!112) a!2901 mask!2840) (Found!10968 j!112)))))

(declare-fun b!1415467 () Bool)

(assert (=> b!1415467 (= e!801144 (not e!801142))))

(declare-fun res!951617 () Bool)

(assert (=> b!1415467 (=> res!951617 e!801142)))

(assert (=> b!1415467 (= res!951617 (or (not (is-Intermediate!10968 lt!624160)) (undefined!11780 lt!624160)))))

(assert (=> b!1415467 e!801143))

(declare-fun res!951612 () Bool)

(assert (=> b!1415467 (=> (not res!951612) (not e!801143))))

(assert (=> b!1415467 (= res!951612 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624158 () Unit!47860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47860)

(assert (=> b!1415467 (= lt!624158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415467 (= lt!624160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624159 (select (arr!46635 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415467 (= lt!624159 (toIndex!0 (select (arr!46635 a!2901) j!112) mask!2840))))

(assert (= (and start!122012 res!951618) b!1415464))

(assert (= (and b!1415464 res!951611) b!1415462))

(assert (= (and b!1415462 res!951615) b!1415461))

(assert (= (and b!1415461 res!951610) b!1415459))

(assert (= (and b!1415459 res!951614) b!1415460))

(assert (= (and b!1415460 res!951609) b!1415467))

(assert (= (and b!1415467 res!951612) b!1415466))

(assert (= (and b!1415467 (not res!951617)) b!1415463))

(assert (= (and b!1415463 (not res!951616)) b!1415465))

(assert (= (and b!1415465 res!951613) b!1415458))

(declare-fun m!1305839 () Bool)

(assert (=> b!1415459 m!1305839))

(declare-fun m!1305841 () Bool)

(assert (=> b!1415460 m!1305841))

(declare-fun m!1305843 () Bool)

(assert (=> b!1415463 m!1305843))

(assert (=> b!1415463 m!1305843))

(declare-fun m!1305845 () Bool)

(assert (=> b!1415463 m!1305845))

(declare-fun m!1305847 () Bool)

(assert (=> b!1415463 m!1305847))

(declare-fun m!1305849 () Bool)

(assert (=> b!1415463 m!1305849))

(declare-fun m!1305851 () Bool)

(assert (=> b!1415462 m!1305851))

(assert (=> b!1415462 m!1305851))

(declare-fun m!1305853 () Bool)

(assert (=> b!1415462 m!1305853))

(declare-fun m!1305855 () Bool)

(assert (=> b!1415466 m!1305855))

(assert (=> b!1415466 m!1305855))

(declare-fun m!1305857 () Bool)

(assert (=> b!1415466 m!1305857))

(assert (=> b!1415467 m!1305855))

(declare-fun m!1305859 () Bool)

(assert (=> b!1415467 m!1305859))

(assert (=> b!1415467 m!1305855))

(declare-fun m!1305861 () Bool)

(assert (=> b!1415467 m!1305861))

(assert (=> b!1415467 m!1305855))

(declare-fun m!1305863 () Bool)

(assert (=> b!1415467 m!1305863))

(declare-fun m!1305865 () Bool)

(assert (=> b!1415467 m!1305865))

(declare-fun m!1305867 () Bool)

(assert (=> start!122012 m!1305867))

(declare-fun m!1305869 () Bool)

(assert (=> start!122012 m!1305869))

(assert (=> b!1415465 m!1305847))

(declare-fun m!1305871 () Bool)

(assert (=> b!1415465 m!1305871))

(declare-fun m!1305873 () Bool)

(assert (=> b!1415465 m!1305873))

(declare-fun m!1305875 () Bool)

(assert (=> b!1415458 m!1305875))

(assert (=> b!1415458 m!1305855))

(assert (=> b!1415458 m!1305855))

(declare-fun m!1305877 () Bool)

(assert (=> b!1415458 m!1305877))

(assert (=> b!1415461 m!1305855))

(assert (=> b!1415461 m!1305855))

(declare-fun m!1305879 () Bool)

(assert (=> b!1415461 m!1305879))

(push 1)

(assert (not b!1415463))

(assert (not b!1415462))

(assert (not b!1415465))

(assert (not start!122012))

