; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120928 () Bool)

(assert start!120928)

(declare-fun b!1406514 () Bool)

(declare-fun res!944844 () Bool)

(declare-fun e!796104 () Bool)

(assert (=> b!1406514 (=> (not res!944844) (not e!796104))))

(declare-datatypes ((array!96153 0))(
  ( (array!96154 (arr!46420 (Array (_ BitVec 32) (_ BitVec 64))) (size!46971 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96153)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406514 (= res!944844 (validKeyInArray!0 (select (arr!46420 a!2901) i!1037)))))

(declare-fun b!1406515 () Bool)

(declare-fun res!944841 () Bool)

(assert (=> b!1406515 (=> (not res!944841) (not e!796104))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406515 (= res!944841 (validKeyInArray!0 (select (arr!46420 a!2901) j!112)))))

(declare-fun res!944843 () Bool)

(assert (=> start!120928 (=> (not res!944843) (not e!796104))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120928 (= res!944843 (validMask!0 mask!2840))))

(assert (=> start!120928 e!796104))

(assert (=> start!120928 true))

(declare-fun array_inv!35365 (array!96153) Bool)

(assert (=> start!120928 (array_inv!35365 a!2901)))

(declare-fun b!1406516 () Bool)

(declare-fun e!796103 () Bool)

(assert (=> b!1406516 (= e!796104 (not e!796103))))

(declare-fun res!944846 () Bool)

(assert (=> b!1406516 (=> res!944846 e!796103)))

(declare-datatypes ((SeekEntryResult!10753 0))(
  ( (MissingZero!10753 (index!45388 (_ BitVec 32))) (Found!10753 (index!45389 (_ BitVec 32))) (Intermediate!10753 (undefined!11565 Bool) (index!45390 (_ BitVec 32)) (x!126995 (_ BitVec 32))) (Undefined!10753) (MissingVacant!10753 (index!45391 (_ BitVec 32))) )
))
(declare-fun lt!619382 () SeekEntryResult!10753)

(assert (=> b!1406516 (= res!944846 (or (not (is-Intermediate!10753 lt!619382)) (undefined!11565 lt!619382)))))

(declare-fun e!796106 () Bool)

(assert (=> b!1406516 e!796106))

(declare-fun res!944842 () Bool)

(assert (=> b!1406516 (=> (not res!944842) (not e!796106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96153 (_ BitVec 32)) Bool)

(assert (=> b!1406516 (= res!944842 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47430 0))(
  ( (Unit!47431) )
))
(declare-fun lt!619383 () Unit!47430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47430)

(assert (=> b!1406516 (= lt!619383 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96153 (_ BitVec 32)) SeekEntryResult!10753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406516 (= lt!619382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46420 a!2901) j!112) mask!2840) (select (arr!46420 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406517 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96153 (_ BitVec 32)) SeekEntryResult!10753)

(assert (=> b!1406517 (= e!796106 (= (seekEntryOrOpen!0 (select (arr!46420 a!2901) j!112) a!2901 mask!2840) (Found!10753 j!112)))))

(declare-fun b!1406518 () Bool)

(declare-fun res!944847 () Bool)

(assert (=> b!1406518 (=> (not res!944847) (not e!796104))))

(declare-datatypes ((List!33119 0))(
  ( (Nil!33116) (Cons!33115 (h!34369 (_ BitVec 64)) (t!47820 List!33119)) )
))
(declare-fun arrayNoDuplicates!0 (array!96153 (_ BitVec 32) List!33119) Bool)

(assert (=> b!1406518 (= res!944847 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33116))))

(declare-fun b!1406519 () Bool)

(declare-fun res!944840 () Bool)

(assert (=> b!1406519 (=> (not res!944840) (not e!796104))))

(assert (=> b!1406519 (= res!944840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406520 () Bool)

(assert (=> b!1406520 (= e!796103 true)))

(declare-fun lt!619384 () SeekEntryResult!10753)

(assert (=> b!1406520 (= lt!619384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46420 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46420 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96154 (store (arr!46420 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46971 a!2901)) mask!2840))))

(declare-fun b!1406521 () Bool)

(declare-fun res!944845 () Bool)

(assert (=> b!1406521 (=> (not res!944845) (not e!796104))))

(assert (=> b!1406521 (= res!944845 (and (= (size!46971 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46971 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46971 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120928 res!944843) b!1406521))

(assert (= (and b!1406521 res!944845) b!1406514))

(assert (= (and b!1406514 res!944844) b!1406515))

(assert (= (and b!1406515 res!944841) b!1406519))

(assert (= (and b!1406519 res!944840) b!1406518))

(assert (= (and b!1406518 res!944847) b!1406516))

(assert (= (and b!1406516 res!944842) b!1406517))

(assert (= (and b!1406516 (not res!944846)) b!1406520))

(declare-fun m!1295783 () Bool)

(assert (=> b!1406517 m!1295783))

(assert (=> b!1406517 m!1295783))

(declare-fun m!1295785 () Bool)

(assert (=> b!1406517 m!1295785))

(declare-fun m!1295787 () Bool)

(assert (=> b!1406518 m!1295787))

(assert (=> b!1406516 m!1295783))

(declare-fun m!1295789 () Bool)

(assert (=> b!1406516 m!1295789))

(assert (=> b!1406516 m!1295783))

(declare-fun m!1295791 () Bool)

(assert (=> b!1406516 m!1295791))

(assert (=> b!1406516 m!1295789))

(assert (=> b!1406516 m!1295783))

(declare-fun m!1295793 () Bool)

(assert (=> b!1406516 m!1295793))

(declare-fun m!1295795 () Bool)

(assert (=> b!1406516 m!1295795))

(declare-fun m!1295797 () Bool)

(assert (=> b!1406520 m!1295797))

(declare-fun m!1295799 () Bool)

(assert (=> b!1406520 m!1295799))

(assert (=> b!1406520 m!1295799))

(declare-fun m!1295801 () Bool)

(assert (=> b!1406520 m!1295801))

(assert (=> b!1406520 m!1295801))

(assert (=> b!1406520 m!1295799))

(declare-fun m!1295803 () Bool)

(assert (=> b!1406520 m!1295803))

(declare-fun m!1295805 () Bool)

(assert (=> start!120928 m!1295805))

(declare-fun m!1295807 () Bool)

(assert (=> start!120928 m!1295807))

(declare-fun m!1295809 () Bool)

(assert (=> b!1406514 m!1295809))

(assert (=> b!1406514 m!1295809))

(declare-fun m!1295811 () Bool)

(assert (=> b!1406514 m!1295811))

(declare-fun m!1295813 () Bool)

(assert (=> b!1406519 m!1295813))

(assert (=> b!1406515 m!1295783))

(assert (=> b!1406515 m!1295783))

(declare-fun m!1295815 () Bool)

(assert (=> b!1406515 m!1295815))

(push 1)

(assert (not b!1406516))

(assert (not b!1406518))

(assert (not start!120928))

(assert (not b!1406515))

(assert (not b!1406514))

(assert (not b!1406520))

(assert (not b!1406517))

(assert (not b!1406519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

