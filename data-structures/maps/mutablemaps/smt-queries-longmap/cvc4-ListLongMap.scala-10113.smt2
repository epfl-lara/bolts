; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119216 () Bool)

(assert start!119216)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95071 0))(
  ( (array!95072 (arr!45897 (Array (_ BitVec 32) (_ BitVec 64))) (size!46448 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95071)

(declare-fun b!1390138 () Bool)

(declare-fun e!787308 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10236 0))(
  ( (MissingZero!10236 (index!43314 (_ BitVec 32))) (Found!10236 (index!43315 (_ BitVec 32))) (Intermediate!10236 (undefined!11048 Bool) (index!43316 (_ BitVec 32)) (x!124997 (_ BitVec 32))) (Undefined!10236) (MissingVacant!10236 (index!43317 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95071 (_ BitVec 32)) SeekEntryResult!10236)

(assert (=> b!1390138 (= e!787308 (= (seekEntryOrOpen!0 (select (arr!45897 a!2901) j!112) a!2901 mask!2840) (Found!10236 j!112)))))

(declare-fun b!1390139 () Bool)

(declare-fun res!930410 () Bool)

(declare-fun e!787309 () Bool)

(assert (=> b!1390139 (=> (not res!930410) (not e!787309))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390139 (= res!930410 (validKeyInArray!0 (select (arr!45897 a!2901) i!1037)))))

(declare-fun b!1390141 () Bool)

(declare-fun res!930412 () Bool)

(assert (=> b!1390141 (=> (not res!930412) (not e!787309))))

(assert (=> b!1390141 (= res!930412 (validKeyInArray!0 (select (arr!45897 a!2901) j!112)))))

(declare-fun b!1390142 () Bool)

(declare-fun res!930409 () Bool)

(assert (=> b!1390142 (=> (not res!930409) (not e!787309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95071 (_ BitVec 32)) Bool)

(assert (=> b!1390142 (= res!930409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!930414 () Bool)

(assert (=> start!119216 (=> (not res!930414) (not e!787309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119216 (= res!930414 (validMask!0 mask!2840))))

(assert (=> start!119216 e!787309))

(assert (=> start!119216 true))

(declare-fun array_inv!34842 (array!95071) Bool)

(assert (=> start!119216 (array_inv!34842 a!2901)))

(declare-fun b!1390140 () Bool)

(assert (=> b!1390140 (= e!787309 (not true))))

(assert (=> b!1390140 e!787308))

(declare-fun res!930413 () Bool)

(assert (=> b!1390140 (=> (not res!930413) (not e!787308))))

(assert (=> b!1390140 (= res!930413 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46426 0))(
  ( (Unit!46427) )
))
(declare-fun lt!610701 () Unit!46426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46426)

(assert (=> b!1390140 (= lt!610701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610702 () SeekEntryResult!10236)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95071 (_ BitVec 32)) SeekEntryResult!10236)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390140 (= lt!610702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45897 a!2901) j!112) mask!2840) (select (arr!45897 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390143 () Bool)

(declare-fun res!930408 () Bool)

(assert (=> b!1390143 (=> (not res!930408) (not e!787309))))

(declare-datatypes ((List!32596 0))(
  ( (Nil!32593) (Cons!32592 (h!33810 (_ BitVec 64)) (t!47297 List!32596)) )
))
(declare-fun arrayNoDuplicates!0 (array!95071 (_ BitVec 32) List!32596) Bool)

(assert (=> b!1390143 (= res!930408 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32593))))

(declare-fun b!1390144 () Bool)

(declare-fun res!930411 () Bool)

(assert (=> b!1390144 (=> (not res!930411) (not e!787309))))

(assert (=> b!1390144 (= res!930411 (and (= (size!46448 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46448 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46448 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119216 res!930414) b!1390144))

(assert (= (and b!1390144 res!930411) b!1390139))

(assert (= (and b!1390139 res!930410) b!1390141))

(assert (= (and b!1390141 res!930412) b!1390142))

(assert (= (and b!1390142 res!930409) b!1390143))

(assert (= (and b!1390143 res!930408) b!1390140))

(assert (= (and b!1390140 res!930413) b!1390138))

(declare-fun m!1275993 () Bool)

(assert (=> b!1390139 m!1275993))

(assert (=> b!1390139 m!1275993))

(declare-fun m!1275995 () Bool)

(assert (=> b!1390139 m!1275995))

(declare-fun m!1275997 () Bool)

(assert (=> b!1390142 m!1275997))

(declare-fun m!1275999 () Bool)

(assert (=> b!1390141 m!1275999))

(assert (=> b!1390141 m!1275999))

(declare-fun m!1276001 () Bool)

(assert (=> b!1390141 m!1276001))

(assert (=> b!1390140 m!1275999))

(declare-fun m!1276003 () Bool)

(assert (=> b!1390140 m!1276003))

(assert (=> b!1390140 m!1275999))

(declare-fun m!1276005 () Bool)

(assert (=> b!1390140 m!1276005))

(assert (=> b!1390140 m!1276003))

(assert (=> b!1390140 m!1275999))

(declare-fun m!1276007 () Bool)

(assert (=> b!1390140 m!1276007))

(declare-fun m!1276009 () Bool)

(assert (=> b!1390140 m!1276009))

(declare-fun m!1276011 () Bool)

(assert (=> b!1390143 m!1276011))

(declare-fun m!1276013 () Bool)

(assert (=> start!119216 m!1276013))

(declare-fun m!1276015 () Bool)

(assert (=> start!119216 m!1276015))

(assert (=> b!1390138 m!1275999))

(assert (=> b!1390138 m!1275999))

(declare-fun m!1276017 () Bool)

(assert (=> b!1390138 m!1276017))

(push 1)

(assert (not b!1390142))

(assert (not b!1390138))

(assert (not b!1390141))

(assert (not b!1390140))

(assert (not start!119216))

(assert (not b!1390139))

(assert (not b!1390143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

