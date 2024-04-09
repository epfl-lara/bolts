; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119188 () Bool)

(assert start!119188)

(declare-fun b!1389851 () Bool)

(declare-fun res!930122 () Bool)

(declare-fun e!787189 () Bool)

(assert (=> b!1389851 (=> (not res!930122) (not e!787189))))

(declare-datatypes ((array!95043 0))(
  ( (array!95044 (arr!45883 (Array (_ BitVec 32) (_ BitVec 64))) (size!46434 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95043)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389851 (= res!930122 (validKeyInArray!0 (select (arr!45883 a!2901) i!1037)))))

(declare-fun b!1389852 () Bool)

(assert (=> b!1389852 (= e!787189 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95043 (_ BitVec 32)) Bool)

(assert (=> b!1389852 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46398 0))(
  ( (Unit!46399) )
))
(declare-fun lt!610617 () Unit!46398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46398)

(assert (=> b!1389852 (= lt!610617 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10222 0))(
  ( (MissingZero!10222 (index!43258 (_ BitVec 32))) (Found!10222 (index!43259 (_ BitVec 32))) (Intermediate!10222 (undefined!11034 Bool) (index!43260 (_ BitVec 32)) (x!124951 (_ BitVec 32))) (Undefined!10222) (MissingVacant!10222 (index!43261 (_ BitVec 32))) )
))
(declare-fun lt!610618 () SeekEntryResult!10222)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95043 (_ BitVec 32)) SeekEntryResult!10222)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389852 (= lt!610618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45883 a!2901) j!112) mask!2840) (select (arr!45883 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389853 () Bool)

(declare-fun res!930126 () Bool)

(assert (=> b!1389853 (=> (not res!930126) (not e!787189))))

(assert (=> b!1389853 (= res!930126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389854 () Bool)

(declare-fun res!930121 () Bool)

(assert (=> b!1389854 (=> (not res!930121) (not e!787189))))

(declare-datatypes ((List!32582 0))(
  ( (Nil!32579) (Cons!32578 (h!33796 (_ BitVec 64)) (t!47283 List!32582)) )
))
(declare-fun arrayNoDuplicates!0 (array!95043 (_ BitVec 32) List!32582) Bool)

(assert (=> b!1389854 (= res!930121 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32579))))

(declare-fun b!1389855 () Bool)

(declare-fun res!930123 () Bool)

(assert (=> b!1389855 (=> (not res!930123) (not e!787189))))

(assert (=> b!1389855 (= res!930123 (and (= (size!46434 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46434 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46434 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!930124 () Bool)

(assert (=> start!119188 (=> (not res!930124) (not e!787189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119188 (= res!930124 (validMask!0 mask!2840))))

(assert (=> start!119188 e!787189))

(assert (=> start!119188 true))

(declare-fun array_inv!34828 (array!95043) Bool)

(assert (=> start!119188 (array_inv!34828 a!2901)))

(declare-fun b!1389856 () Bool)

(declare-fun res!930125 () Bool)

(assert (=> b!1389856 (=> (not res!930125) (not e!787189))))

(assert (=> b!1389856 (= res!930125 (validKeyInArray!0 (select (arr!45883 a!2901) j!112)))))

(assert (= (and start!119188 res!930124) b!1389855))

(assert (= (and b!1389855 res!930123) b!1389851))

(assert (= (and b!1389851 res!930122) b!1389856))

(assert (= (and b!1389856 res!930125) b!1389853))

(assert (= (and b!1389853 res!930126) b!1389854))

(assert (= (and b!1389854 res!930121) b!1389852))

(declare-fun m!1275635 () Bool)

(assert (=> b!1389853 m!1275635))

(declare-fun m!1275637 () Bool)

(assert (=> b!1389852 m!1275637))

(declare-fun m!1275639 () Bool)

(assert (=> b!1389852 m!1275639))

(assert (=> b!1389852 m!1275637))

(declare-fun m!1275641 () Bool)

(assert (=> b!1389852 m!1275641))

(assert (=> b!1389852 m!1275639))

(assert (=> b!1389852 m!1275637))

(declare-fun m!1275643 () Bool)

(assert (=> b!1389852 m!1275643))

(declare-fun m!1275645 () Bool)

(assert (=> b!1389852 m!1275645))

(declare-fun m!1275647 () Bool)

(assert (=> start!119188 m!1275647))

(declare-fun m!1275649 () Bool)

(assert (=> start!119188 m!1275649))

(declare-fun m!1275651 () Bool)

(assert (=> b!1389854 m!1275651))

(assert (=> b!1389856 m!1275637))

(assert (=> b!1389856 m!1275637))

(declare-fun m!1275653 () Bool)

(assert (=> b!1389856 m!1275653))

(declare-fun m!1275655 () Bool)

(assert (=> b!1389851 m!1275655))

(assert (=> b!1389851 m!1275655))

(declare-fun m!1275657 () Bool)

(assert (=> b!1389851 m!1275657))

(push 1)

(assert (not b!1389851))

(assert (not start!119188))

(assert (not b!1389853))

(assert (not b!1389856))

(assert (not b!1389854))

(assert (not b!1389852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

