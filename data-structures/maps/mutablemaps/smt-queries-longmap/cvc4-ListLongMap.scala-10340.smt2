; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121634 () Bool)

(assert start!121634)

(declare-fun b!1412440 () Bool)

(declare-fun res!949547 () Bool)

(declare-fun e!799338 () Bool)

(assert (=> b!1412440 (=> (not res!949547) (not e!799338))))

(declare-datatypes ((array!96490 0))(
  ( (array!96491 (arr!46578 (Array (_ BitVec 32) (_ BitVec 64))) (size!47129 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96490)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412440 (= res!949547 (validKeyInArray!0 (select (arr!46578 a!2901) j!112)))))

(declare-fun b!1412441 () Bool)

(declare-fun res!949548 () Bool)

(assert (=> b!1412441 (=> (not res!949548) (not e!799338))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412441 (= res!949548 (validKeyInArray!0 (select (arr!46578 a!2901) i!1037)))))

(declare-fun b!1412442 () Bool)

(declare-fun res!949546 () Bool)

(assert (=> b!1412442 (=> (not res!949546) (not e!799338))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96490 (_ BitVec 32)) Bool)

(assert (=> b!1412442 (= res!949546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412443 () Bool)

(declare-fun res!949541 () Bool)

(assert (=> b!1412443 (=> (not res!949541) (not e!799338))))

(declare-datatypes ((List!33277 0))(
  ( (Nil!33274) (Cons!33273 (h!34548 (_ BitVec 64)) (t!47978 List!33277)) )
))
(declare-fun arrayNoDuplicates!0 (array!96490 (_ BitVec 32) List!33277) Bool)

(assert (=> b!1412443 (= res!949541 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33274))))

(declare-fun e!799336 () Bool)

(declare-fun b!1412444 () Bool)

(declare-datatypes ((SeekEntryResult!10911 0))(
  ( (MissingZero!10911 (index!46023 (_ BitVec 32))) (Found!10911 (index!46024 (_ BitVec 32))) (Intermediate!10911 (undefined!11723 Bool) (index!46025 (_ BitVec 32)) (x!127617 (_ BitVec 32))) (Undefined!10911) (MissingVacant!10911 (index!46026 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96490 (_ BitVec 32)) SeekEntryResult!10911)

(assert (=> b!1412444 (= e!799336 (= (seekEntryOrOpen!0 (select (arr!46578 a!2901) j!112) a!2901 mask!2840) (Found!10911 j!112)))))

(declare-fun b!1412445 () Bool)

(declare-fun res!949540 () Bool)

(assert (=> b!1412445 (=> (not res!949540) (not e!799338))))

(assert (=> b!1412445 (= res!949540 (and (= (size!47129 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47129 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47129 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412446 () Bool)

(declare-fun e!799335 () Bool)

(declare-fun e!799340 () Bool)

(assert (=> b!1412446 (= e!799335 e!799340)))

(declare-fun res!949539 () Bool)

(assert (=> b!1412446 (=> res!949539 e!799340)))

(declare-fun lt!622335 () SeekEntryResult!10911)

(declare-fun lt!622337 () SeekEntryResult!10911)

(assert (=> b!1412446 (= res!949539 (or (= lt!622335 lt!622337) (not (is-Intermediate!10911 lt!622337))))))

(declare-fun lt!622334 () array!96490)

(declare-fun lt!622336 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96490 (_ BitVec 32)) SeekEntryResult!10911)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412446 (= lt!622337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622336 mask!2840) lt!622336 lt!622334 mask!2840))))

(assert (=> b!1412446 (= lt!622336 (select (store (arr!46578 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412446 (= lt!622334 (array!96491 (store (arr!46578 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47129 a!2901)))))

(declare-fun res!949543 () Bool)

(assert (=> start!121634 (=> (not res!949543) (not e!799338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121634 (= res!949543 (validMask!0 mask!2840))))

(assert (=> start!121634 e!799338))

(assert (=> start!121634 true))

(declare-fun array_inv!35523 (array!96490) Bool)

(assert (=> start!121634 (array_inv!35523 a!2901)))

(declare-fun b!1412447 () Bool)

(assert (=> b!1412447 (= e!799340 true)))

(declare-fun e!799339 () Bool)

(assert (=> b!1412447 e!799339))

(declare-fun res!949544 () Bool)

(assert (=> b!1412447 (=> (not res!949544) (not e!799339))))

(assert (=> b!1412447 (= res!949544 (and (not (undefined!11723 lt!622337)) (= (index!46025 lt!622337) i!1037) (bvslt (x!127617 lt!622337) (x!127617 lt!622335)) (= (select (store (arr!46578 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46025 lt!622337)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47746 0))(
  ( (Unit!47747) )
))
(declare-fun lt!622338 () Unit!47746)

(declare-fun lt!622339 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47746)

(assert (=> b!1412447 (= lt!622338 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622339 (x!127617 lt!622335) (index!46025 lt!622335) (x!127617 lt!622337) (index!46025 lt!622337) (undefined!11723 lt!622337) mask!2840))))

(declare-fun b!1412448 () Bool)

(assert (=> b!1412448 (= e!799338 (not e!799335))))

(declare-fun res!949545 () Bool)

(assert (=> b!1412448 (=> res!949545 e!799335)))

(assert (=> b!1412448 (= res!949545 (or (not (is-Intermediate!10911 lt!622335)) (undefined!11723 lt!622335)))))

(assert (=> b!1412448 e!799336))

(declare-fun res!949542 () Bool)

(assert (=> b!1412448 (=> (not res!949542) (not e!799336))))

(assert (=> b!1412448 (= res!949542 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622333 () Unit!47746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47746)

(assert (=> b!1412448 (= lt!622333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412448 (= lt!622335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622339 (select (arr!46578 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412448 (= lt!622339 (toIndex!0 (select (arr!46578 a!2901) j!112) mask!2840))))

(declare-fun b!1412449 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96490 (_ BitVec 32)) SeekEntryResult!10911)

(assert (=> b!1412449 (= e!799339 (= (seekEntryOrOpen!0 lt!622336 lt!622334 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127617 lt!622337) (index!46025 lt!622337) (index!46025 lt!622337) (select (arr!46578 a!2901) j!112) lt!622334 mask!2840)))))

(assert (= (and start!121634 res!949543) b!1412445))

(assert (= (and b!1412445 res!949540) b!1412441))

(assert (= (and b!1412441 res!949548) b!1412440))

(assert (= (and b!1412440 res!949547) b!1412442))

(assert (= (and b!1412442 res!949546) b!1412443))

(assert (= (and b!1412443 res!949541) b!1412448))

(assert (= (and b!1412448 res!949542) b!1412444))

(assert (= (and b!1412448 (not res!949545)) b!1412446))

(assert (= (and b!1412446 (not res!949539)) b!1412447))

(assert (= (and b!1412447 res!949544) b!1412449))

(declare-fun m!1302557 () Bool)

(assert (=> start!121634 m!1302557))

(declare-fun m!1302559 () Bool)

(assert (=> start!121634 m!1302559))

(declare-fun m!1302561 () Bool)

(assert (=> b!1412447 m!1302561))

(declare-fun m!1302563 () Bool)

(assert (=> b!1412447 m!1302563))

(declare-fun m!1302565 () Bool)

(assert (=> b!1412447 m!1302565))

(declare-fun m!1302567 () Bool)

(assert (=> b!1412448 m!1302567))

(declare-fun m!1302569 () Bool)

(assert (=> b!1412448 m!1302569))

(assert (=> b!1412448 m!1302567))

(assert (=> b!1412448 m!1302567))

(declare-fun m!1302571 () Bool)

(assert (=> b!1412448 m!1302571))

(declare-fun m!1302573 () Bool)

(assert (=> b!1412448 m!1302573))

(declare-fun m!1302575 () Bool)

(assert (=> b!1412448 m!1302575))

(assert (=> b!1412440 m!1302567))

(assert (=> b!1412440 m!1302567))

(declare-fun m!1302577 () Bool)

(assert (=> b!1412440 m!1302577))

(declare-fun m!1302579 () Bool)

(assert (=> b!1412443 m!1302579))

(declare-fun m!1302581 () Bool)

(assert (=> b!1412449 m!1302581))

(assert (=> b!1412449 m!1302567))

(assert (=> b!1412449 m!1302567))

(declare-fun m!1302583 () Bool)

(assert (=> b!1412449 m!1302583))

(declare-fun m!1302585 () Bool)

(assert (=> b!1412442 m!1302585))

(declare-fun m!1302587 () Bool)

(assert (=> b!1412441 m!1302587))

(assert (=> b!1412441 m!1302587))

(declare-fun m!1302589 () Bool)

(assert (=> b!1412441 m!1302589))

(assert (=> b!1412444 m!1302567))

(assert (=> b!1412444 m!1302567))

(declare-fun m!1302591 () Bool)

(assert (=> b!1412444 m!1302591))

(declare-fun m!1302593 () Bool)

(assert (=> b!1412446 m!1302593))

(assert (=> b!1412446 m!1302593))

(declare-fun m!1302595 () Bool)

(assert (=> b!1412446 m!1302595))

(assert (=> b!1412446 m!1302561))

(declare-fun m!1302597 () Bool)

(assert (=> b!1412446 m!1302597))

(push 1)

