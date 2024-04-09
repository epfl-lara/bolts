; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123126 () Bool)

(assert start!123126)

(declare-fun b!1427341 () Bool)

(declare-fun res!962484 () Bool)

(declare-fun e!806210 () Bool)

(assert (=> b!1427341 (=> (not res!962484) (not e!806210))))

(declare-datatypes ((array!97307 0))(
  ( (array!97308 (arr!46964 (Array (_ BitVec 32) (_ BitVec 64))) (size!47515 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97307)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427341 (= res!962484 (validKeyInArray!0 (select (arr!46964 a!2831) i!982)))))

(declare-fun res!962483 () Bool)

(assert (=> start!123126 (=> (not res!962483) (not e!806210))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123126 (= res!962483 (validMask!0 mask!2608))))

(assert (=> start!123126 e!806210))

(assert (=> start!123126 true))

(declare-fun array_inv!35909 (array!97307) Bool)

(assert (=> start!123126 (array_inv!35909 a!2831)))

(declare-fun b!1427342 () Bool)

(declare-fun res!962488 () Bool)

(assert (=> b!1427342 (=> (not res!962488) (not e!806210))))

(declare-datatypes ((List!33654 0))(
  ( (Nil!33651) (Cons!33650 (h!34958 (_ BitVec 64)) (t!48355 List!33654)) )
))
(declare-fun arrayNoDuplicates!0 (array!97307 (_ BitVec 32) List!33654) Bool)

(assert (=> b!1427342 (= res!962488 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33651))))

(declare-fun b!1427343 () Bool)

(declare-fun res!962481 () Bool)

(declare-fun e!806209 () Bool)

(assert (=> b!1427343 (=> (not res!962481) (not e!806209))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427343 (= res!962481 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427344 () Bool)

(declare-fun res!962492 () Bool)

(assert (=> b!1427344 (=> (not res!962492) (not e!806210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97307 (_ BitVec 32)) Bool)

(assert (=> b!1427344 (= res!962492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427345 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun e!806206 () Bool)

(declare-datatypes ((SeekEntryResult!11265 0))(
  ( (MissingZero!11265 (index!47451 (_ BitVec 32))) (Found!11265 (index!47452 (_ BitVec 32))) (Intermediate!11265 (undefined!12077 Bool) (index!47453 (_ BitVec 32)) (x!129090 (_ BitVec 32))) (Undefined!11265) (MissingVacant!11265 (index!47454 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97307 (_ BitVec 32)) SeekEntryResult!11265)

(assert (=> b!1427345 (= e!806206 (= (seekEntryOrOpen!0 (select (arr!46964 a!2831) j!81) a!2831 mask!2608) (Found!11265 j!81)))))

(declare-fun b!1427346 () Bool)

(declare-fun res!962493 () Bool)

(assert (=> b!1427346 (=> (not res!962493) (not e!806210))))

(assert (=> b!1427346 (= res!962493 (validKeyInArray!0 (select (arr!46964 a!2831) j!81)))))

(declare-fun b!1427347 () Bool)

(declare-fun e!806208 () Bool)

(assert (=> b!1427347 (= e!806210 e!806208)))

(declare-fun res!962491 () Bool)

(assert (=> b!1427347 (=> (not res!962491) (not e!806208))))

(declare-fun lt!628506 () SeekEntryResult!11265)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97307 (_ BitVec 32)) SeekEntryResult!11265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427347 (= res!962491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46964 a!2831) j!81) mask!2608) (select (arr!46964 a!2831) j!81) a!2831 mask!2608) lt!628506))))

(assert (=> b!1427347 (= lt!628506 (Intermediate!11265 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427348 () Bool)

(declare-fun res!962487 () Bool)

(assert (=> b!1427348 (=> (not res!962487) (not e!806209))))

(declare-fun lt!628503 () (_ BitVec 64))

(declare-fun lt!628507 () SeekEntryResult!11265)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628504 () array!97307)

(assert (=> b!1427348 (= res!962487 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628503 lt!628504 mask!2608) lt!628507))))

(declare-fun b!1427349 () Bool)

(assert (=> b!1427349 (= e!806209 (not true))))

(assert (=> b!1427349 e!806206))

(declare-fun res!962489 () Bool)

(assert (=> b!1427349 (=> (not res!962489) (not e!806206))))

(assert (=> b!1427349 (= res!962489 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48224 0))(
  ( (Unit!48225) )
))
(declare-fun lt!628505 () Unit!48224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48224)

(assert (=> b!1427349 (= lt!628505 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427350 () Bool)

(declare-fun res!962482 () Bool)

(assert (=> b!1427350 (=> (not res!962482) (not e!806210))))

(assert (=> b!1427350 (= res!962482 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47515 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47515 a!2831))))))

(declare-fun b!1427351 () Bool)

(assert (=> b!1427351 (= e!806208 e!806209)))

(declare-fun res!962490 () Bool)

(assert (=> b!1427351 (=> (not res!962490) (not e!806209))))

(assert (=> b!1427351 (= res!962490 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628503 mask!2608) lt!628503 lt!628504 mask!2608) lt!628507))))

