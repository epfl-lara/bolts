; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121222 () Bool)

(assert start!121222)

(declare-fun b!1408944 () Bool)

(declare-fun res!946775 () Bool)

(declare-fun e!797373 () Bool)

(assert (=> b!1408944 (=> (not res!946775) (not e!797373))))

(declare-datatypes ((array!96294 0))(
  ( (array!96295 (arr!46486 (Array (_ BitVec 32) (_ BitVec 64))) (size!47037 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96294)

(declare-datatypes ((List!33185 0))(
  ( (Nil!33182) (Cons!33181 (h!34444 (_ BitVec 64)) (t!47886 List!33185)) )
))
(declare-fun arrayNoDuplicates!0 (array!96294 (_ BitVec 32) List!33185) Bool)

(assert (=> b!1408944 (= res!946775 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33182))))

(declare-fun b!1408945 () Bool)

(declare-fun res!946776 () Bool)

(assert (=> b!1408945 (=> (not res!946776) (not e!797373))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96294 (_ BitVec 32)) Bool)

(assert (=> b!1408945 (= res!946776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408946 () Bool)

(declare-fun res!946782 () Bool)

(assert (=> b!1408946 (=> (not res!946782) (not e!797373))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408946 (= res!946782 (validKeyInArray!0 (select (arr!46486 a!2901) i!1037)))))

(declare-fun b!1408947 () Bool)

(declare-fun res!946778 () Bool)

(assert (=> b!1408947 (=> (not res!946778) (not e!797373))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408947 (= res!946778 (validKeyInArray!0 (select (arr!46486 a!2901) j!112)))))

(declare-fun b!1408948 () Bool)

(declare-fun res!946777 () Bool)

(assert (=> b!1408948 (=> (not res!946777) (not e!797373))))

(assert (=> b!1408948 (= res!946777 (and (= (size!47037 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47037 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47037 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408949 () Bool)

(declare-fun e!797374 () Bool)

(assert (=> b!1408949 (= e!797373 (not e!797374))))

(declare-fun res!946779 () Bool)

(assert (=> b!1408949 (=> res!946779 e!797374)))

(declare-datatypes ((SeekEntryResult!10819 0))(
  ( (MissingZero!10819 (index!45652 (_ BitVec 32))) (Found!10819 (index!45653 (_ BitVec 32))) (Intermediate!10819 (undefined!11631 Bool) (index!45654 (_ BitVec 32)) (x!127255 (_ BitVec 32))) (Undefined!10819) (MissingVacant!10819 (index!45655 (_ BitVec 32))) )
))
(declare-fun lt!620509 () SeekEntryResult!10819)

(assert (=> b!1408949 (= res!946779 (or (not (is-Intermediate!10819 lt!620509)) (undefined!11631 lt!620509)))))

(declare-fun e!797375 () Bool)

(assert (=> b!1408949 e!797375))

(declare-fun res!946780 () Bool)

(assert (=> b!1408949 (=> (not res!946780) (not e!797375))))

(assert (=> b!1408949 (= res!946780 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47562 0))(
  ( (Unit!47563) )
))
(declare-fun lt!620507 () Unit!47562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47562)

(assert (=> b!1408949 (= lt!620507 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96294 (_ BitVec 32)) SeekEntryResult!10819)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408949 (= lt!620509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46486 a!2901) j!112) mask!2840) (select (arr!46486 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408950 () Bool)

(assert (=> b!1408950 (= e!797374 true)))

(declare-fun lt!620508 () SeekEntryResult!10819)

(assert (=> b!1408950 (= lt!620508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46486 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46486 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96295 (store (arr!46486 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47037 a!2901)) mask!2840))))

(declare-fun b!1408951 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96294 (_ BitVec 32)) SeekEntryResult!10819)

(assert (=> b!1408951 (= e!797375 (= (seekEntryOrOpen!0 (select (arr!46486 a!2901) j!112) a!2901 mask!2840) (Found!10819 j!112)))))

(declare-fun res!946781 () Bool)

(assert (=> start!121222 (=> (not res!946781) (not e!797373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121222 (= res!946781 (validMask!0 mask!2840))))

(assert (=> start!121222 e!797373))

(assert (=> start!121222 true))

(declare-fun array_inv!35431 (array!96294) Bool)

(assert (=> start!121222 (array_inv!35431 a!2901)))

(assert (= (and start!121222 res!946781) b!1408948))

(assert (= (and b!1408948 res!946777) b!1408946))

(assert (= (and b!1408946 res!946782) b!1408947))

(assert (= (and b!1408947 res!946778) b!1408945))

(assert (= (and b!1408945 res!946776) b!1408944))

(assert (= (and b!1408944 res!946775) b!1408949))

(assert (= (and b!1408949 res!946780) b!1408951))

(assert (= (and b!1408949 (not res!946779)) b!1408950))

(declare-fun m!1298549 () Bool)

(assert (=> b!1408950 m!1298549))

(declare-fun m!1298551 () Bool)

(assert (=> b!1408950 m!1298551))

(assert (=> b!1408950 m!1298551))

(declare-fun m!1298553 () Bool)

(assert (=> b!1408950 m!1298553))

(assert (=> b!1408950 m!1298553))

(assert (=> b!1408950 m!1298551))

(declare-fun m!1298555 () Bool)

(assert (=> b!1408950 m!1298555))

(declare-fun m!1298557 () Bool)

(assert (=> b!1408951 m!1298557))

(assert (=> b!1408951 m!1298557))

(declare-fun m!1298559 () Bool)

(assert (=> b!1408951 m!1298559))

(declare-fun m!1298561 () Bool)

(assert (=> b!1408944 m!1298561))

(declare-fun m!1298563 () Bool)

(assert (=> start!121222 m!1298563))

(declare-fun m!1298565 () Bool)

(assert (=> start!121222 m!1298565))

(declare-fun m!1298567 () Bool)

(assert (=> b!1408945 m!1298567))

(assert (=> b!1408949 m!1298557))

(declare-fun m!1298569 () Bool)

(assert (=> b!1408949 m!1298569))

(assert (=> b!1408949 m!1298557))

(declare-fun m!1298571 () Bool)

(assert (=> b!1408949 m!1298571))

(assert (=> b!1408949 m!1298569))

(assert (=> b!1408949 m!1298557))

(declare-fun m!1298573 () Bool)

(assert (=> b!1408949 m!1298573))

(declare-fun m!1298575 () Bool)

(assert (=> b!1408949 m!1298575))

(declare-fun m!1298577 () Bool)

(assert (=> b!1408946 m!1298577))

(assert (=> b!1408946 m!1298577))

(declare-fun m!1298579 () Bool)

(assert (=> b!1408946 m!1298579))

(assert (=> b!1408947 m!1298557))

(assert (=> b!1408947 m!1298557))

(declare-fun m!1298581 () Bool)

(assert (=> b!1408947 m!1298581))

(push 1)

(assert (not b!1408946))

(assert (not start!121222))

(assert (not b!1408945))

(assert (not b!1408951))

(assert (not b!1408950))

(assert (not b!1408947))

(assert (not b!1408949))

(assert (not b!1408944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

