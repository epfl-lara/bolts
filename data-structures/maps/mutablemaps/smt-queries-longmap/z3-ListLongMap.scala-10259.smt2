; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120648 () Bool)

(assert start!120648)

(declare-fun b!1404173 () Bool)

(declare-fun res!942796 () Bool)

(declare-fun e!794962 () Bool)

(assert (=> b!1404173 (=> (not res!942796) (not e!794962))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95975 0))(
  ( (array!95976 (arr!46334 (Array (_ BitVec 32) (_ BitVec 64))) (size!46885 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95975)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404173 (= res!942796 (and (= (size!46885 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46885 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46885 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404174 () Bool)

(declare-fun res!942794 () Bool)

(assert (=> b!1404174 (=> (not res!942794) (not e!794962))))

(declare-datatypes ((List!33033 0))(
  ( (Nil!33030) (Cons!33029 (h!34277 (_ BitVec 64)) (t!47734 List!33033)) )
))
(declare-fun arrayNoDuplicates!0 (array!95975 (_ BitVec 32) List!33033) Bool)

(assert (=> b!1404174 (= res!942794 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33030))))

(declare-fun b!1404175 () Bool)

(assert (=> b!1404175 (= e!794962 (bvsgt #b00000000000000000000000000000000 (size!46885 a!2901)))))

(declare-datatypes ((SeekEntryResult!10667 0))(
  ( (MissingZero!10667 (index!45044 (_ BitVec 32))) (Found!10667 (index!45045 (_ BitVec 32))) (Intermediate!10667 (undefined!11479 Bool) (index!45046 (_ BitVec 32)) (x!126665 (_ BitVec 32))) (Undefined!10667) (MissingVacant!10667 (index!45047 (_ BitVec 32))) )
))
(declare-fun lt!618553 () SeekEntryResult!10667)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95975 (_ BitVec 32)) SeekEntryResult!10667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404175 (= lt!618553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46334 a!2901) j!112) mask!2840) (select (arr!46334 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404176 () Bool)

(declare-fun res!942798 () Bool)

(assert (=> b!1404176 (=> (not res!942798) (not e!794962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404176 (= res!942798 (validKeyInArray!0 (select (arr!46334 a!2901) i!1037)))))

(declare-fun b!1404177 () Bool)

(declare-fun res!942795 () Bool)

(assert (=> b!1404177 (=> (not res!942795) (not e!794962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95975 (_ BitVec 32)) Bool)

(assert (=> b!1404177 (= res!942795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942797 () Bool)

(assert (=> start!120648 (=> (not res!942797) (not e!794962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120648 (= res!942797 (validMask!0 mask!2840))))

(assert (=> start!120648 e!794962))

(assert (=> start!120648 true))

(declare-fun array_inv!35279 (array!95975) Bool)

(assert (=> start!120648 (array_inv!35279 a!2901)))

(declare-fun b!1404178 () Bool)

(declare-fun res!942793 () Bool)

(assert (=> b!1404178 (=> (not res!942793) (not e!794962))))

(assert (=> b!1404178 (= res!942793 (validKeyInArray!0 (select (arr!46334 a!2901) j!112)))))

(assert (= (and start!120648 res!942797) b!1404173))

(assert (= (and b!1404173 res!942796) b!1404176))

(assert (= (and b!1404176 res!942798) b!1404178))

(assert (= (and b!1404178 res!942793) b!1404177))

(assert (= (and b!1404177 res!942795) b!1404174))

(assert (= (and b!1404174 res!942794) b!1404175))

(declare-fun m!1293049 () Bool)

(assert (=> b!1404174 m!1293049))

(declare-fun m!1293051 () Bool)

(assert (=> b!1404176 m!1293051))

(assert (=> b!1404176 m!1293051))

(declare-fun m!1293053 () Bool)

(assert (=> b!1404176 m!1293053))

(declare-fun m!1293055 () Bool)

(assert (=> b!1404175 m!1293055))

(assert (=> b!1404175 m!1293055))

(declare-fun m!1293057 () Bool)

(assert (=> b!1404175 m!1293057))

(assert (=> b!1404175 m!1293057))

(assert (=> b!1404175 m!1293055))

(declare-fun m!1293059 () Bool)

(assert (=> b!1404175 m!1293059))

(declare-fun m!1293061 () Bool)

(assert (=> start!120648 m!1293061))

(declare-fun m!1293063 () Bool)

(assert (=> start!120648 m!1293063))

(assert (=> b!1404178 m!1293055))

(assert (=> b!1404178 m!1293055))

(declare-fun m!1293065 () Bool)

(assert (=> b!1404178 m!1293065))

(declare-fun m!1293067 () Bool)

(assert (=> b!1404177 m!1293067))

(check-sat (not b!1404176) (not b!1404174) (not b!1404178) (not b!1404177) (not start!120648) (not b!1404175))
(check-sat)
