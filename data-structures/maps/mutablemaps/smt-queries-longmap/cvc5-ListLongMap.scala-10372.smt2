; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122140 () Bool)

(assert start!122140)

(declare-fun res!952785 () Bool)

(declare-fun e!801890 () Bool)

(assert (=> start!122140 (=> (not res!952785) (not e!801890))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122140 (= res!952785 (validMask!0 mask!2840))))

(assert (=> start!122140 e!801890))

(assert (=> start!122140 true))

(declare-datatypes ((array!96693 0))(
  ( (array!96694 (arr!46672 (Array (_ BitVec 32) (_ BitVec 64))) (size!47223 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96693)

(declare-fun array_inv!35617 (array!96693) Bool)

(assert (=> start!122140 (array_inv!35617 a!2901)))

(declare-fun e!801893 () Bool)

(declare-fun b!1416792 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11005 0))(
  ( (MissingZero!11005 (index!46411 (_ BitVec 32))) (Found!11005 (index!46412 (_ BitVec 32))) (Intermediate!11005 (undefined!11817 Bool) (index!46413 (_ BitVec 32)) (x!128021 (_ BitVec 32))) (Undefined!11005) (MissingVacant!11005 (index!46414 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96693 (_ BitVec 32)) SeekEntryResult!11005)

(assert (=> b!1416792 (= e!801893 (= (seekEntryOrOpen!0 (select (arr!46672 a!2901) j!112) a!2901 mask!2840) (Found!11005 j!112)))))

(declare-fun b!1416793 () Bool)

(declare-fun e!801891 () Bool)

(assert (=> b!1416793 (= e!801890 (not e!801891))))

(declare-fun res!952781 () Bool)

(assert (=> b!1416793 (=> res!952781 e!801891)))

(declare-fun lt!625090 () SeekEntryResult!11005)

(assert (=> b!1416793 (= res!952781 (or (not (is-Intermediate!11005 lt!625090)) (undefined!11817 lt!625090)))))

(assert (=> b!1416793 e!801893))

(declare-fun res!952779 () Bool)

(assert (=> b!1416793 (=> (not res!952779) (not e!801893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96693 (_ BitVec 32)) Bool)

(assert (=> b!1416793 (= res!952779 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47934 0))(
  ( (Unit!47935) )
))
(declare-fun lt!625089 () Unit!47934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47934)

(assert (=> b!1416793 (= lt!625089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96693 (_ BitVec 32)) SeekEntryResult!11005)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416793 (= lt!625090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46672 a!2901) j!112) mask!2840) (select (arr!46672 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416794 () Bool)

(declare-fun res!952780 () Bool)

(assert (=> b!1416794 (=> (not res!952780) (not e!801890))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416794 (= res!952780 (validKeyInArray!0 (select (arr!46672 a!2901) i!1037)))))

(declare-fun b!1416795 () Bool)

(declare-fun res!952778 () Bool)

(assert (=> b!1416795 (=> (not res!952778) (not e!801890))))

(declare-datatypes ((List!33371 0))(
  ( (Nil!33368) (Cons!33367 (h!34657 (_ BitVec 64)) (t!48072 List!33371)) )
))
(declare-fun arrayNoDuplicates!0 (array!96693 (_ BitVec 32) List!33371) Bool)

(assert (=> b!1416795 (= res!952778 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33368))))

(declare-fun b!1416796 () Bool)

(declare-fun res!952784 () Bool)

(assert (=> b!1416796 (=> (not res!952784) (not e!801890))))

(assert (=> b!1416796 (= res!952784 (validKeyInArray!0 (select (arr!46672 a!2901) j!112)))))

(declare-fun b!1416797 () Bool)

(declare-fun res!952782 () Bool)

(assert (=> b!1416797 (=> (not res!952782) (not e!801890))))

(assert (=> b!1416797 (= res!952782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416798 () Bool)

(declare-fun res!952783 () Bool)

(assert (=> b!1416798 (=> (not res!952783) (not e!801890))))

(assert (=> b!1416798 (= res!952783 (and (= (size!47223 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47223 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47223 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416799 () Bool)

(assert (=> b!1416799 (= e!801891 true)))

(declare-fun lt!625088 () SeekEntryResult!11005)

(assert (=> b!1416799 (= lt!625088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46672 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46672 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96694 (store (arr!46672 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47223 a!2901)) mask!2840))))

(assert (= (and start!122140 res!952785) b!1416798))

(assert (= (and b!1416798 res!952783) b!1416794))

(assert (= (and b!1416794 res!952780) b!1416796))

(assert (= (and b!1416796 res!952784) b!1416797))

(assert (= (and b!1416797 res!952782) b!1416795))

(assert (= (and b!1416795 res!952778) b!1416793))

(assert (= (and b!1416793 res!952779) b!1416792))

(assert (= (and b!1416793 (not res!952781)) b!1416799))

(declare-fun m!1307549 () Bool)

(assert (=> b!1416792 m!1307549))

(assert (=> b!1416792 m!1307549))

(declare-fun m!1307551 () Bool)

(assert (=> b!1416792 m!1307551))

(assert (=> b!1416793 m!1307549))

(declare-fun m!1307553 () Bool)

(assert (=> b!1416793 m!1307553))

(assert (=> b!1416793 m!1307549))

(declare-fun m!1307555 () Bool)

(assert (=> b!1416793 m!1307555))

(assert (=> b!1416793 m!1307553))

(assert (=> b!1416793 m!1307549))

(declare-fun m!1307557 () Bool)

(assert (=> b!1416793 m!1307557))

(declare-fun m!1307559 () Bool)

(assert (=> b!1416793 m!1307559))

(declare-fun m!1307561 () Bool)

(assert (=> start!122140 m!1307561))

(declare-fun m!1307563 () Bool)

(assert (=> start!122140 m!1307563))

(declare-fun m!1307565 () Bool)

(assert (=> b!1416799 m!1307565))

(declare-fun m!1307567 () Bool)

(assert (=> b!1416799 m!1307567))

(assert (=> b!1416799 m!1307567))

(declare-fun m!1307569 () Bool)

(assert (=> b!1416799 m!1307569))

(assert (=> b!1416799 m!1307569))

(assert (=> b!1416799 m!1307567))

(declare-fun m!1307571 () Bool)

(assert (=> b!1416799 m!1307571))

(declare-fun m!1307573 () Bool)

(assert (=> b!1416794 m!1307573))

(assert (=> b!1416794 m!1307573))

(declare-fun m!1307575 () Bool)

(assert (=> b!1416794 m!1307575))

(declare-fun m!1307577 () Bool)

(assert (=> b!1416795 m!1307577))

(declare-fun m!1307579 () Bool)

(assert (=> b!1416797 m!1307579))

(assert (=> b!1416796 m!1307549))

(assert (=> b!1416796 m!1307549))

(declare-fun m!1307581 () Bool)

(assert (=> b!1416796 m!1307581))

(push 1)

(assert (not b!1416796))

(assert (not b!1416799))

(assert (not start!122140))

(assert (not b!1416794))

(assert (not b!1416793))

(assert (not b!1416795))

(assert (not b!1416792))

(assert (not b!1416797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

