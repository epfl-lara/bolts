; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120812 () Bool)

(assert start!120812)

(declare-fun b!1405177 () Bool)

(declare-fun res!943507 () Bool)

(declare-fun e!795463 () Bool)

(assert (=> b!1405177 (=> (not res!943507) (not e!795463))))

(declare-datatypes ((array!96037 0))(
  ( (array!96038 (arr!46362 (Array (_ BitVec 32) (_ BitVec 64))) (size!46913 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96037)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96037 (_ BitVec 32)) Bool)

(assert (=> b!1405177 (= res!943507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405178 () Bool)

(declare-fun res!943505 () Bool)

(assert (=> b!1405178 (=> (not res!943505) (not e!795463))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405178 (= res!943505 (and (= (size!46913 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46913 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46913 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943504 () Bool)

(assert (=> start!120812 (=> (not res!943504) (not e!795463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120812 (= res!943504 (validMask!0 mask!2840))))

(assert (=> start!120812 e!795463))

(assert (=> start!120812 true))

(declare-fun array_inv!35307 (array!96037) Bool)

(assert (=> start!120812 (array_inv!35307 a!2901)))

(declare-fun b!1405179 () Bool)

(declare-fun res!943508 () Bool)

(assert (=> b!1405179 (=> (not res!943508) (not e!795463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405179 (= res!943508 (validKeyInArray!0 (select (arr!46362 a!2901) i!1037)))))

(declare-fun b!1405180 () Bool)

(assert (=> b!1405180 (= e!795463 (not true))))

(declare-fun e!795462 () Bool)

(assert (=> b!1405180 e!795462))

(declare-fun res!943509 () Bool)

(assert (=> b!1405180 (=> (not res!943509) (not e!795462))))

(assert (=> b!1405180 (= res!943509 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47314 0))(
  ( (Unit!47315) )
))
(declare-fun lt!618916 () Unit!47314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47314)

(assert (=> b!1405180 (= lt!618916 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10695 0))(
  ( (MissingZero!10695 (index!45156 (_ BitVec 32))) (Found!10695 (index!45157 (_ BitVec 32))) (Intermediate!10695 (undefined!11507 Bool) (index!45158 (_ BitVec 32)) (x!126777 (_ BitVec 32))) (Undefined!10695) (MissingVacant!10695 (index!45159 (_ BitVec 32))) )
))
(declare-fun lt!618915 () SeekEntryResult!10695)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96037 (_ BitVec 32)) SeekEntryResult!10695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405180 (= lt!618915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46362 a!2901) j!112) mask!2840) (select (arr!46362 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405181 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96037 (_ BitVec 32)) SeekEntryResult!10695)

(assert (=> b!1405181 (= e!795462 (= (seekEntryOrOpen!0 (select (arr!46362 a!2901) j!112) a!2901 mask!2840) (Found!10695 j!112)))))

(declare-fun b!1405182 () Bool)

(declare-fun res!943503 () Bool)

(assert (=> b!1405182 (=> (not res!943503) (not e!795463))))

(declare-datatypes ((List!33061 0))(
  ( (Nil!33058) (Cons!33057 (h!34311 (_ BitVec 64)) (t!47762 List!33061)) )
))
(declare-fun arrayNoDuplicates!0 (array!96037 (_ BitVec 32) List!33061) Bool)

(assert (=> b!1405182 (= res!943503 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33058))))

(declare-fun b!1405183 () Bool)

(declare-fun res!943506 () Bool)

(assert (=> b!1405183 (=> (not res!943506) (not e!795463))))

(assert (=> b!1405183 (= res!943506 (validKeyInArray!0 (select (arr!46362 a!2901) j!112)))))

(assert (= (and start!120812 res!943504) b!1405178))

(assert (= (and b!1405178 res!943505) b!1405179))

(assert (= (and b!1405179 res!943508) b!1405183))

(assert (= (and b!1405183 res!943506) b!1405177))

(assert (= (and b!1405177 res!943507) b!1405182))

(assert (= (and b!1405182 res!943503) b!1405180))

(assert (= (and b!1405180 res!943509) b!1405181))

(declare-fun m!1293975 () Bool)

(assert (=> b!1405179 m!1293975))

(assert (=> b!1405179 m!1293975))

(declare-fun m!1293977 () Bool)

(assert (=> b!1405179 m!1293977))

(declare-fun m!1293979 () Bool)

(assert (=> b!1405182 m!1293979))

(declare-fun m!1293981 () Bool)

(assert (=> b!1405181 m!1293981))

(assert (=> b!1405181 m!1293981))

(declare-fun m!1293983 () Bool)

(assert (=> b!1405181 m!1293983))

(declare-fun m!1293985 () Bool)

(assert (=> b!1405177 m!1293985))

(assert (=> b!1405183 m!1293981))

(assert (=> b!1405183 m!1293981))

(declare-fun m!1293987 () Bool)

(assert (=> b!1405183 m!1293987))

(declare-fun m!1293989 () Bool)

(assert (=> start!120812 m!1293989))

(declare-fun m!1293991 () Bool)

(assert (=> start!120812 m!1293991))

(assert (=> b!1405180 m!1293981))

(declare-fun m!1293993 () Bool)

(assert (=> b!1405180 m!1293993))

(assert (=> b!1405180 m!1293981))

(declare-fun m!1293995 () Bool)

(assert (=> b!1405180 m!1293995))

(assert (=> b!1405180 m!1293993))

(assert (=> b!1405180 m!1293981))

(declare-fun m!1293997 () Bool)

(assert (=> b!1405180 m!1293997))

(declare-fun m!1293999 () Bool)

(assert (=> b!1405180 m!1293999))

(push 1)

(assert (not b!1405177))

(assert (not start!120812))

(assert (not b!1405182))

(assert (not b!1405181))

(assert (not b!1405183))

(assert (not b!1405179))

(assert (not b!1405180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

