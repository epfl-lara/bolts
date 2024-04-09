; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120810 () Bool)

(assert start!120810)

(declare-fun b!1405156 () Bool)

(declare-fun res!943486 () Bool)

(declare-fun e!795453 () Bool)

(assert (=> b!1405156 (=> (not res!943486) (not e!795453))))

(declare-datatypes ((array!96035 0))(
  ( (array!96036 (arr!46361 (Array (_ BitVec 32) (_ BitVec 64))) (size!46912 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96035)

(declare-datatypes ((List!33060 0))(
  ( (Nil!33057) (Cons!33056 (h!34310 (_ BitVec 64)) (t!47761 List!33060)) )
))
(declare-fun arrayNoDuplicates!0 (array!96035 (_ BitVec 32) List!33060) Bool)

(assert (=> b!1405156 (= res!943486 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33057))))

(declare-fun b!1405157 () Bool)

(declare-fun res!943487 () Bool)

(assert (=> b!1405157 (=> (not res!943487) (not e!795453))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405157 (= res!943487 (validKeyInArray!0 (select (arr!46361 a!2901) j!112)))))

(declare-fun b!1405158 () Bool)

(declare-fun res!943482 () Bool)

(assert (=> b!1405158 (=> (not res!943482) (not e!795453))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405158 (= res!943482 (validKeyInArray!0 (select (arr!46361 a!2901) i!1037)))))

(declare-fun b!1405159 () Bool)

(declare-fun res!943488 () Bool)

(assert (=> b!1405159 (=> (not res!943488) (not e!795453))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96035 (_ BitVec 32)) Bool)

(assert (=> b!1405159 (= res!943488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405160 () Bool)

(declare-fun res!943485 () Bool)

(assert (=> b!1405160 (=> (not res!943485) (not e!795453))))

(assert (=> b!1405160 (= res!943485 (and (= (size!46912 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46912 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46912 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943483 () Bool)

(assert (=> start!120810 (=> (not res!943483) (not e!795453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120810 (= res!943483 (validMask!0 mask!2840))))

(assert (=> start!120810 e!795453))

(assert (=> start!120810 true))

(declare-fun array_inv!35306 (array!96035) Bool)

(assert (=> start!120810 (array_inv!35306 a!2901)))

(declare-fun b!1405161 () Bool)

(declare-fun e!795455 () Bool)

(declare-datatypes ((SeekEntryResult!10694 0))(
  ( (MissingZero!10694 (index!45152 (_ BitVec 32))) (Found!10694 (index!45153 (_ BitVec 32))) (Intermediate!10694 (undefined!11506 Bool) (index!45154 (_ BitVec 32)) (x!126776 (_ BitVec 32))) (Undefined!10694) (MissingVacant!10694 (index!45155 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96035 (_ BitVec 32)) SeekEntryResult!10694)

(assert (=> b!1405161 (= e!795455 (= (seekEntryOrOpen!0 (select (arr!46361 a!2901) j!112) a!2901 mask!2840) (Found!10694 j!112)))))

(declare-fun b!1405162 () Bool)

(assert (=> b!1405162 (= e!795453 (not true))))

(assert (=> b!1405162 e!795455))

(declare-fun res!943484 () Bool)

(assert (=> b!1405162 (=> (not res!943484) (not e!795455))))

(assert (=> b!1405162 (= res!943484 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47312 0))(
  ( (Unit!47313) )
))
(declare-fun lt!618909 () Unit!47312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47312)

(assert (=> b!1405162 (= lt!618909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618910 () SeekEntryResult!10694)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96035 (_ BitVec 32)) SeekEntryResult!10694)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405162 (= lt!618910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46361 a!2901) j!112) mask!2840) (select (arr!46361 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120810 res!943483) b!1405160))

(assert (= (and b!1405160 res!943485) b!1405158))

(assert (= (and b!1405158 res!943482) b!1405157))

(assert (= (and b!1405157 res!943487) b!1405159))

(assert (= (and b!1405159 res!943488) b!1405156))

(assert (= (and b!1405156 res!943486) b!1405162))

(assert (= (and b!1405162 res!943484) b!1405161))

(declare-fun m!1293949 () Bool)

(assert (=> b!1405158 m!1293949))

(assert (=> b!1405158 m!1293949))

(declare-fun m!1293951 () Bool)

(assert (=> b!1405158 m!1293951))

(declare-fun m!1293953 () Bool)

(assert (=> b!1405159 m!1293953))

(declare-fun m!1293955 () Bool)

(assert (=> b!1405156 m!1293955))

(declare-fun m!1293957 () Bool)

(assert (=> b!1405161 m!1293957))

(assert (=> b!1405161 m!1293957))

(declare-fun m!1293959 () Bool)

(assert (=> b!1405161 m!1293959))

(assert (=> b!1405162 m!1293957))

(declare-fun m!1293961 () Bool)

(assert (=> b!1405162 m!1293961))

(assert (=> b!1405162 m!1293957))

(declare-fun m!1293963 () Bool)

(assert (=> b!1405162 m!1293963))

(assert (=> b!1405162 m!1293961))

(assert (=> b!1405162 m!1293957))

(declare-fun m!1293965 () Bool)

(assert (=> b!1405162 m!1293965))

(declare-fun m!1293967 () Bool)

(assert (=> b!1405162 m!1293967))

(assert (=> b!1405157 m!1293957))

(assert (=> b!1405157 m!1293957))

(declare-fun m!1293969 () Bool)

(assert (=> b!1405157 m!1293969))

(declare-fun m!1293971 () Bool)

(assert (=> start!120810 m!1293971))

(declare-fun m!1293973 () Bool)

(assert (=> start!120810 m!1293973))

(check-sat (not b!1405162) (not b!1405161) (not b!1405156) (not b!1405157) (not start!120810) (not b!1405158) (not b!1405159))
