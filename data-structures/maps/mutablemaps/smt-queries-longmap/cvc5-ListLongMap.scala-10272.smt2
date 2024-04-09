; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120832 () Bool)

(assert start!120832)

(declare-fun b!1405387 () Bool)

(declare-fun res!943717 () Bool)

(declare-fun e!795553 () Bool)

(assert (=> b!1405387 (=> (not res!943717) (not e!795553))))

(declare-datatypes ((array!96057 0))(
  ( (array!96058 (arr!46372 (Array (_ BitVec 32) (_ BitVec 64))) (size!46923 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96057)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96057 (_ BitVec 32)) Bool)

(assert (=> b!1405387 (= res!943717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405388 () Bool)

(declare-fun res!943719 () Bool)

(assert (=> b!1405388 (=> (not res!943719) (not e!795553))))

(declare-datatypes ((List!33071 0))(
  ( (Nil!33068) (Cons!33067 (h!34321 (_ BitVec 64)) (t!47772 List!33071)) )
))
(declare-fun arrayNoDuplicates!0 (array!96057 (_ BitVec 32) List!33071) Bool)

(assert (=> b!1405388 (= res!943719 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33068))))

(declare-fun b!1405389 () Bool)

(declare-fun res!943713 () Bool)

(assert (=> b!1405389 (=> (not res!943713) (not e!795553))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405389 (= res!943713 (validKeyInArray!0 (select (arr!46372 a!2901) j!112)))))

(declare-fun res!943714 () Bool)

(assert (=> start!120832 (=> (not res!943714) (not e!795553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120832 (= res!943714 (validMask!0 mask!2840))))

(assert (=> start!120832 e!795553))

(assert (=> start!120832 true))

(declare-fun array_inv!35317 (array!96057) Bool)

(assert (=> start!120832 (array_inv!35317 a!2901)))

(declare-fun e!795552 () Bool)

(declare-fun b!1405390 () Bool)

(declare-datatypes ((SeekEntryResult!10705 0))(
  ( (MissingZero!10705 (index!45196 (_ BitVec 32))) (Found!10705 (index!45197 (_ BitVec 32))) (Intermediate!10705 (undefined!11517 Bool) (index!45198 (_ BitVec 32)) (x!126819 (_ BitVec 32))) (Undefined!10705) (MissingVacant!10705 (index!45199 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96057 (_ BitVec 32)) SeekEntryResult!10705)

(assert (=> b!1405390 (= e!795552 (= (seekEntryOrOpen!0 (select (arr!46372 a!2901) j!112) a!2901 mask!2840) (Found!10705 j!112)))))

(declare-fun b!1405391 () Bool)

(assert (=> b!1405391 (= e!795553 (not true))))

(assert (=> b!1405391 e!795552))

(declare-fun res!943718 () Bool)

(assert (=> b!1405391 (=> (not res!943718) (not e!795552))))

(assert (=> b!1405391 (= res!943718 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47334 0))(
  ( (Unit!47335) )
))
(declare-fun lt!618975 () Unit!47334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47334)

(assert (=> b!1405391 (= lt!618975 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618976 () SeekEntryResult!10705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96057 (_ BitVec 32)) SeekEntryResult!10705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405391 (= lt!618976 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46372 a!2901) j!112) mask!2840) (select (arr!46372 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405392 () Bool)

(declare-fun res!943715 () Bool)

(assert (=> b!1405392 (=> (not res!943715) (not e!795553))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405392 (= res!943715 (and (= (size!46923 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46923 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46923 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405393 () Bool)

(declare-fun res!943716 () Bool)

(assert (=> b!1405393 (=> (not res!943716) (not e!795553))))

(assert (=> b!1405393 (= res!943716 (validKeyInArray!0 (select (arr!46372 a!2901) i!1037)))))

(assert (= (and start!120832 res!943714) b!1405392))

(assert (= (and b!1405392 res!943715) b!1405393))

(assert (= (and b!1405393 res!943716) b!1405389))

(assert (= (and b!1405389 res!943713) b!1405387))

(assert (= (and b!1405387 res!943717) b!1405388))

(assert (= (and b!1405388 res!943719) b!1405391))

(assert (= (and b!1405391 res!943718) b!1405390))

(declare-fun m!1294235 () Bool)

(assert (=> b!1405387 m!1294235))

(declare-fun m!1294237 () Bool)

(assert (=> start!120832 m!1294237))

(declare-fun m!1294239 () Bool)

(assert (=> start!120832 m!1294239))

(declare-fun m!1294241 () Bool)

(assert (=> b!1405390 m!1294241))

(assert (=> b!1405390 m!1294241))

(declare-fun m!1294243 () Bool)

(assert (=> b!1405390 m!1294243))

(declare-fun m!1294245 () Bool)

(assert (=> b!1405393 m!1294245))

(assert (=> b!1405393 m!1294245))

(declare-fun m!1294247 () Bool)

(assert (=> b!1405393 m!1294247))

(assert (=> b!1405391 m!1294241))

(declare-fun m!1294249 () Bool)

(assert (=> b!1405391 m!1294249))

(assert (=> b!1405391 m!1294241))

(declare-fun m!1294251 () Bool)

(assert (=> b!1405391 m!1294251))

(assert (=> b!1405391 m!1294249))

(assert (=> b!1405391 m!1294241))

(declare-fun m!1294253 () Bool)

(assert (=> b!1405391 m!1294253))

(declare-fun m!1294255 () Bool)

(assert (=> b!1405391 m!1294255))

(declare-fun m!1294257 () Bool)

(assert (=> b!1405388 m!1294257))

(assert (=> b!1405389 m!1294241))

(assert (=> b!1405389 m!1294241))

(declare-fun m!1294259 () Bool)

(assert (=> b!1405389 m!1294259))

(push 1)

(assert (not start!120832))

(assert (not b!1405391))

(assert (not b!1405389))

(assert (not b!1405390))

(assert (not b!1405387))

(assert (not b!1405388))

(assert (not b!1405393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

