; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119210 () Bool)

(assert start!119210)

(declare-fun b!1390075 () Bool)

(declare-fun res!930348 () Bool)

(declare-fun e!787281 () Bool)

(assert (=> b!1390075 (=> (not res!930348) (not e!787281))))

(declare-datatypes ((array!95065 0))(
  ( (array!95066 (arr!45894 (Array (_ BitVec 32) (_ BitVec 64))) (size!46445 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95065)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95065 (_ BitVec 32)) Bool)

(assert (=> b!1390075 (= res!930348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390076 () Bool)

(declare-fun res!930345 () Bool)

(assert (=> b!1390076 (=> (not res!930345) (not e!787281))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390076 (= res!930345 (validKeyInArray!0 (select (arr!45894 a!2901) j!112)))))

(declare-fun b!1390077 () Bool)

(declare-fun res!930350 () Bool)

(assert (=> b!1390077 (=> (not res!930350) (not e!787281))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390077 (= res!930350 (validKeyInArray!0 (select (arr!45894 a!2901) i!1037)))))

(declare-fun b!1390078 () Bool)

(declare-fun res!930347 () Bool)

(assert (=> b!1390078 (=> (not res!930347) (not e!787281))))

(assert (=> b!1390078 (= res!930347 (and (= (size!46445 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46445 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46445 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390079 () Bool)

(declare-fun res!930346 () Bool)

(assert (=> b!1390079 (=> (not res!930346) (not e!787281))))

(declare-datatypes ((List!32593 0))(
  ( (Nil!32590) (Cons!32589 (h!33807 (_ BitVec 64)) (t!47294 List!32593)) )
))
(declare-fun arrayNoDuplicates!0 (array!95065 (_ BitVec 32) List!32593) Bool)

(assert (=> b!1390079 (= res!930346 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32590))))

(declare-fun e!787283 () Bool)

(declare-fun b!1390080 () Bool)

(declare-datatypes ((SeekEntryResult!10233 0))(
  ( (MissingZero!10233 (index!43302 (_ BitVec 32))) (Found!10233 (index!43303 (_ BitVec 32))) (Intermediate!10233 (undefined!11045 Bool) (index!43304 (_ BitVec 32)) (x!124986 (_ BitVec 32))) (Undefined!10233) (MissingVacant!10233 (index!43305 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95065 (_ BitVec 32)) SeekEntryResult!10233)

(assert (=> b!1390080 (= e!787283 (= (seekEntryOrOpen!0 (select (arr!45894 a!2901) j!112) a!2901 mask!2840) (Found!10233 j!112)))))

(declare-fun res!930351 () Bool)

(assert (=> start!119210 (=> (not res!930351) (not e!787281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119210 (= res!930351 (validMask!0 mask!2840))))

(assert (=> start!119210 e!787281))

(assert (=> start!119210 true))

(declare-fun array_inv!34839 (array!95065) Bool)

(assert (=> start!119210 (array_inv!34839 a!2901)))

(declare-fun b!1390081 () Bool)

(assert (=> b!1390081 (= e!787281 (not true))))

(assert (=> b!1390081 e!787283))

(declare-fun res!930349 () Bool)

(assert (=> b!1390081 (=> (not res!930349) (not e!787283))))

(assert (=> b!1390081 (= res!930349 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46420 0))(
  ( (Unit!46421) )
))
(declare-fun lt!610683 () Unit!46420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46420)

(assert (=> b!1390081 (= lt!610683 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610684 () SeekEntryResult!10233)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95065 (_ BitVec 32)) SeekEntryResult!10233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390081 (= lt!610684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45894 a!2901) j!112) mask!2840) (select (arr!45894 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119210 res!930351) b!1390078))

(assert (= (and b!1390078 res!930347) b!1390077))

(assert (= (and b!1390077 res!930350) b!1390076))

(assert (= (and b!1390076 res!930345) b!1390075))

(assert (= (and b!1390075 res!930348) b!1390079))

(assert (= (and b!1390079 res!930346) b!1390081))

(assert (= (and b!1390081 res!930349) b!1390080))

(declare-fun m!1275915 () Bool)

(assert (=> b!1390076 m!1275915))

(assert (=> b!1390076 m!1275915))

(declare-fun m!1275917 () Bool)

(assert (=> b!1390076 m!1275917))

(declare-fun m!1275919 () Bool)

(assert (=> b!1390079 m!1275919))

(assert (=> b!1390081 m!1275915))

(declare-fun m!1275921 () Bool)

(assert (=> b!1390081 m!1275921))

(assert (=> b!1390081 m!1275915))

(declare-fun m!1275923 () Bool)

(assert (=> b!1390081 m!1275923))

(assert (=> b!1390081 m!1275921))

(assert (=> b!1390081 m!1275915))

(declare-fun m!1275925 () Bool)

(assert (=> b!1390081 m!1275925))

(declare-fun m!1275927 () Bool)

(assert (=> b!1390081 m!1275927))

(declare-fun m!1275929 () Bool)

(assert (=> start!119210 m!1275929))

(declare-fun m!1275931 () Bool)

(assert (=> start!119210 m!1275931))

(assert (=> b!1390080 m!1275915))

(assert (=> b!1390080 m!1275915))

(declare-fun m!1275933 () Bool)

(assert (=> b!1390080 m!1275933))

(declare-fun m!1275935 () Bool)

(assert (=> b!1390077 m!1275935))

(assert (=> b!1390077 m!1275935))

(declare-fun m!1275937 () Bool)

(assert (=> b!1390077 m!1275937))

(declare-fun m!1275939 () Bool)

(assert (=> b!1390075 m!1275939))

(push 1)

(assert (not start!119210))

(assert (not b!1390075))

(assert (not b!1390077))

(assert (not b!1390076))

(assert (not b!1390081))

(assert (not b!1390079))

(assert (not b!1390080))

(check-sat)

(pop 1)

(push 1)

