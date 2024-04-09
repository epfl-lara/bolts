; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121676 () Bool)

(assert start!121676)

(declare-fun b!1413070 () Bool)

(declare-fun res!950177 () Bool)

(declare-fun e!799714 () Bool)

(assert (=> b!1413070 (=> (not res!950177) (not e!799714))))

(declare-datatypes ((array!96532 0))(
  ( (array!96533 (arr!46599 (Array (_ BitVec 32) (_ BitVec 64))) (size!47150 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96532)

(declare-datatypes ((List!33298 0))(
  ( (Nil!33295) (Cons!33294 (h!34569 (_ BitVec 64)) (t!47999 List!33298)) )
))
(declare-fun arrayNoDuplicates!0 (array!96532 (_ BitVec 32) List!33298) Bool)

(assert (=> b!1413070 (= res!950177 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33295))))

(declare-fun b!1413072 () Bool)

(declare-fun res!950170 () Bool)

(assert (=> b!1413072 (=> (not res!950170) (not e!799714))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413072 (= res!950170 (validKeyInArray!0 (select (arr!46599 a!2901) j!112)))))

(declare-fun lt!622774 () array!96532)

(declare-fun b!1413073 () Bool)

(declare-datatypes ((SeekEntryResult!10932 0))(
  ( (MissingZero!10932 (index!46107 (_ BitVec 32))) (Found!10932 (index!46108 (_ BitVec 32))) (Intermediate!10932 (undefined!11744 Bool) (index!46109 (_ BitVec 32)) (x!127694 (_ BitVec 32))) (Undefined!10932) (MissingVacant!10932 (index!46110 (_ BitVec 32))) )
))
(declare-fun lt!622779 () SeekEntryResult!10932)

(declare-fun e!799715 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622775 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96532 (_ BitVec 32)) SeekEntryResult!10932)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96532 (_ BitVec 32)) SeekEntryResult!10932)

(assert (=> b!1413073 (= e!799715 (= (seekEntryOrOpen!0 lt!622775 lt!622774 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127694 lt!622779) (index!46109 lt!622779) (index!46109 lt!622779) (select (arr!46599 a!2901) j!112) lt!622774 mask!2840)))))

(declare-fun e!799713 () Bool)

(declare-fun b!1413074 () Bool)

(assert (=> b!1413074 (= e!799713 (= (seekEntryOrOpen!0 (select (arr!46599 a!2901) j!112) a!2901 mask!2840) (Found!10932 j!112)))))

(declare-fun b!1413075 () Bool)

(declare-fun e!799716 () Bool)

(assert (=> b!1413075 (= e!799716 true)))

(assert (=> b!1413075 e!799715))

(declare-fun res!950171 () Bool)

(assert (=> b!1413075 (=> (not res!950171) (not e!799715))))

