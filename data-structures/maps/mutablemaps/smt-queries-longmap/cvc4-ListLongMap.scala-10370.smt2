; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122132 () Bool)

(assert start!122132)

(declare-fun b!1416696 () Bool)

(declare-fun e!801843 () Bool)

(declare-fun e!801845 () Bool)

(assert (=> b!1416696 (= e!801843 (not e!801845))))

(declare-fun res!952686 () Bool)

(assert (=> b!1416696 (=> res!952686 e!801845)))

(declare-datatypes ((SeekEntryResult!11001 0))(
  ( (MissingZero!11001 (index!46395 (_ BitVec 32))) (Found!11001 (index!46396 (_ BitVec 32))) (Intermediate!11001 (undefined!11813 Bool) (index!46397 (_ BitVec 32)) (x!128001 (_ BitVec 32))) (Undefined!11001) (MissingVacant!11001 (index!46398 (_ BitVec 32))) )
))
(declare-fun lt!625052 () SeekEntryResult!11001)

(assert (=> b!1416696 (= res!952686 (or (not (is-Intermediate!11001 lt!625052)) (undefined!11813 lt!625052)))))

(declare-fun e!801844 () Bool)

(assert (=> b!1416696 e!801844))

(declare-fun res!952684 () Bool)

(assert (=> b!1416696 (=> (not res!952684) (not e!801844))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96685 0))(
  ( (array!96686 (arr!46668 (Array (_ BitVec 32) (_ BitVec 64))) (size!47219 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96685)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96685 (_ BitVec 32)) Bool)

(assert (=> b!1416696 (= res!952684 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47926 0))(
  ( (Unit!47927) )
))
(declare-fun lt!625054 () Unit!47926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47926)

(assert (=> b!1416696 (= lt!625054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96685 (_ BitVec 32)) SeekEntryResult!11001)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416696 (= lt!625052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46668 a!2901) j!112) mask!2840) (select (arr!46668 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416697 () Bool)

(declare-fun res!952689 () Bool)

(assert (=> b!1416697 (=> (not res!952689) (not e!801843))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416697 (= res!952689 (validKeyInArray!0 (select (arr!46668 a!2901) i!1037)))))

(declare-fun b!1416698 () Bool)

(declare-fun res!952683 () Bool)

(assert (=> b!1416698 (=> (not res!952683) (not e!801843))))

(assert (=> b!1416698 (= res!952683 (validKeyInArray!0 (select (arr!46668 a!2901) j!112)))))

(declare-fun b!1416699 () Bool)

(declare-fun res!952687 () Bool)

(assert (=> b!1416699 (=> (not res!952687) (not e!801843))))

(assert (=> b!1416699 (= res!952687 (and (= (size!47219 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47219 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47219 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952688 () Bool)

(assert (=> start!122132 (=> (not res!952688) (not e!801843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122132 (= res!952688 (validMask!0 mask!2840))))

(assert (=> start!122132 e!801843))

(assert (=> start!122132 true))

(declare-fun array_inv!35613 (array!96685) Bool)

(assert (=> start!122132 (array_inv!35613 a!2901)))

(declare-fun b!1416700 () Bool)

(assert (=> b!1416700 (= e!801845 true)))

(declare-fun lt!625053 () SeekEntryResult!11001)

(assert (=> b!1416700 (= lt!625053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46668 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46668 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96686 (store (arr!46668 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47219 a!2901)) mask!2840))))

(declare-fun b!1416701 () Bool)

(declare-fun res!952685 () Bool)

(assert (=> b!1416701 (=> (not res!952685) (not e!801843))))

(assert (=> b!1416701 (= res!952685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416702 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96685 (_ BitVec 32)) SeekEntryResult!11001)

(assert (=> b!1416702 (= e!801844 (= (seekEntryOrOpen!0 (select (arr!46668 a!2901) j!112) a!2901 mask!2840) (Found!11001 j!112)))))

(declare-fun b!1416703 () Bool)

(declare-fun res!952682 () Bool)

(assert (=> b!1416703 (=> (not res!952682) (not e!801843))))

(declare-datatypes ((List!33367 0))(
  ( (Nil!33364) (Cons!33363 (h!34653 (_ BitVec 64)) (t!48068 List!33367)) )
))
(declare-fun arrayNoDuplicates!0 (array!96685 (_ BitVec 32) List!33367) Bool)

(assert (=> b!1416703 (= res!952682 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33364))))

(assert (= (and start!122132 res!952688) b!1416699))

(assert (= (and b!1416699 res!952687) b!1416697))

(assert (= (and b!1416697 res!952689) b!1416698))

(assert (= (and b!1416698 res!952683) b!1416701))

(assert (= (and b!1416701 res!952685) b!1416703))

(assert (= (and b!1416703 res!952682) b!1416696))

(assert (= (and b!1416696 res!952684) b!1416702))

(assert (= (and b!1416696 (not res!952686)) b!1416700))

(declare-fun m!1307413 () Bool)

(assert (=> b!1416703 m!1307413))

(declare-fun m!1307415 () Bool)

(assert (=> b!1416702 m!1307415))

(assert (=> b!1416702 m!1307415))

(declare-fun m!1307417 () Bool)

(assert (=> b!1416702 m!1307417))

(declare-fun m!1307419 () Bool)

(assert (=> start!122132 m!1307419))

(declare-fun m!1307421 () Bool)

(assert (=> start!122132 m!1307421))

(declare-fun m!1307423 () Bool)

(assert (=> b!1416701 m!1307423))

(declare-fun m!1307425 () Bool)

(assert (=> b!1416697 m!1307425))

(assert (=> b!1416697 m!1307425))

(declare-fun m!1307427 () Bool)

(assert (=> b!1416697 m!1307427))

(assert (=> b!1416698 m!1307415))

(assert (=> b!1416698 m!1307415))

(declare-fun m!1307429 () Bool)

(assert (=> b!1416698 m!1307429))

(declare-fun m!1307431 () Bool)

(assert (=> b!1416700 m!1307431))

(declare-fun m!1307433 () Bool)

(assert (=> b!1416700 m!1307433))

(assert (=> b!1416700 m!1307433))

(declare-fun m!1307435 () Bool)

(assert (=> b!1416700 m!1307435))

(assert (=> b!1416700 m!1307435))

(assert (=> b!1416700 m!1307433))

(declare-fun m!1307437 () Bool)

(assert (=> b!1416700 m!1307437))

(assert (=> b!1416696 m!1307415))

(declare-fun m!1307439 () Bool)

(assert (=> b!1416696 m!1307439))

(assert (=> b!1416696 m!1307415))

(declare-fun m!1307441 () Bool)

(assert (=> b!1416696 m!1307441))

(assert (=> b!1416696 m!1307439))

(assert (=> b!1416696 m!1307415))

(declare-fun m!1307443 () Bool)

(assert (=> b!1416696 m!1307443))

(declare-fun m!1307445 () Bool)

(assert (=> b!1416696 m!1307445))

(push 1)

(assert (not b!1416696))

(assert (not start!122132))

(assert (not b!1416702))

(assert (not b!1416701))

(assert (not b!1416703))

(assert (not b!1416697))

(assert (not b!1416698))

(assert (not b!1416700))

(check-sat)

(pop 1)

(push 1)

