; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120828 () Bool)

(assert start!120828)

(declare-fun b!1405345 () Bool)

(declare-fun res!943674 () Bool)

(declare-fun e!795535 () Bool)

(assert (=> b!1405345 (=> (not res!943674) (not e!795535))))

(declare-datatypes ((array!96053 0))(
  ( (array!96054 (arr!46370 (Array (_ BitVec 32) (_ BitVec 64))) (size!46921 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96053)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96053 (_ BitVec 32)) Bool)

(assert (=> b!1405345 (= res!943674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405346 () Bool)

(declare-fun res!943676 () Bool)

(assert (=> b!1405346 (=> (not res!943676) (not e!795535))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405346 (= res!943676 (validKeyInArray!0 (select (arr!46370 a!2901) j!112)))))

(declare-fun b!1405347 () Bool)

(declare-fun res!943673 () Bool)

(assert (=> b!1405347 (=> (not res!943673) (not e!795535))))

(declare-datatypes ((List!33069 0))(
  ( (Nil!33066) (Cons!33065 (h!34319 (_ BitVec 64)) (t!47770 List!33069)) )
))
(declare-fun arrayNoDuplicates!0 (array!96053 (_ BitVec 32) List!33069) Bool)

(assert (=> b!1405347 (= res!943673 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33066))))

(declare-fun b!1405348 () Bool)

(declare-fun res!943672 () Bool)

(assert (=> b!1405348 (=> (not res!943672) (not e!795535))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405348 (= res!943672 (validKeyInArray!0 (select (arr!46370 a!2901) i!1037)))))

(declare-fun e!795534 () Bool)

(declare-fun b!1405349 () Bool)

(declare-datatypes ((SeekEntryResult!10703 0))(
  ( (MissingZero!10703 (index!45188 (_ BitVec 32))) (Found!10703 (index!45189 (_ BitVec 32))) (Intermediate!10703 (undefined!11515 Bool) (index!45190 (_ BitVec 32)) (x!126809 (_ BitVec 32))) (Undefined!10703) (MissingVacant!10703 (index!45191 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96053 (_ BitVec 32)) SeekEntryResult!10703)

(assert (=> b!1405349 (= e!795534 (= (seekEntryOrOpen!0 (select (arr!46370 a!2901) j!112) a!2901 mask!2840) (Found!10703 j!112)))))

(declare-fun b!1405350 () Bool)

(assert (=> b!1405350 (= e!795535 (not true))))

(assert (=> b!1405350 e!795534))

(declare-fun res!943675 () Bool)

(assert (=> b!1405350 (=> (not res!943675) (not e!795534))))

(assert (=> b!1405350 (= res!943675 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47330 0))(
  ( (Unit!47331) )
))
(declare-fun lt!618964 () Unit!47330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47330)

(assert (=> b!1405350 (= lt!618964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618963 () SeekEntryResult!10703)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96053 (_ BitVec 32)) SeekEntryResult!10703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405350 (= lt!618963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46370 a!2901) j!112) mask!2840) (select (arr!46370 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405351 () Bool)

(declare-fun res!943671 () Bool)

(assert (=> b!1405351 (=> (not res!943671) (not e!795535))))

(assert (=> b!1405351 (= res!943671 (and (= (size!46921 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46921 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46921 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!943677 () Bool)

(assert (=> start!120828 (=> (not res!943677) (not e!795535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120828 (= res!943677 (validMask!0 mask!2840))))

(assert (=> start!120828 e!795535))

(assert (=> start!120828 true))

(declare-fun array_inv!35315 (array!96053) Bool)

(assert (=> start!120828 (array_inv!35315 a!2901)))

(assert (= (and start!120828 res!943677) b!1405351))

(assert (= (and b!1405351 res!943671) b!1405348))

(assert (= (and b!1405348 res!943672) b!1405346))

(assert (= (and b!1405346 res!943676) b!1405345))

(assert (= (and b!1405345 res!943674) b!1405347))

(assert (= (and b!1405347 res!943673) b!1405350))

(assert (= (and b!1405350 res!943675) b!1405349))

(declare-fun m!1294183 () Bool)

(assert (=> b!1405345 m!1294183))

(declare-fun m!1294185 () Bool)

(assert (=> b!1405347 m!1294185))

(declare-fun m!1294187 () Bool)

(assert (=> b!1405346 m!1294187))

(assert (=> b!1405346 m!1294187))

(declare-fun m!1294189 () Bool)

(assert (=> b!1405346 m!1294189))

(declare-fun m!1294191 () Bool)

(assert (=> start!120828 m!1294191))

(declare-fun m!1294193 () Bool)

(assert (=> start!120828 m!1294193))

(declare-fun m!1294195 () Bool)

(assert (=> b!1405348 m!1294195))

(assert (=> b!1405348 m!1294195))

(declare-fun m!1294197 () Bool)

(assert (=> b!1405348 m!1294197))

(assert (=> b!1405349 m!1294187))

(assert (=> b!1405349 m!1294187))

(declare-fun m!1294199 () Bool)

(assert (=> b!1405349 m!1294199))

(assert (=> b!1405350 m!1294187))

(declare-fun m!1294201 () Bool)

(assert (=> b!1405350 m!1294201))

(assert (=> b!1405350 m!1294187))

(declare-fun m!1294203 () Bool)

(assert (=> b!1405350 m!1294203))

(assert (=> b!1405350 m!1294201))

(assert (=> b!1405350 m!1294187))

(declare-fun m!1294205 () Bool)

(assert (=> b!1405350 m!1294205))

(declare-fun m!1294207 () Bool)

(assert (=> b!1405350 m!1294207))

(check-sat (not b!1405346) (not b!1405345) (not b!1405350) (not b!1405347) (not start!120828) (not b!1405348) (not b!1405349))
