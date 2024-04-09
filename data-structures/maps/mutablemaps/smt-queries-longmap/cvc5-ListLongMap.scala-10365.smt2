; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122044 () Bool)

(assert start!122044)

(declare-fun b!1415965 () Bool)

(declare-fun res!952124 () Bool)

(declare-fun e!801449 () Bool)

(assert (=> b!1415965 (=> res!952124 e!801449)))

(declare-datatypes ((array!96648 0))(
  ( (array!96649 (arr!46651 (Array (_ BitVec 32) (_ BitVec 64))) (size!47202 (_ BitVec 32))) )
))
(declare-fun lt!624542 () array!96648)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10984 0))(
  ( (MissingZero!10984 (index!46327 (_ BitVec 32))) (Found!10984 (index!46328 (_ BitVec 32))) (Intermediate!10984 (undefined!11796 Bool) (index!46329 (_ BitVec 32)) (x!127938 (_ BitVec 32))) (Undefined!10984) (MissingVacant!10984 (index!46330 (_ BitVec 32))) )
))
(declare-fun lt!624546 () SeekEntryResult!10984)

(declare-fun lt!624548 () (_ BitVec 32))

(declare-fun lt!624545 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96648 (_ BitVec 32)) SeekEntryResult!10984)

(assert (=> b!1415965 (= res!952124 (not (= lt!624546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624548 lt!624545 lt!624542 mask!2840))))))

(declare-fun res!952116 () Bool)

(declare-fun e!801447 () Bool)

