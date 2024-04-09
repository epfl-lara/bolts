; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122128 () Bool)

(assert start!122128)

(declare-fun b!1416648 () Bool)

(declare-fun e!801819 () Bool)

(assert (=> b!1416648 (= e!801819 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96681 0))(
  ( (array!96682 (arr!46666 (Array (_ BitVec 32) (_ BitVec 64))) (size!47217 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96681)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10999 0))(
  ( (MissingZero!10999 (index!46387 (_ BitVec 32))) (Found!10999 (index!46388 (_ BitVec 32))) (Intermediate!10999 (undefined!11811 Bool) (index!46389 (_ BitVec 32)) (x!127999 (_ BitVec 32))) (Undefined!10999) (MissingVacant!10999 (index!46390 (_ BitVec 32))) )
))
(declare-fun lt!625034 () SeekEntryResult!10999)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96681 (_ BitVec 32)) SeekEntryResult!10999)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416648 (= lt!625034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46666 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46666 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96682 (store (arr!46666 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47217 a!2901)) mask!2840))))

(declare-fun b!1416649 () Bool)

(declare-fun e!801821 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96681 (_ BitVec 32)) SeekEntryResult!10999)

(assert (=> b!1416649 (= e!801821 (= (seekEntryOrOpen!0 (select (arr!46666 a!2901) j!112) a!2901 mask!2840) (Found!10999 j!112)))))

(declare-fun b!1416650 () Bool)

(declare-fun res!952636 () Bool)

(declare-fun e!801820 () Bool)

(assert (=> b!1416650 (=> (not res!952636) (not e!801820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416650 (= res!952636 (validKeyInArray!0 (select (arr!46666 a!2901) j!112)))))

(declare-fun b!1416651 () Bool)

(declare-fun res!952634 () Bool)

(assert (=> b!1416651 (=> (not res!952634) (not e!801820))))

(assert (=> b!1416651 (= res!952634 (and (= (size!47217 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47217 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47217 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952637 () Bool)

(assert (=> start!122128 (=> (not res!952637) (not e!801820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122128 (= res!952637 (validMask!0 mask!2840))))

(assert (=> start!122128 e!801820))

(assert (=> start!122128 true))

(declare-fun array_inv!35611 (array!96681) Bool)

(assert (=> start!122128 (array_inv!35611 a!2901)))

(declare-fun b!1416652 () Bool)

(declare-fun res!952640 () Bool)

(assert (=> b!1416652 (=> (not res!952640) (not e!801820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96681 (_ BitVec 32)) Bool)

(assert (=> b!1416652 (= res!952640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416653 () Bool)

(declare-fun res!952641 () Bool)

(assert (=> b!1416653 (=> (not res!952641) (not e!801820))))

(declare-datatypes ((List!33365 0))(
  ( (Nil!33362) (Cons!33361 (h!34651 (_ BitVec 64)) (t!48066 List!33365)) )
))
(declare-fun arrayNoDuplicates!0 (array!96681 (_ BitVec 32) List!33365) Bool)

(assert (=> b!1416653 (= res!952641 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33362))))

(declare-fun b!1416654 () Bool)

(assert (=> b!1416654 (= e!801820 (not e!801819))))

(declare-fun res!952639 () Bool)

(assert (=> b!1416654 (=> res!952639 e!801819)))

(declare-fun lt!625036 () SeekEntryResult!10999)

(assert (=> b!1416654 (= res!952639 (or (not (is-Intermediate!10999 lt!625036)) (undefined!11811 lt!625036)))))

(assert (=> b!1416654 e!801821))

(declare-fun res!952638 () Bool)

(assert (=> b!1416654 (=> (not res!952638) (not e!801821))))

(assert (=> b!1416654 (= res!952638 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47922 0))(
  ( (Unit!47923) )
))
(declare-fun lt!625035 () Unit!47922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47922)

(assert (=> b!1416654 (= lt!625035 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416654 (= lt!625036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46666 a!2901) j!112) mask!2840) (select (arr!46666 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416655 () Bool)

(declare-fun res!952635 () Bool)

(assert (=> b!1416655 (=> (not res!952635) (not e!801820))))

(assert (=> b!1416655 (= res!952635 (validKeyInArray!0 (select (arr!46666 a!2901) i!1037)))))

(assert (= (and start!122128 res!952637) b!1416651))

(assert (= (and b!1416651 res!952634) b!1416655))

(assert (= (and b!1416655 res!952635) b!1416650))

(assert (= (and b!1416650 res!952636) b!1416652))

(assert (= (and b!1416652 res!952640) b!1416653))

(assert (= (and b!1416653 res!952641) b!1416654))

(assert (= (and b!1416654 res!952638) b!1416649))

(assert (= (and b!1416654 (not res!952639)) b!1416648))

(declare-fun m!1307345 () Bool)

(assert (=> start!122128 m!1307345))

(declare-fun m!1307347 () Bool)

(assert (=> start!122128 m!1307347))

(declare-fun m!1307349 () Bool)

(assert (=> b!1416654 m!1307349))

(declare-fun m!1307351 () Bool)

(assert (=> b!1416654 m!1307351))

(assert (=> b!1416654 m!1307349))

(declare-fun m!1307353 () Bool)

(assert (=> b!1416654 m!1307353))

(assert (=> b!1416654 m!1307351))

(assert (=> b!1416654 m!1307349))

(declare-fun m!1307355 () Bool)

(assert (=> b!1416654 m!1307355))

(declare-fun m!1307357 () Bool)

(assert (=> b!1416654 m!1307357))

(declare-fun m!1307359 () Bool)

(assert (=> b!1416655 m!1307359))

(assert (=> b!1416655 m!1307359))

(declare-fun m!1307361 () Bool)

(assert (=> b!1416655 m!1307361))

(declare-fun m!1307363 () Bool)

(assert (=> b!1416652 m!1307363))

(assert (=> b!1416649 m!1307349))

(assert (=> b!1416649 m!1307349))

(declare-fun m!1307365 () Bool)

(assert (=> b!1416649 m!1307365))

(declare-fun m!1307367 () Bool)

(assert (=> b!1416653 m!1307367))

(assert (=> b!1416650 m!1307349))

(assert (=> b!1416650 m!1307349))

(declare-fun m!1307369 () Bool)

(assert (=> b!1416650 m!1307369))

(declare-fun m!1307371 () Bool)

(assert (=> b!1416648 m!1307371))

(declare-fun m!1307373 () Bool)

(assert (=> b!1416648 m!1307373))

(assert (=> b!1416648 m!1307373))

(declare-fun m!1307375 () Bool)

(assert (=> b!1416648 m!1307375))

(assert (=> b!1416648 m!1307375))

(assert (=> b!1416648 m!1307373))

(declare-fun m!1307377 () Bool)

(assert (=> b!1416648 m!1307377))

(push 1)

(assert (not start!122128))

(assert (not b!1416649))

(assert (not b!1416653))

(assert (not b!1416655))

(assert (not b!1416654))

(assert (not b!1416652))

(assert (not b!1416648))

(assert (not b!1416650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

