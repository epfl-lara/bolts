; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120822 () Bool)

(assert start!120822)

(declare-fun res!943608 () Bool)

(declare-fun e!795508 () Bool)

(assert (=> start!120822 (=> (not res!943608) (not e!795508))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120822 (= res!943608 (validMask!0 mask!2840))))

(assert (=> start!120822 e!795508))

(assert (=> start!120822 true))

(declare-datatypes ((array!96047 0))(
  ( (array!96048 (arr!46367 (Array (_ BitVec 32) (_ BitVec 64))) (size!46918 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96047)

(declare-fun array_inv!35312 (array!96047) Bool)

(assert (=> start!120822 (array_inv!35312 a!2901)))

(declare-fun b!1405282 () Bool)

(declare-fun res!943610 () Bool)

(assert (=> b!1405282 (=> (not res!943610) (not e!795508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96047 (_ BitVec 32)) Bool)

(assert (=> b!1405282 (= res!943610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405283 () Bool)

(declare-fun res!943611 () Bool)

(assert (=> b!1405283 (=> (not res!943611) (not e!795508))))

(declare-datatypes ((List!33066 0))(
  ( (Nil!33063) (Cons!33062 (h!34316 (_ BitVec 64)) (t!47767 List!33066)) )
))
(declare-fun arrayNoDuplicates!0 (array!96047 (_ BitVec 32) List!33066) Bool)

(assert (=> b!1405283 (= res!943611 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33063))))

(declare-fun b!1405284 () Bool)

(declare-fun res!943613 () Bool)

(assert (=> b!1405284 (=> (not res!943613) (not e!795508))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405284 (= res!943613 (and (= (size!46918 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46918 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46918 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405285 () Bool)

(declare-fun res!943609 () Bool)

(assert (=> b!1405285 (=> (not res!943609) (not e!795508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405285 (= res!943609 (validKeyInArray!0 (select (arr!46367 a!2901) j!112)))))

(declare-fun b!1405286 () Bool)

(declare-fun res!943612 () Bool)

(assert (=> b!1405286 (=> (not res!943612) (not e!795508))))

(assert (=> b!1405286 (= res!943612 (validKeyInArray!0 (select (arr!46367 a!2901) i!1037)))))

(declare-fun b!1405287 () Bool)

(declare-fun e!795507 () Bool)

(declare-datatypes ((SeekEntryResult!10700 0))(
  ( (MissingZero!10700 (index!45176 (_ BitVec 32))) (Found!10700 (index!45177 (_ BitVec 32))) (Intermediate!10700 (undefined!11512 Bool) (index!45178 (_ BitVec 32)) (x!126798 (_ BitVec 32))) (Undefined!10700) (MissingVacant!10700 (index!45179 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96047 (_ BitVec 32)) SeekEntryResult!10700)

(assert (=> b!1405287 (= e!795507 (= (seekEntryOrOpen!0 (select (arr!46367 a!2901) j!112) a!2901 mask!2840) (Found!10700 j!112)))))

(declare-fun b!1405288 () Bool)

(assert (=> b!1405288 (= e!795508 (not true))))

(assert (=> b!1405288 e!795507))

(declare-fun res!943614 () Bool)

(assert (=> b!1405288 (=> (not res!943614) (not e!795507))))

(assert (=> b!1405288 (= res!943614 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47324 0))(
  ( (Unit!47325) )
))
(declare-fun lt!618945 () Unit!47324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47324)

(assert (=> b!1405288 (= lt!618945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618946 () SeekEntryResult!10700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96047 (_ BitVec 32)) SeekEntryResult!10700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405288 (= lt!618946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46367 a!2901) j!112) mask!2840) (select (arr!46367 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120822 res!943608) b!1405284))

(assert (= (and b!1405284 res!943613) b!1405286))

(assert (= (and b!1405286 res!943612) b!1405285))

(assert (= (and b!1405285 res!943609) b!1405282))

(assert (= (and b!1405282 res!943610) b!1405283))

(assert (= (and b!1405283 res!943611) b!1405288))

(assert (= (and b!1405288 res!943614) b!1405287))

(declare-fun m!1294105 () Bool)

(assert (=> b!1405288 m!1294105))

(declare-fun m!1294107 () Bool)

(assert (=> b!1405288 m!1294107))

(assert (=> b!1405288 m!1294105))

(declare-fun m!1294109 () Bool)

(assert (=> b!1405288 m!1294109))

(assert (=> b!1405288 m!1294107))

(assert (=> b!1405288 m!1294105))

(declare-fun m!1294111 () Bool)

(assert (=> b!1405288 m!1294111))

(declare-fun m!1294113 () Bool)

(assert (=> b!1405288 m!1294113))

(declare-fun m!1294115 () Bool)

(assert (=> b!1405282 m!1294115))

(assert (=> b!1405285 m!1294105))

(assert (=> b!1405285 m!1294105))

(declare-fun m!1294117 () Bool)

(assert (=> b!1405285 m!1294117))

(assert (=> b!1405287 m!1294105))

(assert (=> b!1405287 m!1294105))

(declare-fun m!1294119 () Bool)

(assert (=> b!1405287 m!1294119))

(declare-fun m!1294121 () Bool)

(assert (=> b!1405283 m!1294121))

(declare-fun m!1294123 () Bool)

(assert (=> b!1405286 m!1294123))

(assert (=> b!1405286 m!1294123))

(declare-fun m!1294125 () Bool)

(assert (=> b!1405286 m!1294125))

(declare-fun m!1294127 () Bool)

(assert (=> start!120822 m!1294127))

(declare-fun m!1294129 () Bool)

(assert (=> start!120822 m!1294129))

(check-sat (not start!120822) (not b!1405288) (not b!1405287) (not b!1405286) (not b!1405285) (not b!1405283) (not b!1405282))
