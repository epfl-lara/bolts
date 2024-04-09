; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119470 () Bool)

(assert start!119470)

(declare-fun b!1391799 () Bool)

(declare-fun res!931630 () Bool)

(declare-fun e!788167 () Bool)

(assert (=> b!1391799 (=> (not res!931630) (not e!788167))))

(declare-datatypes ((array!95172 0))(
  ( (array!95173 (arr!45943 (Array (_ BitVec 32) (_ BitVec 64))) (size!46494 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95172)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95172 (_ BitVec 32)) Bool)

(assert (=> b!1391799 (= res!931630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931629 () Bool)

(assert (=> start!119470 (=> (not res!931629) (not e!788167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119470 (= res!931629 (validMask!0 mask!2840))))

(assert (=> start!119470 e!788167))

(assert (=> start!119470 true))

(declare-fun array_inv!34888 (array!95172) Bool)

(assert (=> start!119470 (array_inv!34888 a!2901)))

(declare-fun b!1391800 () Bool)

(declare-fun res!931635 () Bool)

(assert (=> b!1391800 (=> (not res!931635) (not e!788167))))

(declare-datatypes ((List!32642 0))(
  ( (Nil!32639) (Cons!32638 (h!33865 (_ BitVec 64)) (t!47343 List!32642)) )
))
(declare-fun arrayNoDuplicates!0 (array!95172 (_ BitVec 32) List!32642) Bool)

(assert (=> b!1391800 (= res!931635 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32639))))

(declare-fun b!1391801 () Bool)

(declare-fun e!788168 () Bool)

(assert (=> b!1391801 (= e!788168 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611323 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391801 (= lt!611323 (toIndex!0 (select (store (arr!45943 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391802 () Bool)

(declare-fun e!788166 () Bool)

(declare-datatypes ((SeekEntryResult!10282 0))(
  ( (MissingZero!10282 (index!43498 (_ BitVec 32))) (Found!10282 (index!43499 (_ BitVec 32))) (Intermediate!10282 (undefined!11094 Bool) (index!43500 (_ BitVec 32)) (x!125189 (_ BitVec 32))) (Undefined!10282) (MissingVacant!10282 (index!43501 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95172 (_ BitVec 32)) SeekEntryResult!10282)

(assert (=> b!1391802 (= e!788166 (= (seekEntryOrOpen!0 (select (arr!45943 a!2901) j!112) a!2901 mask!2840) (Found!10282 j!112)))))

(declare-fun b!1391803 () Bool)

(declare-fun res!931632 () Bool)

(assert (=> b!1391803 (=> (not res!931632) (not e!788167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391803 (= res!931632 (validKeyInArray!0 (select (arr!45943 a!2901) j!112)))))

(declare-fun b!1391804 () Bool)

(assert (=> b!1391804 (= e!788167 (not e!788168))))

(declare-fun res!931631 () Bool)

(assert (=> b!1391804 (=> res!931631 e!788168)))

(declare-fun lt!611321 () SeekEntryResult!10282)

(assert (=> b!1391804 (= res!931631 (or (not (is-Intermediate!10282 lt!611321)) (undefined!11094 lt!611321)))))

(assert (=> b!1391804 e!788166))

(declare-fun res!931628 () Bool)

(assert (=> b!1391804 (=> (not res!931628) (not e!788166))))

(assert (=> b!1391804 (= res!931628 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46518 0))(
  ( (Unit!46519) )
))
(declare-fun lt!611322 () Unit!46518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95172 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46518)

(assert (=> b!1391804 (= lt!611322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95172 (_ BitVec 32)) SeekEntryResult!10282)

(assert (=> b!1391804 (= lt!611321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45943 a!2901) j!112) mask!2840) (select (arr!45943 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391805 () Bool)

(declare-fun res!931634 () Bool)

(assert (=> b!1391805 (=> (not res!931634) (not e!788167))))

(assert (=> b!1391805 (= res!931634 (and (= (size!46494 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46494 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46494 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391806 () Bool)

(declare-fun res!931633 () Bool)

(assert (=> b!1391806 (=> (not res!931633) (not e!788167))))

(assert (=> b!1391806 (= res!931633 (validKeyInArray!0 (select (arr!45943 a!2901) i!1037)))))

(assert (= (and start!119470 res!931629) b!1391805))

(assert (= (and b!1391805 res!931634) b!1391806))

(assert (= (and b!1391806 res!931633) b!1391803))

(assert (= (and b!1391803 res!931632) b!1391799))

(assert (= (and b!1391799 res!931630) b!1391800))

(assert (= (and b!1391800 res!931635) b!1391804))

(assert (= (and b!1391804 res!931628) b!1391802))

(assert (= (and b!1391804 (not res!931631)) b!1391801))

(declare-fun m!1277591 () Bool)

(assert (=> b!1391799 m!1277591))

(declare-fun m!1277593 () Bool)

(assert (=> b!1391800 m!1277593))

(declare-fun m!1277595 () Bool)

(assert (=> start!119470 m!1277595))

(declare-fun m!1277597 () Bool)

(assert (=> start!119470 m!1277597))

(declare-fun m!1277599 () Bool)

(assert (=> b!1391802 m!1277599))

(assert (=> b!1391802 m!1277599))

(declare-fun m!1277601 () Bool)

(assert (=> b!1391802 m!1277601))

(declare-fun m!1277603 () Bool)

(assert (=> b!1391801 m!1277603))

(declare-fun m!1277605 () Bool)

(assert (=> b!1391801 m!1277605))

(assert (=> b!1391801 m!1277605))

(declare-fun m!1277607 () Bool)

(assert (=> b!1391801 m!1277607))

(declare-fun m!1277609 () Bool)

(assert (=> b!1391806 m!1277609))

(assert (=> b!1391806 m!1277609))

(declare-fun m!1277611 () Bool)

(assert (=> b!1391806 m!1277611))

(assert (=> b!1391803 m!1277599))

(assert (=> b!1391803 m!1277599))

(declare-fun m!1277613 () Bool)

(assert (=> b!1391803 m!1277613))

(assert (=> b!1391804 m!1277599))

(declare-fun m!1277615 () Bool)

(assert (=> b!1391804 m!1277615))

(assert (=> b!1391804 m!1277599))

(declare-fun m!1277617 () Bool)

(assert (=> b!1391804 m!1277617))

(assert (=> b!1391804 m!1277615))

(assert (=> b!1391804 m!1277599))

(declare-fun m!1277619 () Bool)

(assert (=> b!1391804 m!1277619))

(declare-fun m!1277621 () Bool)

(assert (=> b!1391804 m!1277621))

(push 1)

