; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121260 () Bool)

(assert start!121260)

(declare-fun b!1409400 () Bool)

(declare-fun res!947234 () Bool)

(declare-fun e!797603 () Bool)

(assert (=> b!1409400 (=> (not res!947234) (not e!797603))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96332 0))(
  ( (array!96333 (arr!46505 (Array (_ BitVec 32) (_ BitVec 64))) (size!47056 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96332)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409400 (= res!947234 (and (= (size!47056 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47056 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47056 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409401 () Bool)

(declare-fun res!947236 () Bool)

(assert (=> b!1409401 (=> (not res!947236) (not e!797603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409401 (= res!947236 (validKeyInArray!0 (select (arr!46505 a!2901) i!1037)))))

(declare-fun b!1409402 () Bool)

(declare-fun e!797602 () Bool)

(assert (=> b!1409402 (= e!797603 (not e!797602))))

(declare-fun res!947232 () Bool)

(assert (=> b!1409402 (=> res!947232 e!797602)))

(declare-datatypes ((SeekEntryResult!10838 0))(
  ( (MissingZero!10838 (index!45728 (_ BitVec 32))) (Found!10838 (index!45729 (_ BitVec 32))) (Intermediate!10838 (undefined!11650 Bool) (index!45730 (_ BitVec 32)) (x!127322 (_ BitVec 32))) (Undefined!10838) (MissingVacant!10838 (index!45731 (_ BitVec 32))) )
))
(declare-fun lt!620680 () SeekEntryResult!10838)

(get-info :version)

(assert (=> b!1409402 (= res!947232 (or (not ((_ is Intermediate!10838) lt!620680)) (undefined!11650 lt!620680)))))

(declare-fun e!797601 () Bool)

(assert (=> b!1409402 e!797601))

(declare-fun res!947238 () Bool)

(assert (=> b!1409402 (=> (not res!947238) (not e!797601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96332 (_ BitVec 32)) Bool)

(assert (=> b!1409402 (= res!947238 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47600 0))(
  ( (Unit!47601) )
))
(declare-fun lt!620678 () Unit!47600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47600)

(assert (=> b!1409402 (= lt!620678 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96332 (_ BitVec 32)) SeekEntryResult!10838)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409402 (= lt!620680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46505 a!2901) j!112) mask!2840) (select (arr!46505 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409404 () Bool)

(declare-fun res!947231 () Bool)

(assert (=> b!1409404 (=> (not res!947231) (not e!797603))))

(assert (=> b!1409404 (= res!947231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409405 () Bool)

(assert (=> b!1409405 (= e!797602 true)))

(declare-fun lt!620679 () SeekEntryResult!10838)

(assert (=> b!1409405 (= lt!620679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46505 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46505 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96333 (store (arr!46505 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47056 a!2901)) mask!2840))))

(declare-fun b!1409406 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96332 (_ BitVec 32)) SeekEntryResult!10838)

(assert (=> b!1409406 (= e!797601 (= (seekEntryOrOpen!0 (select (arr!46505 a!2901) j!112) a!2901 mask!2840) (Found!10838 j!112)))))

(declare-fun b!1409407 () Bool)

(declare-fun res!947233 () Bool)

(assert (=> b!1409407 (=> (not res!947233) (not e!797603))))

(assert (=> b!1409407 (= res!947233 (validKeyInArray!0 (select (arr!46505 a!2901) j!112)))))

(declare-fun res!947237 () Bool)

(assert (=> start!121260 (=> (not res!947237) (not e!797603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121260 (= res!947237 (validMask!0 mask!2840))))

(assert (=> start!121260 e!797603))

(assert (=> start!121260 true))

(declare-fun array_inv!35450 (array!96332) Bool)

(assert (=> start!121260 (array_inv!35450 a!2901)))

(declare-fun b!1409403 () Bool)

(declare-fun res!947235 () Bool)

(assert (=> b!1409403 (=> (not res!947235) (not e!797603))))

(declare-datatypes ((List!33204 0))(
  ( (Nil!33201) (Cons!33200 (h!34463 (_ BitVec 64)) (t!47905 List!33204)) )
))
(declare-fun arrayNoDuplicates!0 (array!96332 (_ BitVec 32) List!33204) Bool)

(assert (=> b!1409403 (= res!947235 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33201))))

(assert (= (and start!121260 res!947237) b!1409400))

(assert (= (and b!1409400 res!947234) b!1409401))

(assert (= (and b!1409401 res!947236) b!1409407))

(assert (= (and b!1409407 res!947233) b!1409404))

(assert (= (and b!1409404 res!947231) b!1409403))

(assert (= (and b!1409403 res!947235) b!1409402))

(assert (= (and b!1409402 res!947238) b!1409406))

(assert (= (and b!1409402 (not res!947232)) b!1409405))

(declare-fun m!1299195 () Bool)

(assert (=> b!1409405 m!1299195))

(declare-fun m!1299197 () Bool)

(assert (=> b!1409405 m!1299197))

(assert (=> b!1409405 m!1299197))

(declare-fun m!1299199 () Bool)

(assert (=> b!1409405 m!1299199))

(assert (=> b!1409405 m!1299199))

(assert (=> b!1409405 m!1299197))

(declare-fun m!1299201 () Bool)

(assert (=> b!1409405 m!1299201))

(declare-fun m!1299203 () Bool)

(assert (=> b!1409404 m!1299203))

(declare-fun m!1299205 () Bool)

(assert (=> b!1409401 m!1299205))

(assert (=> b!1409401 m!1299205))

(declare-fun m!1299207 () Bool)

(assert (=> b!1409401 m!1299207))

(declare-fun m!1299209 () Bool)

(assert (=> b!1409406 m!1299209))

(assert (=> b!1409406 m!1299209))

(declare-fun m!1299211 () Bool)

(assert (=> b!1409406 m!1299211))

(declare-fun m!1299213 () Bool)

(assert (=> b!1409403 m!1299213))

(declare-fun m!1299215 () Bool)

(assert (=> start!121260 m!1299215))

(declare-fun m!1299217 () Bool)

(assert (=> start!121260 m!1299217))

(assert (=> b!1409402 m!1299209))

(declare-fun m!1299219 () Bool)

(assert (=> b!1409402 m!1299219))

(assert (=> b!1409402 m!1299209))

(declare-fun m!1299221 () Bool)

(assert (=> b!1409402 m!1299221))

(assert (=> b!1409402 m!1299219))

(assert (=> b!1409402 m!1299209))

(declare-fun m!1299223 () Bool)

(assert (=> b!1409402 m!1299223))

(declare-fun m!1299225 () Bool)

(assert (=> b!1409402 m!1299225))

(assert (=> b!1409407 m!1299209))

(assert (=> b!1409407 m!1299209))

(declare-fun m!1299227 () Bool)

(assert (=> b!1409407 m!1299227))

(check-sat (not b!1409402) (not b!1409403) (not b!1409407) (not start!121260) (not b!1409406) (not b!1409405) (not b!1409401) (not b!1409404))
