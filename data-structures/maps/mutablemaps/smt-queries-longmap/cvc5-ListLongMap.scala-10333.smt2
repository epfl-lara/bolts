; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121522 () Bool)

(assert start!121522)

(declare-fun b!1411466 () Bool)

(declare-fun res!948810 () Bool)

(declare-fun e!798769 () Bool)

(assert (=> b!1411466 (=> (not res!948810) (not e!798769))))

(declare-datatypes ((array!96441 0))(
  ( (array!96442 (arr!46555 (Array (_ BitVec 32) (_ BitVec 64))) (size!47106 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96441)

(declare-datatypes ((List!33254 0))(
  ( (Nil!33251) (Cons!33250 (h!34522 (_ BitVec 64)) (t!47955 List!33254)) )
))
(declare-fun arrayNoDuplicates!0 (array!96441 (_ BitVec 32) List!33254) Bool)

(assert (=> b!1411466 (= res!948810 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33251))))

(declare-fun b!1411467 () Bool)

(declare-fun res!948807 () Bool)

(assert (=> b!1411467 (=> (not res!948807) (not e!798769))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411467 (= res!948807 (and (= (size!47106 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47106 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47106 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411469 () Bool)

(declare-fun e!798770 () Bool)

(assert (=> b!1411469 (= e!798770 true)))

(declare-datatypes ((SeekEntryResult!10888 0))(
  ( (MissingZero!10888 (index!45928 (_ BitVec 32))) (Found!10888 (index!45929 (_ BitVec 32))) (Intermediate!10888 (undefined!11700 Bool) (index!45930 (_ BitVec 32)) (x!127526 (_ BitVec 32))) (Undefined!10888) (MissingVacant!10888 (index!45931 (_ BitVec 32))) )
))
(declare-fun lt!621728 () SeekEntryResult!10888)

(declare-fun lt!621729 () SeekEntryResult!10888)

(assert (=> b!1411469 (and (not (undefined!11700 lt!621729)) (= (index!45930 lt!621729) i!1037) (bvslt (x!127526 lt!621729) (x!127526 lt!621728)) (= (select (store (arr!46555 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45930 lt!621729)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621733 () (_ BitVec 32))

(declare-datatypes ((Unit!47700 0))(
  ( (Unit!47701) )
))
(declare-fun lt!621732 () Unit!47700)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96441 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47700)

(assert (=> b!1411469 (= lt!621732 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621733 (x!127526 lt!621728) (index!45930 lt!621728) (x!127526 lt!621729) (index!45930 lt!621729) (undefined!11700 lt!621729) mask!2840))))

(declare-fun b!1411470 () Bool)

(declare-fun res!948802 () Bool)

(assert (=> b!1411470 (=> (not res!948802) (not e!798769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411470 (= res!948802 (validKeyInArray!0 (select (arr!46555 a!2901) i!1037)))))

(declare-fun b!1411471 () Bool)

(declare-fun e!798772 () Bool)

(assert (=> b!1411471 (= e!798769 (not e!798772))))

(declare-fun res!948808 () Bool)

(assert (=> b!1411471 (=> res!948808 e!798772)))

(assert (=> b!1411471 (= res!948808 (or (not (is-Intermediate!10888 lt!621728)) (undefined!11700 lt!621728)))))

(declare-fun e!798773 () Bool)

(assert (=> b!1411471 e!798773))

(declare-fun res!948809 () Bool)

(assert (=> b!1411471 (=> (not res!948809) (not e!798773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96441 (_ BitVec 32)) Bool)

(assert (=> b!1411471 (= res!948809 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621730 () Unit!47700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96441 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47700)

(assert (=> b!1411471 (= lt!621730 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96441 (_ BitVec 32)) SeekEntryResult!10888)

(assert (=> b!1411471 (= lt!621728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621733 (select (arr!46555 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411471 (= lt!621733 (toIndex!0 (select (arr!46555 a!2901) j!112) mask!2840))))

(declare-fun b!1411472 () Bool)

(assert (=> b!1411472 (= e!798772 e!798770)))

(declare-fun res!948805 () Bool)

(assert (=> b!1411472 (=> res!948805 e!798770)))

(assert (=> b!1411472 (= res!948805 (or (= lt!621728 lt!621729) (not (is-Intermediate!10888 lt!621729))))))

(declare-fun lt!621731 () (_ BitVec 64))

(assert (=> b!1411472 (= lt!621729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621731 mask!2840) lt!621731 (array!96442 (store (arr!46555 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47106 a!2901)) mask!2840))))

(assert (=> b!1411472 (= lt!621731 (select (store (arr!46555 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411473 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96441 (_ BitVec 32)) SeekEntryResult!10888)

(assert (=> b!1411473 (= e!798773 (= (seekEntryOrOpen!0 (select (arr!46555 a!2901) j!112) a!2901 mask!2840) (Found!10888 j!112)))))

(declare-fun b!1411474 () Bool)

(declare-fun res!948806 () Bool)

(assert (=> b!1411474 (=> (not res!948806) (not e!798769))))

(assert (=> b!1411474 (= res!948806 (validKeyInArray!0 (select (arr!46555 a!2901) j!112)))))

(declare-fun b!1411468 () Bool)

(declare-fun res!948803 () Bool)

(assert (=> b!1411468 (=> (not res!948803) (not e!798769))))

(assert (=> b!1411468 (= res!948803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948804 () Bool)

(assert (=> start!121522 (=> (not res!948804) (not e!798769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121522 (= res!948804 (validMask!0 mask!2840))))

(assert (=> start!121522 e!798769))

(assert (=> start!121522 true))

(declare-fun array_inv!35500 (array!96441) Bool)

(assert (=> start!121522 (array_inv!35500 a!2901)))

(assert (= (and start!121522 res!948804) b!1411467))

(assert (= (and b!1411467 res!948807) b!1411470))

(assert (= (and b!1411470 res!948802) b!1411474))

(assert (= (and b!1411474 res!948806) b!1411468))

(assert (= (and b!1411468 res!948803) b!1411466))

(assert (= (and b!1411466 res!948810) b!1411471))

(assert (= (and b!1411471 res!948809) b!1411473))

(assert (= (and b!1411471 (not res!948808)) b!1411472))

(assert (= (and b!1411472 (not res!948805)) b!1411469))

(declare-fun m!1301417 () Bool)

(assert (=> b!1411473 m!1301417))

(assert (=> b!1411473 m!1301417))

(declare-fun m!1301419 () Bool)

(assert (=> b!1411473 m!1301419))

(declare-fun m!1301421 () Bool)

(assert (=> b!1411468 m!1301421))

(declare-fun m!1301423 () Bool)

(assert (=> start!121522 m!1301423))

(declare-fun m!1301425 () Bool)

(assert (=> start!121522 m!1301425))

(assert (=> b!1411471 m!1301417))

(declare-fun m!1301427 () Bool)

(assert (=> b!1411471 m!1301427))

(assert (=> b!1411471 m!1301417))

(declare-fun m!1301429 () Bool)

(assert (=> b!1411471 m!1301429))

(assert (=> b!1411471 m!1301417))

(declare-fun m!1301431 () Bool)

(assert (=> b!1411471 m!1301431))

(declare-fun m!1301433 () Bool)

(assert (=> b!1411471 m!1301433))

(declare-fun m!1301435 () Bool)

(assert (=> b!1411469 m!1301435))

(declare-fun m!1301437 () Bool)

(assert (=> b!1411469 m!1301437))

(declare-fun m!1301439 () Bool)

(assert (=> b!1411469 m!1301439))

(declare-fun m!1301441 () Bool)

(assert (=> b!1411470 m!1301441))

(assert (=> b!1411470 m!1301441))

(declare-fun m!1301443 () Bool)

(assert (=> b!1411470 m!1301443))

(declare-fun m!1301445 () Bool)

(assert (=> b!1411466 m!1301445))

(assert (=> b!1411474 m!1301417))

(assert (=> b!1411474 m!1301417))

(declare-fun m!1301447 () Bool)

(assert (=> b!1411474 m!1301447))

(declare-fun m!1301449 () Bool)

(assert (=> b!1411472 m!1301449))

(assert (=> b!1411472 m!1301435))

(assert (=> b!1411472 m!1301449))

(declare-fun m!1301451 () Bool)

(assert (=> b!1411472 m!1301451))

(declare-fun m!1301453 () Bool)

(assert (=> b!1411472 m!1301453))

(push 1)

