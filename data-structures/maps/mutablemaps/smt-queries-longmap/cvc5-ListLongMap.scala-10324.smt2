; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121468 () Bool)

(assert start!121468)

(declare-fun b!1410717 () Bool)

(declare-fun res!948060 () Bool)

(declare-fun e!798354 () Bool)

(assert (=> b!1410717 (=> (not res!948060) (not e!798354))))

(declare-datatypes ((array!96387 0))(
  ( (array!96388 (arr!46528 (Array (_ BitVec 32) (_ BitVec 64))) (size!47079 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96387)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410717 (= res!948060 (validKeyInArray!0 (select (arr!46528 a!2901) i!1037)))))

(declare-fun b!1410718 () Bool)

(declare-fun res!948059 () Bool)

(assert (=> b!1410718 (=> (not res!948059) (not e!798354))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410718 (= res!948059 (and (= (size!47079 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47079 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47079 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410719 () Bool)

(declare-fun res!948056 () Bool)

(assert (=> b!1410719 (=> (not res!948056) (not e!798354))))

(assert (=> b!1410719 (= res!948056 (validKeyInArray!0 (select (arr!46528 a!2901) j!112)))))

(declare-fun b!1410720 () Bool)

(declare-fun res!948058 () Bool)

(assert (=> b!1410720 (=> (not res!948058) (not e!798354))))

(declare-datatypes ((List!33227 0))(
  ( (Nil!33224) (Cons!33223 (h!34495 (_ BitVec 64)) (t!47928 List!33227)) )
))
(declare-fun arrayNoDuplicates!0 (array!96387 (_ BitVec 32) List!33227) Bool)

(assert (=> b!1410720 (= res!948058 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33224))))

(declare-fun b!1410721 () Bool)

(declare-fun e!798356 () Bool)

(assert (=> b!1410721 (= e!798356 true)))

(declare-datatypes ((SeekEntryResult!10861 0))(
  ( (MissingZero!10861 (index!45820 (_ BitVec 32))) (Found!10861 (index!45821 (_ BitVec 32))) (Intermediate!10861 (undefined!11673 Bool) (index!45822 (_ BitVec 32)) (x!127427 (_ BitVec 32))) (Undefined!10861) (MissingVacant!10861 (index!45823 (_ BitVec 32))) )
))
(declare-fun lt!621281 () SeekEntryResult!10861)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96387 (_ BitVec 32)) SeekEntryResult!10861)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410721 (= lt!621281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46528 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46528 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96388 (store (arr!46528 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47079 a!2901)) mask!2840))))

(declare-fun e!798355 () Bool)

(declare-fun b!1410722 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96387 (_ BitVec 32)) SeekEntryResult!10861)

(assert (=> b!1410722 (= e!798355 (= (seekEntryOrOpen!0 (select (arr!46528 a!2901) j!112) a!2901 mask!2840) (Found!10861 j!112)))))

(declare-fun b!1410723 () Bool)

(declare-fun res!948054 () Bool)

(assert (=> b!1410723 (=> (not res!948054) (not e!798354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96387 (_ BitVec 32)) Bool)

(assert (=> b!1410723 (= res!948054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948053 () Bool)

(assert (=> start!121468 (=> (not res!948053) (not e!798354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121468 (= res!948053 (validMask!0 mask!2840))))

(assert (=> start!121468 e!798354))

(assert (=> start!121468 true))

(declare-fun array_inv!35473 (array!96387) Bool)

(assert (=> start!121468 (array_inv!35473 a!2901)))

(declare-fun b!1410724 () Bool)

(assert (=> b!1410724 (= e!798354 (not e!798356))))

(declare-fun res!948055 () Bool)

(assert (=> b!1410724 (=> res!948055 e!798356)))

(declare-fun lt!621282 () SeekEntryResult!10861)

(assert (=> b!1410724 (= res!948055 (or (not (is-Intermediate!10861 lt!621282)) (undefined!11673 lt!621282)))))

(assert (=> b!1410724 e!798355))

(declare-fun res!948057 () Bool)

(assert (=> b!1410724 (=> (not res!948057) (not e!798355))))

(assert (=> b!1410724 (= res!948057 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47646 0))(
  ( (Unit!47647) )
))
(declare-fun lt!621283 () Unit!47646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96387 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47646)

(assert (=> b!1410724 (= lt!621283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410724 (= lt!621282 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46528 a!2901) j!112) mask!2840) (select (arr!46528 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121468 res!948053) b!1410718))

(assert (= (and b!1410718 res!948059) b!1410717))

(assert (= (and b!1410717 res!948060) b!1410719))

(assert (= (and b!1410719 res!948056) b!1410723))

(assert (= (and b!1410723 res!948054) b!1410720))

(assert (= (and b!1410720 res!948058) b!1410724))

(assert (= (and b!1410724 res!948057) b!1410722))

(assert (= (and b!1410724 (not res!948055)) b!1410721))

(declare-fun m!1300439 () Bool)

(assert (=> b!1410724 m!1300439))

(declare-fun m!1300441 () Bool)

(assert (=> b!1410724 m!1300441))

(assert (=> b!1410724 m!1300439))

(declare-fun m!1300443 () Bool)

(assert (=> b!1410724 m!1300443))

(assert (=> b!1410724 m!1300441))

(assert (=> b!1410724 m!1300439))

(declare-fun m!1300445 () Bool)

(assert (=> b!1410724 m!1300445))

(declare-fun m!1300447 () Bool)

(assert (=> b!1410724 m!1300447))

(declare-fun m!1300449 () Bool)

(assert (=> start!121468 m!1300449))

(declare-fun m!1300451 () Bool)

(assert (=> start!121468 m!1300451))

(declare-fun m!1300453 () Bool)

(assert (=> b!1410723 m!1300453))

(declare-fun m!1300455 () Bool)

(assert (=> b!1410720 m!1300455))

(declare-fun m!1300457 () Bool)

(assert (=> b!1410717 m!1300457))

(assert (=> b!1410717 m!1300457))

(declare-fun m!1300459 () Bool)

(assert (=> b!1410717 m!1300459))

(declare-fun m!1300461 () Bool)

(assert (=> b!1410721 m!1300461))

(declare-fun m!1300463 () Bool)

(assert (=> b!1410721 m!1300463))

(assert (=> b!1410721 m!1300463))

(declare-fun m!1300465 () Bool)

(assert (=> b!1410721 m!1300465))

(assert (=> b!1410721 m!1300465))

(assert (=> b!1410721 m!1300463))

(declare-fun m!1300467 () Bool)

(assert (=> b!1410721 m!1300467))

(assert (=> b!1410722 m!1300439))

(assert (=> b!1410722 m!1300439))

(declare-fun m!1300469 () Bool)

(assert (=> b!1410722 m!1300469))

(assert (=> b!1410719 m!1300439))

(assert (=> b!1410719 m!1300439))

(declare-fun m!1300471 () Bool)

(assert (=> b!1410719 m!1300471))

(push 1)

(assert (not b!1410723))

(assert (not b!1410721))

(assert (not b!1410722))

(assert (not b!1410717))

(assert (not b!1410724))

(assert (not start!121468))

(assert (not b!1410719))

(assert (not b!1410720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

