; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122222 () Bool)

(assert start!122222)

(declare-fun b!1417339 () Bool)

(declare-fun res!953179 () Bool)

(declare-fun e!802186 () Bool)

(assert (=> b!1417339 (=> (not res!953179) (not e!802186))))

(declare-datatypes ((array!96724 0))(
  ( (array!96725 (arr!46686 (Array (_ BitVec 32) (_ BitVec 64))) (size!47237 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96724)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417339 (= res!953179 (validKeyInArray!0 (select (arr!46686 a!2901) i!1037)))))

(declare-fun b!1417340 () Bool)

(declare-fun res!953181 () Bool)

(assert (=> b!1417340 (=> (not res!953181) (not e!802186))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417340 (= res!953181 (and (= (size!47237 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47237 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47237 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417341 () Bool)

(assert (=> b!1417341 (= e!802186 (not true))))

(declare-fun e!802187 () Bool)

(assert (=> b!1417341 e!802187))

(declare-fun res!953184 () Bool)

(assert (=> b!1417341 (=> (not res!953184) (not e!802187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96724 (_ BitVec 32)) Bool)

(assert (=> b!1417341 (= res!953184 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47962 0))(
  ( (Unit!47963) )
))
(declare-fun lt!625306 () Unit!47962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47962)

(assert (=> b!1417341 (= lt!625306 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11019 0))(
  ( (MissingZero!11019 (index!46467 (_ BitVec 32))) (Found!11019 (index!46468 (_ BitVec 32))) (Intermediate!11019 (undefined!11831 Bool) (index!46469 (_ BitVec 32)) (x!128073 (_ BitVec 32))) (Undefined!11019) (MissingVacant!11019 (index!46470 (_ BitVec 32))) )
))
(declare-fun lt!625305 () SeekEntryResult!11019)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96724 (_ BitVec 32)) SeekEntryResult!11019)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417341 (= lt!625305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46686 a!2901) j!112) mask!2840) (select (arr!46686 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417342 () Bool)

(declare-fun res!953180 () Bool)

(assert (=> b!1417342 (=> (not res!953180) (not e!802186))))

(assert (=> b!1417342 (= res!953180 (validKeyInArray!0 (select (arr!46686 a!2901) j!112)))))

(declare-fun res!953178 () Bool)

(assert (=> start!122222 (=> (not res!953178) (not e!802186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122222 (= res!953178 (validMask!0 mask!2840))))

(assert (=> start!122222 e!802186))

(assert (=> start!122222 true))

(declare-fun array_inv!35631 (array!96724) Bool)

(assert (=> start!122222 (array_inv!35631 a!2901)))

(declare-fun b!1417343 () Bool)

(declare-fun res!953183 () Bool)

(assert (=> b!1417343 (=> (not res!953183) (not e!802186))))

(assert (=> b!1417343 (= res!953183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417344 () Bool)

(declare-fun res!953182 () Bool)

(assert (=> b!1417344 (=> (not res!953182) (not e!802186))))

(declare-datatypes ((List!33385 0))(
  ( (Nil!33382) (Cons!33381 (h!34674 (_ BitVec 64)) (t!48086 List!33385)) )
))
(declare-fun arrayNoDuplicates!0 (array!96724 (_ BitVec 32) List!33385) Bool)

(assert (=> b!1417344 (= res!953182 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33382))))

(declare-fun b!1417345 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96724 (_ BitVec 32)) SeekEntryResult!11019)

(assert (=> b!1417345 (= e!802187 (= (seekEntryOrOpen!0 (select (arr!46686 a!2901) j!112) a!2901 mask!2840) (Found!11019 j!112)))))

(assert (= (and start!122222 res!953178) b!1417340))

(assert (= (and b!1417340 res!953181) b!1417339))

(assert (= (and b!1417339 res!953179) b!1417342))

(assert (= (and b!1417342 res!953180) b!1417343))

(assert (= (and b!1417343 res!953183) b!1417344))

(assert (= (and b!1417344 res!953182) b!1417341))

(assert (= (and b!1417341 res!953184) b!1417345))

(declare-fun m!1308111 () Bool)

(assert (=> b!1417339 m!1308111))

(assert (=> b!1417339 m!1308111))

(declare-fun m!1308113 () Bool)

(assert (=> b!1417339 m!1308113))

(declare-fun m!1308115 () Bool)

(assert (=> b!1417345 m!1308115))

(assert (=> b!1417345 m!1308115))

(declare-fun m!1308117 () Bool)

(assert (=> b!1417345 m!1308117))

(assert (=> b!1417342 m!1308115))

(assert (=> b!1417342 m!1308115))

(declare-fun m!1308119 () Bool)

(assert (=> b!1417342 m!1308119))

(assert (=> b!1417341 m!1308115))

(declare-fun m!1308121 () Bool)

(assert (=> b!1417341 m!1308121))

(assert (=> b!1417341 m!1308115))

(declare-fun m!1308123 () Bool)

(assert (=> b!1417341 m!1308123))

(assert (=> b!1417341 m!1308121))

(assert (=> b!1417341 m!1308115))

(declare-fun m!1308125 () Bool)

(assert (=> b!1417341 m!1308125))

(declare-fun m!1308127 () Bool)

(assert (=> b!1417341 m!1308127))

(declare-fun m!1308129 () Bool)

(assert (=> b!1417343 m!1308129))

(declare-fun m!1308131 () Bool)

(assert (=> start!122222 m!1308131))

(declare-fun m!1308133 () Bool)

(assert (=> start!122222 m!1308133))

(declare-fun m!1308135 () Bool)

(assert (=> b!1417344 m!1308135))

(push 1)

(assert (not b!1417341))

(assert (not start!122222))

(assert (not b!1417339))

(assert (not b!1417345))

(assert (not b!1417344))

(assert (not b!1417343))

(assert (not b!1417342))

(check-sat)

(pop 1)

(push 1)

