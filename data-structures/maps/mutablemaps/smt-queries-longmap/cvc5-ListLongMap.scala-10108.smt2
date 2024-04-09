; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119182 () Bool)

(assert start!119182)

(declare-fun b!1389797 () Bool)

(declare-fun res!930067 () Bool)

(declare-fun e!787172 () Bool)

(assert (=> b!1389797 (=> (not res!930067) (not e!787172))))

(declare-datatypes ((array!95037 0))(
  ( (array!95038 (arr!45880 (Array (_ BitVec 32) (_ BitVec 64))) (size!46431 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95037)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389797 (= res!930067 (validKeyInArray!0 (select (arr!45880 a!2901) j!112)))))

(declare-fun b!1389798 () Bool)

(declare-fun res!930069 () Bool)

(assert (=> b!1389798 (=> (not res!930069) (not e!787172))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389798 (= res!930069 (validKeyInArray!0 (select (arr!45880 a!2901) i!1037)))))

(declare-fun b!1389799 () Bool)

(declare-fun res!930070 () Bool)

(assert (=> b!1389799 (=> (not res!930070) (not e!787172))))

(declare-datatypes ((List!32579 0))(
  ( (Nil!32576) (Cons!32575 (h!33793 (_ BitVec 64)) (t!47280 List!32579)) )
))
(declare-fun arrayNoDuplicates!0 (array!95037 (_ BitVec 32) List!32579) Bool)

(assert (=> b!1389799 (= res!930070 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32576))))

(declare-fun b!1389800 () Bool)

(declare-fun res!930072 () Bool)

(assert (=> b!1389800 (=> (not res!930072) (not e!787172))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95037 (_ BitVec 32)) Bool)

(assert (=> b!1389800 (= res!930072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389801 () Bool)

(assert (=> b!1389801 (= e!787172 (not true))))

(assert (=> b!1389801 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46392 0))(
  ( (Unit!46393) )
))
(declare-fun lt!610599 () Unit!46392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46392)

(assert (=> b!1389801 (= lt!610599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10219 0))(
  ( (MissingZero!10219 (index!43246 (_ BitVec 32))) (Found!10219 (index!43247 (_ BitVec 32))) (Intermediate!10219 (undefined!11031 Bool) (index!43248 (_ BitVec 32)) (x!124940 (_ BitVec 32))) (Undefined!10219) (MissingVacant!10219 (index!43249 (_ BitVec 32))) )
))
(declare-fun lt!610600 () SeekEntryResult!10219)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95037 (_ BitVec 32)) SeekEntryResult!10219)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389801 (= lt!610600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45880 a!2901) j!112) mask!2840) (select (arr!45880 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389802 () Bool)

(declare-fun res!930071 () Bool)

(assert (=> b!1389802 (=> (not res!930071) (not e!787172))))

(assert (=> b!1389802 (= res!930071 (and (= (size!46431 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46431 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46431 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!930068 () Bool)

(assert (=> start!119182 (=> (not res!930068) (not e!787172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119182 (= res!930068 (validMask!0 mask!2840))))

(assert (=> start!119182 e!787172))

(assert (=> start!119182 true))

(declare-fun array_inv!34825 (array!95037) Bool)

(assert (=> start!119182 (array_inv!34825 a!2901)))

(assert (= (and start!119182 res!930068) b!1389802))

(assert (= (and b!1389802 res!930071) b!1389798))

(assert (= (and b!1389798 res!930069) b!1389797))

(assert (= (and b!1389797 res!930067) b!1389800))

(assert (= (and b!1389800 res!930072) b!1389799))

(assert (= (and b!1389799 res!930070) b!1389801))

(declare-fun m!1275563 () Bool)

(assert (=> b!1389799 m!1275563))

(declare-fun m!1275565 () Bool)

(assert (=> b!1389800 m!1275565))

(declare-fun m!1275567 () Bool)

(assert (=> start!119182 m!1275567))

(declare-fun m!1275569 () Bool)

(assert (=> start!119182 m!1275569))

(declare-fun m!1275571 () Bool)

(assert (=> b!1389798 m!1275571))

(assert (=> b!1389798 m!1275571))

(declare-fun m!1275573 () Bool)

(assert (=> b!1389798 m!1275573))

(declare-fun m!1275575 () Bool)

(assert (=> b!1389801 m!1275575))

(declare-fun m!1275577 () Bool)

(assert (=> b!1389801 m!1275577))

(assert (=> b!1389801 m!1275575))

(declare-fun m!1275579 () Bool)

(assert (=> b!1389801 m!1275579))

(assert (=> b!1389801 m!1275577))

(assert (=> b!1389801 m!1275575))

(declare-fun m!1275581 () Bool)

(assert (=> b!1389801 m!1275581))

(declare-fun m!1275583 () Bool)

(assert (=> b!1389801 m!1275583))

(assert (=> b!1389797 m!1275575))

(assert (=> b!1389797 m!1275575))

(declare-fun m!1275585 () Bool)

(assert (=> b!1389797 m!1275585))

(push 1)

(assert (not b!1389797))

(assert (not b!1389801))

(assert (not b!1389800))

(assert (not start!119182))

(assert (not b!1389798))

(assert (not b!1389799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

