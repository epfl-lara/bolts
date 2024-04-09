; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120888 () Bool)

(assert start!120888)

(declare-fun b!1406034 () Bool)

(declare-fun res!944360 () Bool)

(declare-fun e!795866 () Bool)

(assert (=> b!1406034 (=> (not res!944360) (not e!795866))))

(declare-datatypes ((array!96113 0))(
  ( (array!96114 (arr!46400 (Array (_ BitVec 32) (_ BitVec 64))) (size!46951 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96113)

(declare-datatypes ((List!33099 0))(
  ( (Nil!33096) (Cons!33095 (h!34349 (_ BitVec 64)) (t!47800 List!33099)) )
))
(declare-fun arrayNoDuplicates!0 (array!96113 (_ BitVec 32) List!33099) Bool)

(assert (=> b!1406034 (= res!944360 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33096))))

(declare-fun b!1406035 () Bool)

(declare-fun e!795863 () Bool)

(assert (=> b!1406035 (= e!795866 (not e!795863))))

(declare-fun res!944363 () Bool)

(assert (=> b!1406035 (=> res!944363 e!795863)))

(declare-datatypes ((SeekEntryResult!10733 0))(
  ( (MissingZero!10733 (index!45308 (_ BitVec 32))) (Found!10733 (index!45309 (_ BitVec 32))) (Intermediate!10733 (undefined!11545 Bool) (index!45310 (_ BitVec 32)) (x!126919 (_ BitVec 32))) (Undefined!10733) (MissingVacant!10733 (index!45311 (_ BitVec 32))) )
))
(declare-fun lt!619202 () SeekEntryResult!10733)

(get-info :version)

(assert (=> b!1406035 (= res!944363 (or (not ((_ is Intermediate!10733) lt!619202)) (undefined!11545 lt!619202)))))

(declare-fun e!795865 () Bool)

(assert (=> b!1406035 e!795865))

(declare-fun res!944366 () Bool)

(assert (=> b!1406035 (=> (not res!944366) (not e!795865))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96113 (_ BitVec 32)) Bool)

(assert (=> b!1406035 (= res!944366 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47390 0))(
  ( (Unit!47391) )
))
(declare-fun lt!619204 () Unit!47390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47390)

(assert (=> b!1406035 (= lt!619204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96113 (_ BitVec 32)) SeekEntryResult!10733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406035 (= lt!619202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46400 a!2901) j!112) mask!2840) (select (arr!46400 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406036 () Bool)

(declare-fun res!944364 () Bool)

(assert (=> b!1406036 (=> (not res!944364) (not e!795866))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406036 (= res!944364 (and (= (size!46951 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46951 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46951 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406037 () Bool)

(declare-fun res!944362 () Bool)

(assert (=> b!1406037 (=> (not res!944362) (not e!795866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406037 (= res!944362 (validKeyInArray!0 (select (arr!46400 a!2901) i!1037)))))

(declare-fun b!1406038 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96113 (_ BitVec 32)) SeekEntryResult!10733)

(assert (=> b!1406038 (= e!795865 (= (seekEntryOrOpen!0 (select (arr!46400 a!2901) j!112) a!2901 mask!2840) (Found!10733 j!112)))))

(declare-fun res!944365 () Bool)

(assert (=> start!120888 (=> (not res!944365) (not e!795866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120888 (= res!944365 (validMask!0 mask!2840))))

(assert (=> start!120888 e!795866))

(assert (=> start!120888 true))

(declare-fun array_inv!35345 (array!96113) Bool)

(assert (=> start!120888 (array_inv!35345 a!2901)))

(declare-fun b!1406039 () Bool)

(declare-fun res!944367 () Bool)

(assert (=> b!1406039 (=> (not res!944367) (not e!795866))))

(assert (=> b!1406039 (= res!944367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406040 () Bool)

(declare-fun res!944361 () Bool)

(assert (=> b!1406040 (=> (not res!944361) (not e!795866))))

(assert (=> b!1406040 (= res!944361 (validKeyInArray!0 (select (arr!46400 a!2901) j!112)))))

(declare-fun b!1406041 () Bool)

(assert (=> b!1406041 (= e!795863 true)))

(declare-fun lt!619203 () SeekEntryResult!10733)

(assert (=> b!1406041 (= lt!619203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46400 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46400 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96114 (store (arr!46400 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46951 a!2901)) mask!2840))))

(assert (= (and start!120888 res!944365) b!1406036))

(assert (= (and b!1406036 res!944364) b!1406037))

(assert (= (and b!1406037 res!944362) b!1406040))

(assert (= (and b!1406040 res!944361) b!1406039))

(assert (= (and b!1406039 res!944367) b!1406034))

(assert (= (and b!1406034 res!944360) b!1406035))

(assert (= (and b!1406035 res!944366) b!1406038))

(assert (= (and b!1406035 (not res!944363)) b!1406041))

(declare-fun m!1295103 () Bool)

(assert (=> b!1406034 m!1295103))

(declare-fun m!1295105 () Bool)

(assert (=> b!1406035 m!1295105))

(declare-fun m!1295107 () Bool)

(assert (=> b!1406035 m!1295107))

(assert (=> b!1406035 m!1295105))

(declare-fun m!1295109 () Bool)

(assert (=> b!1406035 m!1295109))

(assert (=> b!1406035 m!1295107))

(assert (=> b!1406035 m!1295105))

(declare-fun m!1295111 () Bool)

(assert (=> b!1406035 m!1295111))

(declare-fun m!1295113 () Bool)

(assert (=> b!1406035 m!1295113))

(assert (=> b!1406040 m!1295105))

(assert (=> b!1406040 m!1295105))

(declare-fun m!1295115 () Bool)

(assert (=> b!1406040 m!1295115))

(declare-fun m!1295117 () Bool)

(assert (=> b!1406039 m!1295117))

(declare-fun m!1295119 () Bool)

(assert (=> b!1406041 m!1295119))

(declare-fun m!1295121 () Bool)

(assert (=> b!1406041 m!1295121))

(assert (=> b!1406041 m!1295121))

(declare-fun m!1295123 () Bool)

(assert (=> b!1406041 m!1295123))

(assert (=> b!1406041 m!1295123))

(assert (=> b!1406041 m!1295121))

(declare-fun m!1295125 () Bool)

(assert (=> b!1406041 m!1295125))

(assert (=> b!1406038 m!1295105))

(assert (=> b!1406038 m!1295105))

(declare-fun m!1295127 () Bool)

(assert (=> b!1406038 m!1295127))

(declare-fun m!1295129 () Bool)

(assert (=> b!1406037 m!1295129))

(assert (=> b!1406037 m!1295129))

(declare-fun m!1295131 () Bool)

(assert (=> b!1406037 m!1295131))

(declare-fun m!1295133 () Bool)

(assert (=> start!120888 m!1295133))

(declare-fun m!1295135 () Bool)

(assert (=> start!120888 m!1295135))

(check-sat (not b!1406040) (not start!120888) (not b!1406035) (not b!1406034) (not b!1406038) (not b!1406041) (not b!1406037) (not b!1406039))
(check-sat)
