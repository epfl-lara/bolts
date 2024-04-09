; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120922 () Bool)

(assert start!120922)

(declare-fun b!1406442 () Bool)

(declare-fun e!796070 () Bool)

(assert (=> b!1406442 (= e!796070 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96147 0))(
  ( (array!96148 (arr!46417 (Array (_ BitVec 32) (_ BitVec 64))) (size!46968 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96147)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10750 0))(
  ( (MissingZero!10750 (index!45376 (_ BitVec 32))) (Found!10750 (index!45377 (_ BitVec 32))) (Intermediate!10750 (undefined!11562 Bool) (index!45378 (_ BitVec 32)) (x!126984 (_ BitVec 32))) (Undefined!10750) (MissingVacant!10750 (index!45379 (_ BitVec 32))) )
))
(declare-fun lt!619355 () SeekEntryResult!10750)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96147 (_ BitVec 32)) SeekEntryResult!10750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406442 (= lt!619355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46417 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46417 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96148 (store (arr!46417 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46968 a!2901)) mask!2840))))

(declare-fun b!1406443 () Bool)

(declare-fun res!944771 () Bool)

(declare-fun e!796068 () Bool)

(assert (=> b!1406443 (=> (not res!944771) (not e!796068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406443 (= res!944771 (validKeyInArray!0 (select (arr!46417 a!2901) j!112)))))

(declare-fun b!1406444 () Bool)

(declare-fun res!944768 () Bool)

(assert (=> b!1406444 (=> (not res!944768) (not e!796068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96147 (_ BitVec 32)) Bool)

(assert (=> b!1406444 (= res!944768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406445 () Bool)

(assert (=> b!1406445 (= e!796068 (not e!796070))))

(declare-fun res!944772 () Bool)

(assert (=> b!1406445 (=> res!944772 e!796070)))

(declare-fun lt!619357 () SeekEntryResult!10750)

(assert (=> b!1406445 (= res!944772 (or (not (is-Intermediate!10750 lt!619357)) (undefined!11562 lt!619357)))))

(declare-fun e!796067 () Bool)

(assert (=> b!1406445 e!796067))

(declare-fun res!944770 () Bool)

(assert (=> b!1406445 (=> (not res!944770) (not e!796067))))

(assert (=> b!1406445 (= res!944770 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47424 0))(
  ( (Unit!47425) )
))
(declare-fun lt!619356 () Unit!47424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47424)

(assert (=> b!1406445 (= lt!619356 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406445 (= lt!619357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46417 a!2901) j!112) mask!2840) (select (arr!46417 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944773 () Bool)

(assert (=> start!120922 (=> (not res!944773) (not e!796068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120922 (= res!944773 (validMask!0 mask!2840))))

(assert (=> start!120922 e!796068))

(assert (=> start!120922 true))

(declare-fun array_inv!35362 (array!96147) Bool)

(assert (=> start!120922 (array_inv!35362 a!2901)))

(declare-fun b!1406446 () Bool)

(declare-fun res!944774 () Bool)

(assert (=> b!1406446 (=> (not res!944774) (not e!796068))))

(declare-datatypes ((List!33116 0))(
  ( (Nil!33113) (Cons!33112 (h!34366 (_ BitVec 64)) (t!47817 List!33116)) )
))
(declare-fun arrayNoDuplicates!0 (array!96147 (_ BitVec 32) List!33116) Bool)

(assert (=> b!1406446 (= res!944774 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33113))))

(declare-fun b!1406447 () Bool)

(declare-fun res!944775 () Bool)

(assert (=> b!1406447 (=> (not res!944775) (not e!796068))))

(assert (=> b!1406447 (= res!944775 (and (= (size!46968 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46968 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46968 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406448 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96147 (_ BitVec 32)) SeekEntryResult!10750)

(assert (=> b!1406448 (= e!796067 (= (seekEntryOrOpen!0 (select (arr!46417 a!2901) j!112) a!2901 mask!2840) (Found!10750 j!112)))))

(declare-fun b!1406449 () Bool)

(declare-fun res!944769 () Bool)

(assert (=> b!1406449 (=> (not res!944769) (not e!796068))))

(assert (=> b!1406449 (= res!944769 (validKeyInArray!0 (select (arr!46417 a!2901) i!1037)))))

(assert (= (and start!120922 res!944773) b!1406447))

(assert (= (and b!1406447 res!944775) b!1406449))

(assert (= (and b!1406449 res!944769) b!1406443))

(assert (= (and b!1406443 res!944771) b!1406444))

(assert (= (and b!1406444 res!944768) b!1406446))

(assert (= (and b!1406446 res!944774) b!1406445))

(assert (= (and b!1406445 res!944770) b!1406448))

(assert (= (and b!1406445 (not res!944772)) b!1406442))

(declare-fun m!1295681 () Bool)

(assert (=> b!1406444 m!1295681))

(declare-fun m!1295683 () Bool)

(assert (=> b!1406445 m!1295683))

(declare-fun m!1295685 () Bool)

(assert (=> b!1406445 m!1295685))

(assert (=> b!1406445 m!1295683))

(declare-fun m!1295687 () Bool)

(assert (=> b!1406445 m!1295687))

(assert (=> b!1406445 m!1295685))

(assert (=> b!1406445 m!1295683))

(declare-fun m!1295689 () Bool)

(assert (=> b!1406445 m!1295689))

(declare-fun m!1295691 () Bool)

(assert (=> b!1406445 m!1295691))

(assert (=> b!1406448 m!1295683))

(assert (=> b!1406448 m!1295683))

(declare-fun m!1295693 () Bool)

(assert (=> b!1406448 m!1295693))

(declare-fun m!1295695 () Bool)

(assert (=> start!120922 m!1295695))

(declare-fun m!1295697 () Bool)

(assert (=> start!120922 m!1295697))

(declare-fun m!1295699 () Bool)

(assert (=> b!1406449 m!1295699))

(assert (=> b!1406449 m!1295699))

(declare-fun m!1295701 () Bool)

(assert (=> b!1406449 m!1295701))

(declare-fun m!1295703 () Bool)

(assert (=> b!1406446 m!1295703))

(declare-fun m!1295705 () Bool)

(assert (=> b!1406442 m!1295705))

(declare-fun m!1295707 () Bool)

(assert (=> b!1406442 m!1295707))

(assert (=> b!1406442 m!1295707))

(declare-fun m!1295709 () Bool)

(assert (=> b!1406442 m!1295709))

(assert (=> b!1406442 m!1295709))

(assert (=> b!1406442 m!1295707))

(declare-fun m!1295711 () Bool)

(assert (=> b!1406442 m!1295711))

(assert (=> b!1406443 m!1295683))

(assert (=> b!1406443 m!1295683))

(declare-fun m!1295713 () Bool)

(assert (=> b!1406443 m!1295713))

(push 1)

(assert (not start!120922))

(assert (not b!1406445))

(assert (not b!1406448))

(assert (not b!1406443))

(assert (not b!1406444))

(assert (not b!1406449))

(assert (not b!1406446))

(assert (not b!1406442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

