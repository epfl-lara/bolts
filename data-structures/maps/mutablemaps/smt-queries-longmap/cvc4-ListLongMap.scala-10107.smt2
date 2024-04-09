; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119180 () Bool)

(assert start!119180)

(declare-fun b!1389779 () Bool)

(declare-fun res!930052 () Bool)

(declare-fun e!787165 () Bool)

(assert (=> b!1389779 (=> (not res!930052) (not e!787165))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95035 0))(
  ( (array!95036 (arr!45879 (Array (_ BitVec 32) (_ BitVec 64))) (size!46430 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95035)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389779 (= res!930052 (and (= (size!46430 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46430 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46430 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389780 () Bool)

(declare-fun res!930049 () Bool)

(assert (=> b!1389780 (=> (not res!930049) (not e!787165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389780 (= res!930049 (validKeyInArray!0 (select (arr!45879 a!2901) i!1037)))))

(declare-fun res!930053 () Bool)

(assert (=> start!119180 (=> (not res!930053) (not e!787165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119180 (= res!930053 (validMask!0 mask!2840))))

(assert (=> start!119180 e!787165))

(assert (=> start!119180 true))

(declare-fun array_inv!34824 (array!95035) Bool)

(assert (=> start!119180 (array_inv!34824 a!2901)))

(declare-fun b!1389781 () Bool)

(declare-fun res!930051 () Bool)

(assert (=> b!1389781 (=> (not res!930051) (not e!787165))))

(declare-datatypes ((List!32578 0))(
  ( (Nil!32575) (Cons!32574 (h!33792 (_ BitVec 64)) (t!47279 List!32578)) )
))
(declare-fun arrayNoDuplicates!0 (array!95035 (_ BitVec 32) List!32578) Bool)

(assert (=> b!1389781 (= res!930051 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32575))))

(declare-fun b!1389782 () Bool)

(declare-fun res!930050 () Bool)

(assert (=> b!1389782 (=> (not res!930050) (not e!787165))))

(assert (=> b!1389782 (= res!930050 (validKeyInArray!0 (select (arr!45879 a!2901) j!112)))))

(declare-fun b!1389783 () Bool)

(assert (=> b!1389783 (= e!787165 (not (bvsge mask!2840 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95035 (_ BitVec 32)) Bool)

(assert (=> b!1389783 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46390 0))(
  ( (Unit!46391) )
))
(declare-fun lt!610594 () Unit!46390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46390)

(assert (=> b!1389783 (= lt!610594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10218 0))(
  ( (MissingZero!10218 (index!43242 (_ BitVec 32))) (Found!10218 (index!43243 (_ BitVec 32))) (Intermediate!10218 (undefined!11030 Bool) (index!43244 (_ BitVec 32)) (x!124931 (_ BitVec 32))) (Undefined!10218) (MissingVacant!10218 (index!43245 (_ BitVec 32))) )
))
(declare-fun lt!610593 () SeekEntryResult!10218)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95035 (_ BitVec 32)) SeekEntryResult!10218)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389783 (= lt!610593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45879 a!2901) j!112) mask!2840) (select (arr!45879 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389784 () Bool)

(declare-fun res!930054 () Bool)

(assert (=> b!1389784 (=> (not res!930054) (not e!787165))))

(assert (=> b!1389784 (= res!930054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119180 res!930053) b!1389779))

(assert (= (and b!1389779 res!930052) b!1389780))

(assert (= (and b!1389780 res!930049) b!1389782))

(assert (= (and b!1389782 res!930050) b!1389784))

(assert (= (and b!1389784 res!930054) b!1389781))

(assert (= (and b!1389781 res!930051) b!1389783))

(declare-fun m!1275539 () Bool)

(assert (=> b!1389781 m!1275539))

(declare-fun m!1275541 () Bool)

(assert (=> start!119180 m!1275541))

(declare-fun m!1275543 () Bool)

(assert (=> start!119180 m!1275543))

(declare-fun m!1275545 () Bool)

(assert (=> b!1389783 m!1275545))

(declare-fun m!1275547 () Bool)

(assert (=> b!1389783 m!1275547))

(assert (=> b!1389783 m!1275545))

(declare-fun m!1275549 () Bool)

(assert (=> b!1389783 m!1275549))

(assert (=> b!1389783 m!1275547))

(assert (=> b!1389783 m!1275545))

(declare-fun m!1275551 () Bool)

(assert (=> b!1389783 m!1275551))

(declare-fun m!1275553 () Bool)

(assert (=> b!1389783 m!1275553))

(declare-fun m!1275555 () Bool)

(assert (=> b!1389780 m!1275555))

(assert (=> b!1389780 m!1275555))

(declare-fun m!1275557 () Bool)

(assert (=> b!1389780 m!1275557))

(declare-fun m!1275559 () Bool)

(assert (=> b!1389784 m!1275559))

(assert (=> b!1389782 m!1275545))

(assert (=> b!1389782 m!1275545))

(declare-fun m!1275561 () Bool)

(assert (=> b!1389782 m!1275561))

(push 1)

(assert (not b!1389783))

(assert (not b!1389782))

(assert (not start!119180))

(assert (not b!1389784))

(assert (not b!1389781))

(assert (not b!1389780))

(check-sat)

(pop 1)

(push 1)

