; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119220 () Bool)

(assert start!119220)

(declare-fun b!1390180 () Bool)

(declare-fun res!930451 () Bool)

(declare-fun e!787327 () Bool)

(assert (=> b!1390180 (=> (not res!930451) (not e!787327))))

(declare-datatypes ((array!95075 0))(
  ( (array!95076 (arr!45899 (Array (_ BitVec 32) (_ BitVec 64))) (size!46450 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95075)

(declare-datatypes ((List!32598 0))(
  ( (Nil!32595) (Cons!32594 (h!33812 (_ BitVec 64)) (t!47299 List!32598)) )
))
(declare-fun arrayNoDuplicates!0 (array!95075 (_ BitVec 32) List!32598) Bool)

(assert (=> b!1390180 (= res!930451 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32595))))

(declare-fun b!1390181 () Bool)

(declare-fun res!930456 () Bool)

(assert (=> b!1390181 (=> (not res!930456) (not e!787327))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95075 (_ BitVec 32)) Bool)

(assert (=> b!1390181 (= res!930456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!930453 () Bool)

(assert (=> start!119220 (=> (not res!930453) (not e!787327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119220 (= res!930453 (validMask!0 mask!2840))))

(assert (=> start!119220 e!787327))

(assert (=> start!119220 true))

(declare-fun array_inv!34844 (array!95075) Bool)

(assert (=> start!119220 (array_inv!34844 a!2901)))

(declare-fun b!1390182 () Bool)

(declare-fun res!930452 () Bool)

(assert (=> b!1390182 (=> (not res!930452) (not e!787327))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390182 (= res!930452 (and (= (size!46450 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46450 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46450 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390183 () Bool)

(assert (=> b!1390183 (= e!787327 (not true))))

(declare-fun e!787328 () Bool)

(assert (=> b!1390183 e!787328))

(declare-fun res!930450 () Bool)

(assert (=> b!1390183 (=> (not res!930450) (not e!787328))))

(assert (=> b!1390183 (= res!930450 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46430 0))(
  ( (Unit!46431) )
))
(declare-fun lt!610714 () Unit!46430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46430)

(assert (=> b!1390183 (= lt!610714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10238 0))(
  ( (MissingZero!10238 (index!43322 (_ BitVec 32))) (Found!10238 (index!43323 (_ BitVec 32))) (Intermediate!10238 (undefined!11050 Bool) (index!43324 (_ BitVec 32)) (x!125007 (_ BitVec 32))) (Undefined!10238) (MissingVacant!10238 (index!43325 (_ BitVec 32))) )
))
(declare-fun lt!610713 () SeekEntryResult!10238)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95075 (_ BitVec 32)) SeekEntryResult!10238)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390183 (= lt!610713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45899 a!2901) j!112) mask!2840) (select (arr!45899 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390184 () Bool)

(declare-fun res!930454 () Bool)

(assert (=> b!1390184 (=> (not res!930454) (not e!787327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390184 (= res!930454 (validKeyInArray!0 (select (arr!45899 a!2901) i!1037)))))

(declare-fun b!1390185 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95075 (_ BitVec 32)) SeekEntryResult!10238)

(assert (=> b!1390185 (= e!787328 (= (seekEntryOrOpen!0 (select (arr!45899 a!2901) j!112) a!2901 mask!2840) (Found!10238 j!112)))))

(declare-fun b!1390186 () Bool)

(declare-fun res!930455 () Bool)

(assert (=> b!1390186 (=> (not res!930455) (not e!787327))))

(assert (=> b!1390186 (= res!930455 (validKeyInArray!0 (select (arr!45899 a!2901) j!112)))))

(assert (= (and start!119220 res!930453) b!1390182))

(assert (= (and b!1390182 res!930452) b!1390184))

(assert (= (and b!1390184 res!930454) b!1390186))

(assert (= (and b!1390186 res!930455) b!1390181))

(assert (= (and b!1390181 res!930456) b!1390180))

(assert (= (and b!1390180 res!930451) b!1390183))

(assert (= (and b!1390183 res!930450) b!1390185))

(declare-fun m!1276045 () Bool)

(assert (=> b!1390180 m!1276045))

(declare-fun m!1276047 () Bool)

(assert (=> b!1390181 m!1276047))

(declare-fun m!1276049 () Bool)

(assert (=> b!1390185 m!1276049))

(assert (=> b!1390185 m!1276049))

(declare-fun m!1276051 () Bool)

(assert (=> b!1390185 m!1276051))

(assert (=> b!1390183 m!1276049))

(declare-fun m!1276053 () Bool)

(assert (=> b!1390183 m!1276053))

(assert (=> b!1390183 m!1276049))

(declare-fun m!1276055 () Bool)

(assert (=> b!1390183 m!1276055))

(assert (=> b!1390183 m!1276053))

(assert (=> b!1390183 m!1276049))

(declare-fun m!1276057 () Bool)

(assert (=> b!1390183 m!1276057))

(declare-fun m!1276059 () Bool)

(assert (=> b!1390183 m!1276059))

(assert (=> b!1390186 m!1276049))

(assert (=> b!1390186 m!1276049))

(declare-fun m!1276061 () Bool)

(assert (=> b!1390186 m!1276061))

(declare-fun m!1276063 () Bool)

(assert (=> start!119220 m!1276063))

(declare-fun m!1276065 () Bool)

(assert (=> start!119220 m!1276065))

(declare-fun m!1276067 () Bool)

(assert (=> b!1390184 m!1276067))

(assert (=> b!1390184 m!1276067))

(declare-fun m!1276069 () Bool)

(assert (=> b!1390184 m!1276069))

(check-sat (not b!1390181) (not b!1390184) (not start!119220) (not b!1390185) (not b!1390186) (not b!1390183) (not b!1390180))
