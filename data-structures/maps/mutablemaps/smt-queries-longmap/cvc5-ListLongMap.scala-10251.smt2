; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120598 () Bool)

(assert start!120598)

(declare-fun b!1403698 () Bool)

(declare-fun res!942323 () Bool)

(declare-fun e!794778 () Bool)

(assert (=> b!1403698 (=> (not res!942323) (not e!794778))))

(declare-datatypes ((array!95925 0))(
  ( (array!95926 (arr!46309 (Array (_ BitVec 32) (_ BitVec 64))) (size!46860 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95925)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95925 (_ BitVec 32)) Bool)

(assert (=> b!1403698 (= res!942323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403699 () Bool)

(declare-fun res!942322 () Bool)

(assert (=> b!1403699 (=> (not res!942322) (not e!794778))))

(declare-datatypes ((List!33008 0))(
  ( (Nil!33005) (Cons!33004 (h!34252 (_ BitVec 64)) (t!47709 List!33008)) )
))
(declare-fun arrayNoDuplicates!0 (array!95925 (_ BitVec 32) List!33008) Bool)

(assert (=> b!1403699 (= res!942322 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33005))))

(declare-fun b!1403700 () Bool)

(assert (=> b!1403700 (= e!794778 (not true))))

(declare-fun e!794779 () Bool)

(assert (=> b!1403700 e!794779))

(declare-fun res!942324 () Bool)

(assert (=> b!1403700 (=> (not res!942324) (not e!794779))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403700 (= res!942324 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47250 0))(
  ( (Unit!47251) )
))
(declare-fun lt!618445 () Unit!47250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47250)

(assert (=> b!1403700 (= lt!618445 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10648 0))(
  ( (MissingZero!10648 (index!44968 (_ BitVec 32))) (Found!10648 (index!44969 (_ BitVec 32))) (Intermediate!10648 (undefined!11460 Bool) (index!44970 (_ BitVec 32)) (x!126582 (_ BitVec 32))) (Undefined!10648) (MissingVacant!10648 (index!44971 (_ BitVec 32))) )
))
(declare-fun lt!618444 () SeekEntryResult!10648)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95925 (_ BitVec 32)) SeekEntryResult!10648)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403700 (= lt!618444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46309 a!2901) j!112) mask!2840) (select (arr!46309 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942321 () Bool)

(assert (=> start!120598 (=> (not res!942321) (not e!794778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120598 (= res!942321 (validMask!0 mask!2840))))

(assert (=> start!120598 e!794778))

(assert (=> start!120598 true))

(declare-fun array_inv!35254 (array!95925) Bool)

(assert (=> start!120598 (array_inv!35254 a!2901)))

(declare-fun b!1403701 () Bool)

(declare-fun res!942320 () Bool)

(assert (=> b!1403701 (=> (not res!942320) (not e!794778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403701 (= res!942320 (validKeyInArray!0 (select (arr!46309 a!2901) j!112)))))

(declare-fun b!1403702 () Bool)

(declare-fun res!942318 () Bool)

(assert (=> b!1403702 (=> (not res!942318) (not e!794778))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403702 (= res!942318 (validKeyInArray!0 (select (arr!46309 a!2901) i!1037)))))

(declare-fun b!1403703 () Bool)

(declare-fun res!942319 () Bool)

(assert (=> b!1403703 (=> (not res!942319) (not e!794778))))

(assert (=> b!1403703 (= res!942319 (and (= (size!46860 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46860 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46860 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403704 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95925 (_ BitVec 32)) SeekEntryResult!10648)

(assert (=> b!1403704 (= e!794779 (= (seekEntryOrOpen!0 (select (arr!46309 a!2901) j!112) a!2901 mask!2840) (Found!10648 j!112)))))

(assert (= (and start!120598 res!942321) b!1403703))

(assert (= (and b!1403703 res!942319) b!1403702))

(assert (= (and b!1403702 res!942318) b!1403701))

(assert (= (and b!1403701 res!942320) b!1403698))

(assert (= (and b!1403698 res!942323) b!1403699))

(assert (= (and b!1403699 res!942322) b!1403700))

(assert (= (and b!1403700 res!942324) b!1403704))

(declare-fun m!1292495 () Bool)

(assert (=> b!1403702 m!1292495))

(assert (=> b!1403702 m!1292495))

(declare-fun m!1292497 () Bool)

(assert (=> b!1403702 m!1292497))

(declare-fun m!1292499 () Bool)

(assert (=> b!1403700 m!1292499))

(declare-fun m!1292501 () Bool)

(assert (=> b!1403700 m!1292501))

(assert (=> b!1403700 m!1292499))

(declare-fun m!1292503 () Bool)

(assert (=> b!1403700 m!1292503))

(assert (=> b!1403700 m!1292501))

(assert (=> b!1403700 m!1292499))

(declare-fun m!1292505 () Bool)

(assert (=> b!1403700 m!1292505))

(declare-fun m!1292507 () Bool)

(assert (=> b!1403700 m!1292507))

(assert (=> b!1403701 m!1292499))

(assert (=> b!1403701 m!1292499))

(declare-fun m!1292509 () Bool)

(assert (=> b!1403701 m!1292509))

(assert (=> b!1403704 m!1292499))

(assert (=> b!1403704 m!1292499))

(declare-fun m!1292511 () Bool)

(assert (=> b!1403704 m!1292511))

(declare-fun m!1292513 () Bool)

(assert (=> b!1403699 m!1292513))

(declare-fun m!1292515 () Bool)

(assert (=> b!1403698 m!1292515))

(declare-fun m!1292517 () Bool)

(assert (=> start!120598 m!1292517))

(declare-fun m!1292519 () Bool)

(assert (=> start!120598 m!1292519))

(push 1)

(assert (not b!1403698))

(assert (not start!120598))

(assert (not b!1403701))

(assert (not b!1403704))

(assert (not b!1403702))

(assert (not b!1403699))

(assert (not b!1403700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