(declare-fun lt!622778 () SeekEntryResult!10932)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413075 (= res!950171 (and (not (undefined!11744 lt!622779)) (= (index!46109 lt!622779) i!1037) (bvslt (x!127694 lt!622779) (x!127694 lt!622778)) (= (select (store (arr!46599 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46109 lt!622779)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47788 0))(
  ( (Unit!47789) )
))
(declare-fun lt!622776 () Unit!47788)

(declare-fun lt!622777 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47788)

(assert (=> b!1413075 (= lt!622776 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622777 (x!127694 lt!622778) (index!46109 lt!622778) (x!127694 lt!622779) (index!46109 lt!622779) (undefined!11744 lt!622779) mask!2840))))

(declare-fun b!1413076 () Bool)

(declare-fun e!799718 () Bool)

(assert (=> b!1413076 (= e!799714 (not e!799718))))

(declare-fun res!950178 () Bool)

(assert (=> b!1413076 (=> res!950178 e!799718)))

(assert (=> b!1413076 (= res!950178 (or (not (is-Intermediate!10932 lt!622778)) (undefined!11744 lt!622778)))))

(assert (=> b!1413076 e!799713))

(declare-fun res!950174 () Bool)

(assert (=> b!1413076 (=> (not res!950174) (not e!799713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96532 (_ BitVec 32)) Bool)

(assert (=> b!1413076 (= res!950174 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622780 () Unit!47788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47788)

(assert (=> b!1413076 (= lt!622780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96532 (_ BitVec 32)) SeekEntryResult!10932)

(assert (=> b!1413076 (= lt!622778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622777 (select (arr!46599 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413076 (= lt!622777 (toIndex!0 (select (arr!46599 a!2901) j!112) mask!2840))))

(declare-fun b!1413077 () Bool)

(declare-fun res!950169 () Bool)

(assert (=> b!1413077 (=> (not res!950169) (not e!799714))))

(assert (=> b!1413077 (= res!950169 (validKeyInArray!0 (select (arr!46599 a!2901) i!1037)))))

(declare-fun b!1413071 () Bool)

(assert (=> b!1413071 (= e!799718 e!799716)))

(declare-fun res!950172 () Bool)

(assert (=> b!1413071 (=> res!950172 e!799716)))

(assert (=> b!1413071 (= res!950172 (or (= lt!622778 lt!622779) (not (is-Intermediate!10932 lt!622779))))))

(assert (=> b!1413071 (= lt!622779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622775 mask!2840) lt!622775 lt!622774 mask!2840))))

(assert (=> b!1413071 (= lt!622775 (select (store (arr!46599 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413071 (= lt!622774 (array!96533 (store (arr!46599 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47150 a!2901)))))

(declare-fun res!950173 () Bool)

(assert (=> start!121676 (=> (not res!950173) (not e!799714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121676 (= res!950173 (validMask!0 mask!2840))))

(assert (=> start!121676 e!799714))

(assert (=> start!121676 true))

(declare-fun array_inv!35544 (array!96532) Bool)

(assert (=> start!121676 (array_inv!35544 a!2901)))

(declare-fun b!1413078 () Bool)

(declare-fun res!950175 () Bool)

(assert (=> b!1413078 (=> (not res!950175) (not e!799714))))

(assert (=> b!1413078 (= res!950175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413079 () Bool)

(declare-fun res!950176 () Bool)

(assert (=> b!1413079 (=> (not res!950176) (not e!799714))))

(assert (=> b!1413079 (= res!950176 (and (= (size!47150 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47150 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47150 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121676 res!950173) b!1413079))

(assert (= (and b!1413079 res!950176) b!1413077))

(assert (= (and b!1413077 res!950169) b!1413072))

(assert (= (and b!1413072 res!950170) b!1413078))

(assert (= (and b!1413078 res!950175) b!1413070))

(assert (= (and b!1413070 res!950177) b!1413076))

(assert (= (and b!1413076 res!950174) b!1413074))

(assert (= (and b!1413076 (not res!950178)) b!1413071))

(assert (= (and b!1413071 (not res!950172)) b!1413075))

(assert (= (and b!1413075 res!950171) b!1413073))

(declare-fun m!1303439 () Bool)

(assert (=> b!1413076 m!1303439))

(declare-fun m!1303441 () Bool)

(assert (=> b!1413076 m!1303441))

(assert (=> b!1413076 m!1303439))

(declare-fun m!1303443 () Bool)

(assert (=> b!1413076 m!1303443))

(assert (=> b!1413076 m!1303439))

(declare-fun m!1303445 () Bool)

(assert (=> b!1413076 m!1303445))

(declare-fun m!1303447 () Bool)

(assert (=> b!1413076 m!1303447))

(declare-fun m!1303449 () Bool)

(assert (=> b!1413070 m!1303449))

(declare-fun m!1303451 () Bool)

(assert (=> b!1413078 m!1303451))

(assert (=> b!1413072 m!1303439))

(assert (=> b!1413072 m!1303439))

(declare-fun m!1303453 () Bool)

(assert (=> b!1413072 m!1303453))

(declare-fun m!1303455 () Bool)

(assert (=> start!121676 m!1303455))

(declare-fun m!1303457 () Bool)

(assert (=> start!121676 m!1303457))

(declare-fun m!1303459 () Bool)

(assert (=> b!1413071 m!1303459))

(assert (=> b!1413071 m!1303459))

(declare-fun m!1303461 () Bool)

(assert (=> b!1413071 m!1303461))

(declare-fun m!1303463 () Bool)

(assert (=> b!1413071 m!1303463))

(declare-fun m!1303465 () Bool)

(assert (=> b!1413071 m!1303465))

(declare-fun m!1303467 () Bool)

(assert (=> b!1413073 m!1303467))

(assert (=> b!1413073 m!1303439))

(assert (=> b!1413073 m!1303439))

(declare-fun m!1303469 () Bool)

(assert (=> b!1413073 m!1303469))

(assert (=> b!1413074 m!1303439))

(assert (=> b!1413074 m!1303439))

(declare-fun m!1303471 () Bool)

(assert (=> b!1413074 m!1303471))

(assert (=> b!1413075 m!1303463))

(declare-fun m!1303473 () Bool)

(assert (=> b!1413075 m!1303473))

(declare-fun m!1303475 () Bool)

(assert (=> b!1413075 m!1303475))

(declare-fun m!1303477 () Bool)

(assert (=> b!1413077 m!1303477))

(assert (=> b!1413077 m!1303477))

(declare-fun m!1303479 () Bool)

(assert (=> b!1413077 m!1303479))

(push 1)

(assert (not b!1413075))

(assert (not b!1413071))

(assert (not b!1413070))

(assert (not b!1413078))

(assert (not b!1413072))

(assert (not b!1413074))

(assert (not b!1413076))

(assert (not b!1413073))

