; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119206 () Bool)

(assert start!119206)

(declare-fun b!1390033 () Bool)

(declare-fun e!787265 () Bool)

(assert (=> b!1390033 (= e!787265 (not true))))

(declare-fun e!787263 () Bool)

(assert (=> b!1390033 e!787263))

(declare-fun res!930306 () Bool)

(assert (=> b!1390033 (=> (not res!930306) (not e!787263))))

(declare-datatypes ((array!95061 0))(
  ( (array!95062 (arr!45892 (Array (_ BitVec 32) (_ BitVec 64))) (size!46443 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95061)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95061 (_ BitVec 32)) Bool)

(assert (=> b!1390033 (= res!930306 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46416 0))(
  ( (Unit!46417) )
))
(declare-fun lt!610671 () Unit!46416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46416)

(assert (=> b!1390033 (= lt!610671 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10231 0))(
  ( (MissingZero!10231 (index!43294 (_ BitVec 32))) (Found!10231 (index!43295 (_ BitVec 32))) (Intermediate!10231 (undefined!11043 Bool) (index!43296 (_ BitVec 32)) (x!124984 (_ BitVec 32))) (Undefined!10231) (MissingVacant!10231 (index!43297 (_ BitVec 32))) )
))
(declare-fun lt!610672 () SeekEntryResult!10231)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95061 (_ BitVec 32)) SeekEntryResult!10231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390033 (= lt!610672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45892 a!2901) j!112) mask!2840) (select (arr!45892 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390034 () Bool)

(declare-fun res!930309 () Bool)

(assert (=> b!1390034 (=> (not res!930309) (not e!787265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390034 (= res!930309 (validKeyInArray!0 (select (arr!45892 a!2901) j!112)))))

(declare-fun b!1390035 () Bool)

(declare-fun res!930308 () Bool)

(assert (=> b!1390035 (=> (not res!930308) (not e!787265))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390035 (= res!930308 (and (= (size!46443 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46443 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46443 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390036 () Bool)

(declare-fun res!930305 () Bool)

(assert (=> b!1390036 (=> (not res!930305) (not e!787265))))

(assert (=> b!1390036 (= res!930305 (validKeyInArray!0 (select (arr!45892 a!2901) i!1037)))))

(declare-fun b!1390037 () Bool)

(declare-fun res!930304 () Bool)

(assert (=> b!1390037 (=> (not res!930304) (not e!787265))))

(assert (=> b!1390037 (= res!930304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!930307 () Bool)

(assert (=> start!119206 (=> (not res!930307) (not e!787265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119206 (= res!930307 (validMask!0 mask!2840))))

(assert (=> start!119206 e!787265))

(assert (=> start!119206 true))

(declare-fun array_inv!34837 (array!95061) Bool)

(assert (=> start!119206 (array_inv!34837 a!2901)))

(declare-fun b!1390038 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95061 (_ BitVec 32)) SeekEntryResult!10231)

(assert (=> b!1390038 (= e!787263 (= (seekEntryOrOpen!0 (select (arr!45892 a!2901) j!112) a!2901 mask!2840) (Found!10231 j!112)))))

(declare-fun b!1390039 () Bool)

(declare-fun res!930303 () Bool)

(assert (=> b!1390039 (=> (not res!930303) (not e!787265))))

(declare-datatypes ((List!32591 0))(
  ( (Nil!32588) (Cons!32587 (h!33805 (_ BitVec 64)) (t!47292 List!32591)) )
))
(declare-fun arrayNoDuplicates!0 (array!95061 (_ BitVec 32) List!32591) Bool)

(assert (=> b!1390039 (= res!930303 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32588))))

(assert (= (and start!119206 res!930307) b!1390035))

(assert (= (and b!1390035 res!930308) b!1390036))

(assert (= (and b!1390036 res!930305) b!1390034))

(assert (= (and b!1390034 res!930309) b!1390037))

(assert (= (and b!1390037 res!930304) b!1390039))

(assert (= (and b!1390039 res!930303) b!1390033))

(assert (= (and b!1390033 res!930306) b!1390038))

(declare-fun m!1275863 () Bool)

(assert (=> b!1390036 m!1275863))

(assert (=> b!1390036 m!1275863))

(declare-fun m!1275865 () Bool)

(assert (=> b!1390036 m!1275865))

(declare-fun m!1275867 () Bool)

(assert (=> b!1390034 m!1275867))

(assert (=> b!1390034 m!1275867))

(declare-fun m!1275869 () Bool)

(assert (=> b!1390034 m!1275869))

(declare-fun m!1275871 () Bool)

(assert (=> start!119206 m!1275871))

(declare-fun m!1275873 () Bool)

(assert (=> start!119206 m!1275873))

(assert (=> b!1390033 m!1275867))

(declare-fun m!1275875 () Bool)

(assert (=> b!1390033 m!1275875))

(assert (=> b!1390033 m!1275867))

(declare-fun m!1275877 () Bool)

(assert (=> b!1390033 m!1275877))

(assert (=> b!1390033 m!1275875))

(assert (=> b!1390033 m!1275867))

(declare-fun m!1275879 () Bool)

(assert (=> b!1390033 m!1275879))

(declare-fun m!1275881 () Bool)

(assert (=> b!1390033 m!1275881))

(declare-fun m!1275883 () Bool)

(assert (=> b!1390039 m!1275883))

(declare-fun m!1275885 () Bool)

(assert (=> b!1390037 m!1275885))

(assert (=> b!1390038 m!1275867))

(assert (=> b!1390038 m!1275867))

(declare-fun m!1275887 () Bool)

(assert (=> b!1390038 m!1275887))

(push 1)

(assert (not b!1390039))

(assert (not start!119206))

(assert (not b!1390038))

(assert (not b!1390034))

(assert (not b!1390033))

(assert (not b!1390036))

(assert (not b!1390037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

