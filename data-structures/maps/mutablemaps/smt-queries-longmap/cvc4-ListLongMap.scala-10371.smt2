; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122138 () Bool)

(assert start!122138)

(declare-fun res!952755 () Bool)

(declare-fun e!801881 () Bool)

(assert (=> start!122138 (=> (not res!952755) (not e!801881))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122138 (= res!952755 (validMask!0 mask!2840))))

(assert (=> start!122138 e!801881))

(assert (=> start!122138 true))

(declare-datatypes ((array!96691 0))(
  ( (array!96692 (arr!46671 (Array (_ BitVec 32) (_ BitVec 64))) (size!47222 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96691)

(declare-fun array_inv!35616 (array!96691) Bool)

(assert (=> start!122138 (array_inv!35616 a!2901)))

(declare-fun b!1416768 () Bool)

(declare-fun res!952754 () Bool)

(assert (=> b!1416768 (=> (not res!952754) (not e!801881))))

(declare-datatypes ((List!33370 0))(
  ( (Nil!33367) (Cons!33366 (h!34656 (_ BitVec 64)) (t!48071 List!33370)) )
))
(declare-fun arrayNoDuplicates!0 (array!96691 (_ BitVec 32) List!33370) Bool)

(assert (=> b!1416768 (= res!952754 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33367))))

(declare-fun b!1416769 () Bool)

(declare-fun res!952759 () Bool)

(assert (=> b!1416769 (=> (not res!952759) (not e!801881))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416769 (= res!952759 (validKeyInArray!0 (select (arr!46671 a!2901) i!1037)))))

(declare-fun b!1416770 () Bool)

(declare-fun e!801878 () Bool)

(assert (=> b!1416770 (= e!801878 true)))

(declare-datatypes ((SeekEntryResult!11004 0))(
  ( (MissingZero!11004 (index!46407 (_ BitVec 32))) (Found!11004 (index!46408 (_ BitVec 32))) (Intermediate!11004 (undefined!11816 Bool) (index!46409 (_ BitVec 32)) (x!128012 (_ BitVec 32))) (Undefined!11004) (MissingVacant!11004 (index!46410 (_ BitVec 32))) )
))
(declare-fun lt!625080 () SeekEntryResult!11004)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96691 (_ BitVec 32)) SeekEntryResult!11004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416770 (= lt!625080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46671 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46671 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96692 (store (arr!46671 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47222 a!2901)) mask!2840))))

(declare-fun b!1416771 () Bool)

(assert (=> b!1416771 (= e!801881 (not e!801878))))

(declare-fun res!952761 () Bool)

(assert (=> b!1416771 (=> res!952761 e!801878)))

(declare-fun lt!625081 () SeekEntryResult!11004)

(assert (=> b!1416771 (= res!952761 (or (not (is-Intermediate!11004 lt!625081)) (undefined!11816 lt!625081)))))

(declare-fun e!801880 () Bool)

(assert (=> b!1416771 e!801880))

(declare-fun res!952756 () Bool)

(assert (=> b!1416771 (=> (not res!952756) (not e!801880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96691 (_ BitVec 32)) Bool)

(assert (=> b!1416771 (= res!952756 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47932 0))(
  ( (Unit!47933) )
))
(declare-fun lt!625079 () Unit!47932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47932)

(assert (=> b!1416771 (= lt!625079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416771 (= lt!625081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46671 a!2901) j!112) mask!2840) (select (arr!46671 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416772 () Bool)

(declare-fun res!952757 () Bool)

(assert (=> b!1416772 (=> (not res!952757) (not e!801881))))

(assert (=> b!1416772 (= res!952757 (validKeyInArray!0 (select (arr!46671 a!2901) j!112)))))

(declare-fun b!1416773 () Bool)

(declare-fun res!952758 () Bool)

(assert (=> b!1416773 (=> (not res!952758) (not e!801881))))

(assert (=> b!1416773 (= res!952758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416774 () Bool)

(declare-fun res!952760 () Bool)

(assert (=> b!1416774 (=> (not res!952760) (not e!801881))))

(assert (=> b!1416774 (= res!952760 (and (= (size!47222 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47222 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47222 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416775 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96691 (_ BitVec 32)) SeekEntryResult!11004)

(assert (=> b!1416775 (= e!801880 (= (seekEntryOrOpen!0 (select (arr!46671 a!2901) j!112) a!2901 mask!2840) (Found!11004 j!112)))))

(assert (= (and start!122138 res!952755) b!1416774))

(assert (= (and b!1416774 res!952760) b!1416769))

(assert (= (and b!1416769 res!952759) b!1416772))

(assert (= (and b!1416772 res!952757) b!1416773))

(assert (= (and b!1416773 res!952758) b!1416768))

(assert (= (and b!1416768 res!952754) b!1416771))

(assert (= (and b!1416771 res!952756) b!1416775))

(assert (= (and b!1416771 (not res!952761)) b!1416770))

(declare-fun m!1307515 () Bool)

(assert (=> b!1416771 m!1307515))

(declare-fun m!1307517 () Bool)

(assert (=> b!1416771 m!1307517))

(assert (=> b!1416771 m!1307515))

(declare-fun m!1307519 () Bool)

(assert (=> b!1416771 m!1307519))

(assert (=> b!1416771 m!1307517))

(assert (=> b!1416771 m!1307515))

(declare-fun m!1307521 () Bool)

(assert (=> b!1416771 m!1307521))

(declare-fun m!1307523 () Bool)

(assert (=> b!1416771 m!1307523))

(declare-fun m!1307525 () Bool)

(assert (=> b!1416770 m!1307525))

(declare-fun m!1307527 () Bool)

(assert (=> b!1416770 m!1307527))

(assert (=> b!1416770 m!1307527))

(declare-fun m!1307529 () Bool)

(assert (=> b!1416770 m!1307529))

(assert (=> b!1416770 m!1307529))

(assert (=> b!1416770 m!1307527))

(declare-fun m!1307531 () Bool)

(assert (=> b!1416770 m!1307531))

(declare-fun m!1307533 () Bool)

(assert (=> b!1416773 m!1307533))

(assert (=> b!1416772 m!1307515))

(assert (=> b!1416772 m!1307515))

(declare-fun m!1307535 () Bool)

(assert (=> b!1416772 m!1307535))

(assert (=> b!1416775 m!1307515))

(assert (=> b!1416775 m!1307515))

(declare-fun m!1307537 () Bool)

(assert (=> b!1416775 m!1307537))

(declare-fun m!1307539 () Bool)

(assert (=> b!1416768 m!1307539))

(declare-fun m!1307541 () Bool)

(assert (=> start!122138 m!1307541))

(declare-fun m!1307543 () Bool)

(assert (=> start!122138 m!1307543))

(declare-fun m!1307545 () Bool)

(assert (=> b!1416769 m!1307545))

(assert (=> b!1416769 m!1307545))

(declare-fun m!1307547 () Bool)

(assert (=> b!1416769 m!1307547))

(push 1)

(assert (not b!1416771))

(assert (not b!1416772))

(assert (not b!1416768))

(assert (not b!1416773))

(assert (not b!1416770))

(assert (not b!1416775))

(assert (not b!1416769))

(assert (not start!122138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

