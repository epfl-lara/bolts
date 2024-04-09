; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119204 () Bool)

(assert start!119204)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95059 0))(
  ( (array!95060 (arr!45891 (Array (_ BitVec 32) (_ BitVec 64))) (size!46442 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95059)

(declare-fun b!1390012 () Bool)

(declare-fun e!787254 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10230 0))(
  ( (MissingZero!10230 (index!43290 (_ BitVec 32))) (Found!10230 (index!43291 (_ BitVec 32))) (Intermediate!10230 (undefined!11042 Bool) (index!43292 (_ BitVec 32)) (x!124975 (_ BitVec 32))) (Undefined!10230) (MissingVacant!10230 (index!43293 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95059 (_ BitVec 32)) SeekEntryResult!10230)

(assert (=> b!1390012 (= e!787254 (= (seekEntryOrOpen!0 (select (arr!45891 a!2901) j!112) a!2901 mask!2840) (Found!10230 j!112)))))

(declare-fun res!930285 () Bool)

(declare-fun e!787255 () Bool)

(assert (=> start!119204 (=> (not res!930285) (not e!787255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119204 (= res!930285 (validMask!0 mask!2840))))

(assert (=> start!119204 e!787255))

(assert (=> start!119204 true))

(declare-fun array_inv!34836 (array!95059) Bool)

(assert (=> start!119204 (array_inv!34836 a!2901)))

(declare-fun b!1390013 () Bool)

(declare-fun res!930283 () Bool)

(assert (=> b!1390013 (=> (not res!930283) (not e!787255))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390013 (= res!930283 (and (= (size!46442 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46442 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46442 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390014 () Bool)

(declare-fun res!930284 () Bool)

(assert (=> b!1390014 (=> (not res!930284) (not e!787255))))

(declare-datatypes ((List!32590 0))(
  ( (Nil!32587) (Cons!32586 (h!33804 (_ BitVec 64)) (t!47291 List!32590)) )
))
(declare-fun arrayNoDuplicates!0 (array!95059 (_ BitVec 32) List!32590) Bool)

(assert (=> b!1390014 (= res!930284 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32587))))

(declare-fun b!1390015 () Bool)

(declare-fun res!930287 () Bool)

(assert (=> b!1390015 (=> (not res!930287) (not e!787255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390015 (= res!930287 (validKeyInArray!0 (select (arr!45891 a!2901) j!112)))))

(declare-fun b!1390016 () Bool)

(declare-fun res!930282 () Bool)

(assert (=> b!1390016 (=> (not res!930282) (not e!787255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95059 (_ BitVec 32)) Bool)

(assert (=> b!1390016 (= res!930282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390017 () Bool)

(declare-fun res!930288 () Bool)

(assert (=> b!1390017 (=> (not res!930288) (not e!787255))))

(assert (=> b!1390017 (= res!930288 (validKeyInArray!0 (select (arr!45891 a!2901) i!1037)))))

(declare-fun b!1390018 () Bool)

(assert (=> b!1390018 (= e!787255 (not true))))

(assert (=> b!1390018 e!787254))

(declare-fun res!930286 () Bool)

(assert (=> b!1390018 (=> (not res!930286) (not e!787254))))

(assert (=> b!1390018 (= res!930286 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46414 0))(
  ( (Unit!46415) )
))
(declare-fun lt!610665 () Unit!46414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46414)

(assert (=> b!1390018 (= lt!610665 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610666 () SeekEntryResult!10230)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95059 (_ BitVec 32)) SeekEntryResult!10230)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390018 (= lt!610666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45891 a!2901) j!112) mask!2840) (select (arr!45891 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119204 res!930285) b!1390013))

(assert (= (and b!1390013 res!930283) b!1390017))

(assert (= (and b!1390017 res!930288) b!1390015))

(assert (= (and b!1390015 res!930287) b!1390016))

(assert (= (and b!1390016 res!930282) b!1390014))

(assert (= (and b!1390014 res!930284) b!1390018))

(assert (= (and b!1390018 res!930286) b!1390012))

(declare-fun m!1275837 () Bool)

(assert (=> b!1390012 m!1275837))

(assert (=> b!1390012 m!1275837))

(declare-fun m!1275839 () Bool)

(assert (=> b!1390012 m!1275839))

(assert (=> b!1390018 m!1275837))

(declare-fun m!1275841 () Bool)

(assert (=> b!1390018 m!1275841))

(assert (=> b!1390018 m!1275837))

(declare-fun m!1275843 () Bool)

(assert (=> b!1390018 m!1275843))

(assert (=> b!1390018 m!1275841))

(assert (=> b!1390018 m!1275837))

(declare-fun m!1275845 () Bool)

(assert (=> b!1390018 m!1275845))

(declare-fun m!1275847 () Bool)

(assert (=> b!1390018 m!1275847))

(declare-fun m!1275849 () Bool)

(assert (=> b!1390017 m!1275849))

(assert (=> b!1390017 m!1275849))

(declare-fun m!1275851 () Bool)

(assert (=> b!1390017 m!1275851))

(declare-fun m!1275853 () Bool)

(assert (=> start!119204 m!1275853))

(declare-fun m!1275855 () Bool)

(assert (=> start!119204 m!1275855))

(declare-fun m!1275857 () Bool)

(assert (=> b!1390014 m!1275857))

(declare-fun m!1275859 () Bool)

(assert (=> b!1390016 m!1275859))

(assert (=> b!1390015 m!1275837))

(assert (=> b!1390015 m!1275837))

(declare-fun m!1275861 () Bool)

(assert (=> b!1390015 m!1275861))

(push 1)

(assert (not b!1390018))

(assert (not b!1390014))

(assert (not b!1390012))

(assert (not start!119204))

(assert (not b!1390015))

(assert (not b!1390016))

(assert (not b!1390017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

