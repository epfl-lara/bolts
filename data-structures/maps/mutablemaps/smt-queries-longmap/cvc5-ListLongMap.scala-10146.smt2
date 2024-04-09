; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119680 () Bool)

(assert start!119680)

(declare-fun res!933057 () Bool)

(declare-fun e!789092 () Bool)

(assert (=> start!119680 (=> (not res!933057) (not e!789092))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119680 (= res!933057 (validMask!0 mask!2840))))

(assert (=> start!119680 e!789092))

(assert (=> start!119680 true))

(declare-datatypes ((array!95280 0))(
  ( (array!95281 (arr!45994 (Array (_ BitVec 32) (_ BitVec 64))) (size!46545 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95280)

(declare-fun array_inv!34939 (array!95280) Bool)

(assert (=> start!119680 (array_inv!34939 a!2901)))

(declare-fun b!1393533 () Bool)

(declare-fun res!933053 () Bool)

(assert (=> b!1393533 (=> (not res!933053) (not e!789092))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393533 (= res!933053 (validKeyInArray!0 (select (arr!45994 a!2901) i!1037)))))

(declare-fun b!1393534 () Bool)

(declare-fun res!933056 () Bool)

(assert (=> b!1393534 (=> (not res!933056) (not e!789092))))

(declare-datatypes ((List!32693 0))(
  ( (Nil!32690) (Cons!32689 (h!33922 (_ BitVec 64)) (t!47394 List!32693)) )
))
(declare-fun arrayNoDuplicates!0 (array!95280 (_ BitVec 32) List!32693) Bool)

(assert (=> b!1393534 (= res!933056 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32690))))

(declare-fun b!1393535 () Bool)

(declare-fun res!933055 () Bool)

(assert (=> b!1393535 (=> (not res!933055) (not e!789092))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393535 (= res!933055 (and (= (size!46545 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46545 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46545 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393536 () Bool)

(declare-fun e!789090 () Bool)

(assert (=> b!1393536 (= e!789090 true)))

(declare-datatypes ((SeekEntryResult!10333 0))(
  ( (MissingZero!10333 (index!43702 (_ BitVec 32))) (Found!10333 (index!43703 (_ BitVec 32))) (Intermediate!10333 (undefined!11145 Bool) (index!43704 (_ BitVec 32)) (x!125388 (_ BitVec 32))) (Undefined!10333) (MissingVacant!10333 (index!43705 (_ BitVec 32))) )
))
(declare-fun lt!611998 () SeekEntryResult!10333)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95280 (_ BitVec 32)) SeekEntryResult!10333)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393536 (= lt!611998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45994 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45994 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95281 (store (arr!45994 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46545 a!2901)) mask!2840))))

(declare-fun b!1393537 () Bool)

(declare-fun res!933050 () Bool)

(assert (=> b!1393537 (=> (not res!933050) (not e!789092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95280 (_ BitVec 32)) Bool)

(assert (=> b!1393537 (= res!933050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393538 () Bool)

(declare-fun res!933052 () Bool)

(assert (=> b!1393538 (=> (not res!933052) (not e!789092))))

(assert (=> b!1393538 (= res!933052 (validKeyInArray!0 (select (arr!45994 a!2901) j!112)))))

(declare-fun b!1393539 () Bool)

(assert (=> b!1393539 (= e!789092 (not e!789090))))

(declare-fun res!933054 () Bool)

(assert (=> b!1393539 (=> res!933054 e!789090)))

(declare-fun lt!611996 () SeekEntryResult!10333)

(assert (=> b!1393539 (= res!933054 (or (not (is-Intermediate!10333 lt!611996)) (undefined!11145 lt!611996)))))

(declare-fun e!789091 () Bool)

(assert (=> b!1393539 e!789091))

(declare-fun res!933051 () Bool)

(assert (=> b!1393539 (=> (not res!933051) (not e!789091))))

(assert (=> b!1393539 (= res!933051 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46620 0))(
  ( (Unit!46621) )
))
(declare-fun lt!611997 () Unit!46620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46620)

(assert (=> b!1393539 (= lt!611997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393539 (= lt!611996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45994 a!2901) j!112) mask!2840) (select (arr!45994 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393540 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95280 (_ BitVec 32)) SeekEntryResult!10333)

(assert (=> b!1393540 (= e!789091 (= (seekEntryOrOpen!0 (select (arr!45994 a!2901) j!112) a!2901 mask!2840) (Found!10333 j!112)))))

(assert (= (and start!119680 res!933057) b!1393535))

(assert (= (and b!1393535 res!933055) b!1393533))

(assert (= (and b!1393533 res!933053) b!1393538))

(assert (= (and b!1393538 res!933052) b!1393537))

(assert (= (and b!1393537 res!933050) b!1393534))

(assert (= (and b!1393534 res!933056) b!1393539))

(assert (= (and b!1393539 res!933051) b!1393540))

(assert (= (and b!1393539 (not res!933054)) b!1393536))

(declare-fun m!1279577 () Bool)

(assert (=> b!1393538 m!1279577))

(assert (=> b!1393538 m!1279577))

(declare-fun m!1279579 () Bool)

(assert (=> b!1393538 m!1279579))

(assert (=> b!1393539 m!1279577))

(declare-fun m!1279581 () Bool)

(assert (=> b!1393539 m!1279581))

(assert (=> b!1393539 m!1279577))

(declare-fun m!1279583 () Bool)

(assert (=> b!1393539 m!1279583))

(assert (=> b!1393539 m!1279581))

(assert (=> b!1393539 m!1279577))

(declare-fun m!1279585 () Bool)

(assert (=> b!1393539 m!1279585))

(declare-fun m!1279587 () Bool)

(assert (=> b!1393539 m!1279587))

(declare-fun m!1279589 () Bool)

(assert (=> b!1393536 m!1279589))

(declare-fun m!1279591 () Bool)

(assert (=> b!1393536 m!1279591))

(assert (=> b!1393536 m!1279591))

(declare-fun m!1279593 () Bool)

(assert (=> b!1393536 m!1279593))

(assert (=> b!1393536 m!1279593))

(assert (=> b!1393536 m!1279591))

(declare-fun m!1279595 () Bool)

(assert (=> b!1393536 m!1279595))

(declare-fun m!1279597 () Bool)

(assert (=> start!119680 m!1279597))

(declare-fun m!1279599 () Bool)

(assert (=> start!119680 m!1279599))

(declare-fun m!1279601 () Bool)

(assert (=> b!1393537 m!1279601))

(declare-fun m!1279603 () Bool)

(assert (=> b!1393533 m!1279603))

(assert (=> b!1393533 m!1279603))

(declare-fun m!1279605 () Bool)

(assert (=> b!1393533 m!1279605))

(declare-fun m!1279607 () Bool)

(assert (=> b!1393534 m!1279607))

(assert (=> b!1393540 m!1279577))

(assert (=> b!1393540 m!1279577))

(declare-fun m!1279609 () Bool)

(assert (=> b!1393540 m!1279609))

(push 1)

(assert (not b!1393533))

(assert (not start!119680))

(assert (not b!1393536))

(assert (not b!1393537))

(assert (not b!1393534))

(assert (not b!1393538))

(assert (not b!1393540))

(assert (not b!1393539))

(check-sat)

(pop 1)