(assert (=> b!1427351 (= lt!628507 (Intermediate!11265 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427351 (= lt!628503 (select (store (arr!46964 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427351 (= lt!628504 (array!97308 (store (arr!46964 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47515 a!2831)))))

(declare-fun b!1427352 () Bool)

(declare-fun res!962486 () Bool)

(assert (=> b!1427352 (=> (not res!962486) (not e!806210))))

(assert (=> b!1427352 (= res!962486 (and (= (size!47515 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47515 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47515 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427353 () Bool)

(declare-fun res!962485 () Bool)

(assert (=> b!1427353 (=> (not res!962485) (not e!806209))))

(assert (=> b!1427353 (= res!962485 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46964 a!2831) j!81) a!2831 mask!2608) lt!628506))))

(assert (= (and start!123126 res!962483) b!1427352))

(assert (= (and b!1427352 res!962486) b!1427341))

(assert (= (and b!1427341 res!962484) b!1427346))

(assert (= (and b!1427346 res!962493) b!1427344))

(assert (= (and b!1427344 res!962492) b!1427342))

(assert (= (and b!1427342 res!962488) b!1427350))

(assert (= (and b!1427350 res!962482) b!1427347))

(assert (= (and b!1427347 res!962491) b!1427351))

(assert (= (and b!1427351 res!962490) b!1427353))

(assert (= (and b!1427353 res!962485) b!1427348))

(assert (= (and b!1427348 res!962487) b!1427343))

(assert (= (and b!1427343 res!962481) b!1427349))

(assert (= (and b!1427349 res!962489) b!1427345))

(declare-fun m!1317769 () Bool)

(assert (=> b!1427347 m!1317769))

(assert (=> b!1427347 m!1317769))

(declare-fun m!1317771 () Bool)

(assert (=> b!1427347 m!1317771))

(assert (=> b!1427347 m!1317771))

(assert (=> b!1427347 m!1317769))

(declare-fun m!1317773 () Bool)

(assert (=> b!1427347 m!1317773))

(declare-fun m!1317775 () Bool)

(assert (=> b!1427351 m!1317775))

(assert (=> b!1427351 m!1317775))

(declare-fun m!1317777 () Bool)

(assert (=> b!1427351 m!1317777))

(declare-fun m!1317779 () Bool)

(assert (=> b!1427351 m!1317779))

(declare-fun m!1317781 () Bool)

(assert (=> b!1427351 m!1317781))

(declare-fun m!1317783 () Bool)

(assert (=> b!1427348 m!1317783))

(declare-fun m!1317785 () Bool)

(assert (=> start!123126 m!1317785))

(declare-fun m!1317787 () Bool)

(assert (=> start!123126 m!1317787))

(assert (=> b!1427353 m!1317769))

(assert (=> b!1427353 m!1317769))

(declare-fun m!1317789 () Bool)

(assert (=> b!1427353 m!1317789))

(declare-fun m!1317791 () Bool)

(assert (=> b!1427342 m!1317791))

(declare-fun m!1317793 () Bool)

(assert (=> b!1427341 m!1317793))

(assert (=> b!1427341 m!1317793))

(declare-fun m!1317795 () Bool)

(assert (=> b!1427341 m!1317795))

(declare-fun m!1317797 () Bool)

(assert (=> b!1427349 m!1317797))

(declare-fun m!1317799 () Bool)

(assert (=> b!1427349 m!1317799))

(assert (=> b!1427345 m!1317769))

(assert (=> b!1427345 m!1317769))

(declare-fun m!1317801 () Bool)

(assert (=> b!1427345 m!1317801))

(declare-fun m!1317803 () Bool)

(assert (=> b!1427344 m!1317803))

(assert (=> b!1427346 m!1317769))

(assert (=> b!1427346 m!1317769))

(declare-fun m!1317805 () Bool)

(assert (=> b!1427346 m!1317805))

(check-sat (not b!1427351) (not b!1427341) (not b!1427347) (not b!1427346) (not b!1427344) (not start!123126) (not b!1427342) (not b!1427345) (not b!1427348) (not b!1427353) (not b!1427349))
(check-sat)
