; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121474 () Bool)

(assert start!121474)

(declare-fun b!1410793 () Bool)

(declare-fun res!948132 () Bool)

(declare-fun e!798398 () Bool)

(assert (=> b!1410793 (=> (not res!948132) (not e!798398))))

(declare-datatypes ((array!96393 0))(
  ( (array!96394 (arr!46531 (Array (_ BitVec 32) (_ BitVec 64))) (size!47082 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96393)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410793 (= res!948132 (validKeyInArray!0 (select (arr!46531 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1410794 () Bool)

(declare-fun e!798396 () Bool)

(declare-datatypes ((SeekEntryResult!10864 0))(
  ( (MissingZero!10864 (index!45832 (_ BitVec 32))) (Found!10864 (index!45833 (_ BitVec 32))) (Intermediate!10864 (undefined!11676 Bool) (index!45834 (_ BitVec 32)) (x!127438 (_ BitVec 32))) (Undefined!10864) (MissingVacant!10864 (index!45835 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96393 (_ BitVec 32)) SeekEntryResult!10864)

(assert (=> b!1410794 (= e!798396 (= (seekEntryOrOpen!0 (select (arr!46531 a!2901) j!112) a!2901 mask!2840) (Found!10864 j!112)))))

(declare-fun res!948138 () Bool)

(assert (=> start!121474 (=> (not res!948138) (not e!798398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121474 (= res!948138 (validMask!0 mask!2840))))

(assert (=> start!121474 e!798398))

(assert (=> start!121474 true))

(declare-fun array_inv!35476 (array!96393) Bool)

(assert (=> start!121474 (array_inv!35476 a!2901)))

(declare-fun b!1410795 () Bool)

(declare-fun res!948137 () Bool)

(assert (=> b!1410795 (=> (not res!948137) (not e!798398))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410795 (= res!948137 (and (= (size!47082 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47082 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47082 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410796 () Bool)

(declare-fun res!948131 () Bool)

(assert (=> b!1410796 (=> (not res!948131) (not e!798398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96393 (_ BitVec 32)) Bool)

(assert (=> b!1410796 (= res!948131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410797 () Bool)

(declare-fun e!798397 () Bool)

(declare-fun e!798394 () Bool)

(assert (=> b!1410797 (= e!798397 e!798394)))

(declare-fun res!948129 () Bool)

(assert (=> b!1410797 (=> res!948129 e!798394)))

(declare-fun lt!621321 () SeekEntryResult!10864)

(declare-fun lt!621318 () SeekEntryResult!10864)

(assert (=> b!1410797 (= res!948129 (not (= lt!621321 lt!621318)))))

(assert (=> b!1410797 (= lt!621318 (Intermediate!10864 (undefined!11676 lt!621321) (index!45834 lt!621321) (x!127438 lt!621321)))))

(declare-fun b!1410798 () Bool)

(declare-fun e!798395 () Bool)

(assert (=> b!1410798 (= e!798395 e!798397)))

(declare-fun res!948135 () Bool)

(assert (=> b!1410798 (=> res!948135 e!798397)))

(declare-fun lt!621317 () SeekEntryResult!10864)

(declare-fun lt!621322 () (_ BitVec 32))

(assert (=> b!1410798 (= res!948135 (or (= lt!621317 lt!621321) (not (is-Intermediate!10864 lt!621321)) (bvslt (x!127438 lt!621317) #b00000000000000000000000000000000) (bvsgt (x!127438 lt!621317) #b01111111111111111111111111111110) (bvslt lt!621322 #b00000000000000000000000000000000) (bvsge lt!621322 (size!47082 a!2901)) (bvslt (index!45834 lt!621317) #b00000000000000000000000000000000) (bvsge (index!45834 lt!621317) (size!47082 a!2901)) (not (= lt!621317 (Intermediate!10864 false (index!45834 lt!621317) (x!127438 lt!621317))))))))

(declare-fun lt!621319 () array!96393)

(declare-fun lt!621320 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96393 (_ BitVec 32)) SeekEntryResult!10864)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410798 (= lt!621321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621320 mask!2840) lt!621320 lt!621319 mask!2840))))

(assert (=> b!1410798 (= lt!621320 (select (store (arr!46531 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410798 (= lt!621319 (array!96394 (store (arr!46531 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47082 a!2901)))))

(declare-fun b!1410799 () Bool)

(assert (=> b!1410799 (= e!798394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621322 lt!621320 lt!621319 mask!2840) lt!621318))))

(declare-fun b!1410800 () Bool)

(declare-fun res!948130 () Bool)

(assert (=> b!1410800 (=> (not res!948130) (not e!798398))))

(assert (=> b!1410800 (= res!948130 (validKeyInArray!0 (select (arr!46531 a!2901) i!1037)))))

(declare-fun b!1410801 () Bool)

(assert (=> b!1410801 (= e!798398 (not e!798395))))

(declare-fun res!948133 () Bool)

(assert (=> b!1410801 (=> res!948133 e!798395)))

(assert (=> b!1410801 (= res!948133 (or (not (is-Intermediate!10864 lt!621317)) (undefined!11676 lt!621317)))))

(assert (=> b!1410801 e!798396))

(declare-fun res!948134 () Bool)

(assert (=> b!1410801 (=> (not res!948134) (not e!798396))))

(assert (=> b!1410801 (= res!948134 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47652 0))(
  ( (Unit!47653) )
))
(declare-fun lt!621316 () Unit!47652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47652)

(assert (=> b!1410801 (= lt!621316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410801 (= lt!621317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621322 (select (arr!46531 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410801 (= lt!621322 (toIndex!0 (select (arr!46531 a!2901) j!112) mask!2840))))

(declare-fun b!1410802 () Bool)

(declare-fun res!948136 () Bool)

(assert (=> b!1410802 (=> (not res!948136) (not e!798398))))

(declare-datatypes ((List!33230 0))(
  ( (Nil!33227) (Cons!33226 (h!34498 (_ BitVec 64)) (t!47931 List!33230)) )
))
(declare-fun arrayNoDuplicates!0 (array!96393 (_ BitVec 32) List!33230) Bool)

(assert (=> b!1410802 (= res!948136 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33227))))

(assert (= (and start!121474 res!948138) b!1410795))

(assert (= (and b!1410795 res!948137) b!1410800))

(assert (= (and b!1410800 res!948130) b!1410793))

(assert (= (and b!1410793 res!948132) b!1410796))

(assert (= (and b!1410796 res!948131) b!1410802))

(assert (= (and b!1410802 res!948136) b!1410801))

(assert (= (and b!1410801 res!948134) b!1410794))

(assert (= (and b!1410801 (not res!948133)) b!1410798))

(assert (= (and b!1410798 (not res!948135)) b!1410797))

(assert (= (and b!1410797 (not res!948129)) b!1410799))

(declare-fun m!1300541 () Bool)

(assert (=> b!1410802 m!1300541))

(declare-fun m!1300543 () Bool)

(assert (=> b!1410800 m!1300543))

(assert (=> b!1410800 m!1300543))

(declare-fun m!1300545 () Bool)

(assert (=> b!1410800 m!1300545))

(declare-fun m!1300547 () Bool)

(assert (=> b!1410793 m!1300547))

(assert (=> b!1410793 m!1300547))

(declare-fun m!1300549 () Bool)

(assert (=> b!1410793 m!1300549))

(assert (=> b!1410794 m!1300547))

(assert (=> b!1410794 m!1300547))

(declare-fun m!1300551 () Bool)

(assert (=> b!1410794 m!1300551))

(declare-fun m!1300553 () Bool)

(assert (=> b!1410796 m!1300553))

(assert (=> b!1410801 m!1300547))

(declare-fun m!1300555 () Bool)

(assert (=> b!1410801 m!1300555))

(assert (=> b!1410801 m!1300547))

(assert (=> b!1410801 m!1300547))

(declare-fun m!1300557 () Bool)

(assert (=> b!1410801 m!1300557))

(declare-fun m!1300559 () Bool)

(assert (=> b!1410801 m!1300559))

(declare-fun m!1300561 () Bool)

(assert (=> b!1410801 m!1300561))

(declare-fun m!1300563 () Bool)

(assert (=> b!1410799 m!1300563))

(declare-fun m!1300565 () Bool)

(assert (=> start!121474 m!1300565))

(declare-fun m!1300567 () Bool)

(assert (=> start!121474 m!1300567))

(declare-fun m!1300569 () Bool)

(assert (=> b!1410798 m!1300569))

(assert (=> b!1410798 m!1300569))

(declare-fun m!1300571 () Bool)

(assert (=> b!1410798 m!1300571))

(declare-fun m!1300573 () Bool)

(assert (=> b!1410798 m!1300573))

(declare-fun m!1300575 () Bool)

(assert (=> b!1410798 m!1300575))

(push 1)