(assert (=> start!122044 (=> (not res!952116) (not e!801447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122044 (= res!952116 (validMask!0 mask!2840))))

(assert (=> start!122044 e!801447))

(assert (=> start!122044 true))

(declare-fun a!2901 () array!96648)

(declare-fun array_inv!35596 (array!96648) Bool)

(assert (=> start!122044 (array_inv!35596 a!2901)))

(declare-fun b!1415966 () Bool)

(declare-fun e!801448 () Bool)

(declare-fun e!801446 () Bool)

(assert (=> b!1415966 (= e!801448 e!801446)))

(declare-fun res!952121 () Bool)

(assert (=> b!1415966 (=> res!952121 e!801446)))

(declare-fun lt!624543 () SeekEntryResult!10984)

(assert (=> b!1415966 (= res!952121 (or (= lt!624543 lt!624546) (not (is-Intermediate!10984 lt!624546))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415966 (= lt!624546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624545 mask!2840) lt!624545 lt!624542 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415966 (= lt!624545 (select (store (arr!46651 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415966 (= lt!624542 (array!96649 (store (arr!46651 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47202 a!2901)))))

(declare-fun b!1415967 () Bool)

(declare-fun res!952122 () Bool)

(assert (=> b!1415967 (=> (not res!952122) (not e!801447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96648 (_ BitVec 32)) Bool)

(assert (=> b!1415967 (= res!952122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415968 () Bool)

(declare-fun res!952125 () Bool)

(assert (=> b!1415968 (=> (not res!952125) (not e!801447))))

(declare-datatypes ((List!33350 0))(
  ( (Nil!33347) (Cons!33346 (h!34633 (_ BitVec 64)) (t!48051 List!33350)) )
))
(declare-fun arrayNoDuplicates!0 (array!96648 (_ BitVec 32) List!33350) Bool)

(assert (=> b!1415968 (= res!952125 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33347))))

(declare-fun b!1415969 () Bool)

(declare-fun res!952118 () Bool)

(assert (=> b!1415969 (=> (not res!952118) (not e!801447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415969 (= res!952118 (validKeyInArray!0 (select (arr!46651 a!2901) i!1037)))))

(declare-fun b!1415970 () Bool)

(declare-fun res!952123 () Bool)

(assert (=> b!1415970 (=> (not res!952123) (not e!801447))))

(assert (=> b!1415970 (= res!952123 (validKeyInArray!0 (select (arr!46651 a!2901) j!112)))))

(declare-fun b!1415971 () Bool)

(assert (=> b!1415971 (= e!801446 e!801449)))

(declare-fun res!952119 () Bool)

(assert (=> b!1415971 (=> res!952119 e!801449)))

(assert (=> b!1415971 (= res!952119 (or (bvslt (x!127938 lt!624543) #b00000000000000000000000000000000) (bvsgt (x!127938 lt!624543) #b01111111111111111111111111111110) (bvslt (x!127938 lt!624546) #b00000000000000000000000000000000) (bvsgt (x!127938 lt!624546) #b01111111111111111111111111111110) (bvslt lt!624548 #b00000000000000000000000000000000) (bvsge lt!624548 (size!47202 a!2901)) (bvslt (index!46329 lt!624543) #b00000000000000000000000000000000) (bvsge (index!46329 lt!624543) (size!47202 a!2901)) (bvslt (index!46329 lt!624546) #b00000000000000000000000000000000) (bvsge (index!46329 lt!624546) (size!47202 a!2901)) (not (= lt!624543 (Intermediate!10984 false (index!46329 lt!624543) (x!127938 lt!624543)))) (not (= lt!624546 (Intermediate!10984 false (index!46329 lt!624546) (x!127938 lt!624546))))))))

(declare-fun lt!624549 () SeekEntryResult!10984)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96648 (_ BitVec 32)) SeekEntryResult!10984)

(assert (=> b!1415971 (= lt!624549 (seekKeyOrZeroReturnVacant!0 (x!127938 lt!624546) (index!46329 lt!624546) (index!46329 lt!624546) (select (arr!46651 a!2901) j!112) lt!624542 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96648 (_ BitVec 32)) SeekEntryResult!10984)

(assert (=> b!1415971 (= lt!624549 (seekEntryOrOpen!0 lt!624545 lt!624542 mask!2840))))

(assert (=> b!1415971 (and (not (undefined!11796 lt!624546)) (= (index!46329 lt!624546) i!1037) (bvslt (x!127938 lt!624546) (x!127938 lt!624543)) (= (select (store (arr!46651 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46329 lt!624546)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47892 0))(
  ( (Unit!47893) )
))
(declare-fun lt!624550 () Unit!47892)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47892)

(assert (=> b!1415971 (= lt!624550 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624548 (x!127938 lt!624543) (index!46329 lt!624543) (x!127938 lt!624546) (index!46329 lt!624546) (undefined!11796 lt!624546) mask!2840))))

(declare-fun b!1415972 () Bool)

(assert (=> b!1415972 (= e!801447 (not e!801448))))

(declare-fun res!952120 () Bool)

(assert (=> b!1415972 (=> res!952120 e!801448)))

(assert (=> b!1415972 (= res!952120 (or (not (is-Intermediate!10984 lt!624543)) (undefined!11796 lt!624543)))))

(declare-fun lt!624541 () SeekEntryResult!10984)

(assert (=> b!1415972 (= lt!624541 (Found!10984 j!112))))

(assert (=> b!1415972 (= lt!624541 (seekEntryOrOpen!0 (select (arr!46651 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415972 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624547 () Unit!47892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47892)

(assert (=> b!1415972 (= lt!624547 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415972 (= lt!624543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624548 (select (arr!46651 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415972 (= lt!624548 (toIndex!0 (select (arr!46651 a!2901) j!112) mask!2840))))

(declare-fun b!1415973 () Bool)

(declare-fun res!952117 () Bool)

(assert (=> b!1415973 (=> (not res!952117) (not e!801447))))

(assert (=> b!1415973 (= res!952117 (and (= (size!47202 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47202 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47202 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415974 () Bool)

(assert (=> b!1415974 (= e!801449 true)))

(assert (=> b!1415974 (= lt!624541 lt!624549)))

(declare-fun lt!624544 () Unit!47892)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47892)

(assert (=> b!1415974 (= lt!624544 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624548 (x!127938 lt!624543) (index!46329 lt!624543) (x!127938 lt!624546) (index!46329 lt!624546) mask!2840))))

(assert (= (and start!122044 res!952116) b!1415973))

(assert (= (and b!1415973 res!952117) b!1415969))

(assert (= (and b!1415969 res!952118) b!1415970))

(assert (= (and b!1415970 res!952123) b!1415967))

(assert (= (and b!1415967 res!952122) b!1415968))

(assert (= (and b!1415968 res!952125) b!1415972))

(assert (= (and b!1415972 (not res!952120)) b!1415966))

(assert (= (and b!1415966 (not res!952121)) b!1415971))

(assert (= (and b!1415971 (not res!952119)) b!1415965))

(assert (= (and b!1415965 (not res!952124)) b!1415974))

(declare-fun m!1306541 () Bool)

(assert (=> b!1415968 m!1306541))

(declare-fun m!1306543 () Bool)

(assert (=> b!1415969 m!1306543))

(assert (=> b!1415969 m!1306543))

(declare-fun m!1306545 () Bool)

(assert (=> b!1415969 m!1306545))

(declare-fun m!1306547 () Bool)

(assert (=> b!1415970 m!1306547))

(assert (=> b!1415970 m!1306547))

(declare-fun m!1306549 () Bool)

(assert (=> b!1415970 m!1306549))

(declare-fun m!1306551 () Bool)

(assert (=> b!1415965 m!1306551))

(declare-fun m!1306553 () Bool)

(assert (=> b!1415967 m!1306553))

(assert (=> b!1415971 m!1306547))

(declare-fun m!1306555 () Bool)

(assert (=> b!1415971 m!1306555))

(assert (=> b!1415971 m!1306547))

(declare-fun m!1306557 () Bool)

(assert (=> b!1415971 m!1306557))

(declare-fun m!1306559 () Bool)

(assert (=> b!1415971 m!1306559))

(declare-fun m!1306561 () Bool)

(assert (=> b!1415971 m!1306561))

(declare-fun m!1306563 () Bool)

(assert (=> b!1415971 m!1306563))

(declare-fun m!1306565 () Bool)

(assert (=> b!1415974 m!1306565))

(declare-fun m!1306567 () Bool)

(assert (=> b!1415966 m!1306567))

(assert (=> b!1415966 m!1306567))

(declare-fun m!1306569 () Bool)

(assert (=> b!1415966 m!1306569))

(assert (=> b!1415966 m!1306563))

(declare-fun m!1306571 () Bool)

(assert (=> b!1415966 m!1306571))

(assert (=> b!1415972 m!1306547))

(declare-fun m!1306573 () Bool)

(assert (=> b!1415972 m!1306573))

(assert (=> b!1415972 m!1306547))

(declare-fun m!1306575 () Bool)

(assert (=> b!1415972 m!1306575))

(assert (=> b!1415972 m!1306547))

(declare-fun m!1306577 () Bool)

(assert (=> b!1415972 m!1306577))

(assert (=> b!1415972 m!1306547))

(declare-fun m!1306579 () Bool)

(assert (=> b!1415972 m!1306579))

(declare-fun m!1306581 () Bool)

(assert (=> b!1415972 m!1306581))

(declare-fun m!1306583 () Bool)

(assert (=> start!122044 m!1306583))

(declare-fun m!1306585 () Bool)

(assert (=> start!122044 m!1306585))

(push 1)

