; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119186 () Bool)

(assert start!119186)

(declare-fun b!1389833 () Bool)

(declare-fun res!930106 () Bool)

(declare-fun e!787183 () Bool)

(assert (=> b!1389833 (=> (not res!930106) (not e!787183))))

(declare-datatypes ((array!95041 0))(
  ( (array!95042 (arr!45882 (Array (_ BitVec 32) (_ BitVec 64))) (size!46433 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95041)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389833 (= res!930106 (validKeyInArray!0 (select (arr!45882 a!2901) i!1037)))))

(declare-fun b!1389834 () Bool)

(declare-fun res!930105 () Bool)

(assert (=> b!1389834 (=> (not res!930105) (not e!787183))))

(declare-datatypes ((List!32581 0))(
  ( (Nil!32578) (Cons!32577 (h!33795 (_ BitVec 64)) (t!47282 List!32581)) )
))
(declare-fun arrayNoDuplicates!0 (array!95041 (_ BitVec 32) List!32581) Bool)

(assert (=> b!1389834 (= res!930105 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32578))))

(declare-fun b!1389835 () Bool)

(declare-fun res!930104 () Bool)

(assert (=> b!1389835 (=> (not res!930104) (not e!787183))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389835 (= res!930104 (and (= (size!46433 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46433 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46433 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389836 () Bool)

(declare-fun res!930107 () Bool)

(assert (=> b!1389836 (=> (not res!930107) (not e!787183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95041 (_ BitVec 32)) Bool)

(assert (=> b!1389836 (= res!930107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389838 () Bool)

(declare-fun res!930108 () Bool)

(assert (=> b!1389838 (=> (not res!930108) (not e!787183))))

(assert (=> b!1389838 (= res!930108 (validKeyInArray!0 (select (arr!45882 a!2901) j!112)))))

(declare-fun res!930103 () Bool)

(assert (=> start!119186 (=> (not res!930103) (not e!787183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119186 (= res!930103 (validMask!0 mask!2840))))

(assert (=> start!119186 e!787183))

(assert (=> start!119186 true))

(declare-fun array_inv!34827 (array!95041) Bool)

(assert (=> start!119186 (array_inv!34827 a!2901)))

(declare-fun b!1389837 () Bool)

(assert (=> b!1389837 (= e!787183 (not true))))

(assert (=> b!1389837 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46396 0))(
  ( (Unit!46397) )
))
(declare-fun lt!610611 () Unit!46396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46396)

(assert (=> b!1389837 (= lt!610611 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10221 0))(
  ( (MissingZero!10221 (index!43254 (_ BitVec 32))) (Found!10221 (index!43255 (_ BitVec 32))) (Intermediate!10221 (undefined!11033 Bool) (index!43256 (_ BitVec 32)) (x!124942 (_ BitVec 32))) (Undefined!10221) (MissingVacant!10221 (index!43257 (_ BitVec 32))) )
))
(declare-fun lt!610612 () SeekEntryResult!10221)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95041 (_ BitVec 32)) SeekEntryResult!10221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389837 (= lt!610612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45882 a!2901) j!112) mask!2840) (select (arr!45882 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119186 res!930103) b!1389835))

(assert (= (and b!1389835 res!930104) b!1389833))

(assert (= (and b!1389833 res!930106) b!1389838))

(assert (= (and b!1389838 res!930108) b!1389836))

(assert (= (and b!1389836 res!930107) b!1389834))

(assert (= (and b!1389834 res!930105) b!1389837))

(declare-fun m!1275611 () Bool)

(assert (=> b!1389836 m!1275611))

(declare-fun m!1275613 () Bool)

(assert (=> b!1389834 m!1275613))

(declare-fun m!1275615 () Bool)

(assert (=> b!1389837 m!1275615))

(declare-fun m!1275617 () Bool)

(assert (=> b!1389837 m!1275617))

(assert (=> b!1389837 m!1275615))

(declare-fun m!1275619 () Bool)

(assert (=> b!1389837 m!1275619))

(assert (=> b!1389837 m!1275617))

(assert (=> b!1389837 m!1275615))

(declare-fun m!1275621 () Bool)

(assert (=> b!1389837 m!1275621))

(declare-fun m!1275623 () Bool)

(assert (=> b!1389837 m!1275623))

(declare-fun m!1275625 () Bool)

(assert (=> b!1389833 m!1275625))

(assert (=> b!1389833 m!1275625))

(declare-fun m!1275627 () Bool)

(assert (=> b!1389833 m!1275627))

(declare-fun m!1275629 () Bool)

(assert (=> start!119186 m!1275629))

(declare-fun m!1275631 () Bool)

(assert (=> start!119186 m!1275631))

(assert (=> b!1389838 m!1275615))

(assert (=> b!1389838 m!1275615))

(declare-fun m!1275633 () Bool)

(assert (=> b!1389838 m!1275633))

(push 1)

(assert (not b!1389837))

(assert (not b!1389838))

(assert (not start!119186))

(assert (not b!1389834))

(assert (not b!1389836))

(assert (not b!1389833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

