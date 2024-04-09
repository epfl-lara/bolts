; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122842 () Bool)

(assert start!122842)

(declare-fun b!1423801 () Bool)

(declare-fun e!804758 () Bool)

(declare-fun e!804756 () Bool)

(assert (=> b!1423801 (= e!804758 (not e!804756))))

(declare-fun res!959353 () Bool)

(assert (=> b!1423801 (=> res!959353 e!804756)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97125 0))(
  ( (array!97126 (arr!46876 (Array (_ BitVec 32) (_ BitVec 64))) (size!47427 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97125)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423801 (= res!959353 (or (= (select (arr!46876 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46876 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46876 a!2831) index!585) (select (arr!46876 a!2831) j!81)) (= (select (store (arr!46876 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804759 () Bool)

(assert (=> b!1423801 e!804759))

(declare-fun res!959351 () Bool)

(assert (=> b!1423801 (=> (not res!959351) (not e!804759))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97125 (_ BitVec 32)) Bool)

(assert (=> b!1423801 (= res!959351 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48150 0))(
  ( (Unit!48151) )
))
(declare-fun lt!627247 () Unit!48150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48150)

(assert (=> b!1423801 (= lt!627247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423802 () Bool)

(declare-fun res!959348 () Bool)

(assert (=> b!1423802 (=> (not res!959348) (not e!804758))))

(declare-fun lt!627249 () array!97125)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627253 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11183 0))(
  ( (MissingZero!11183 (index!47123 (_ BitVec 32))) (Found!11183 (index!47124 (_ BitVec 32))) (Intermediate!11183 (undefined!11995 Bool) (index!47125 (_ BitVec 32)) (x!128764 (_ BitVec 32))) (Undefined!11183) (MissingVacant!11183 (index!47126 (_ BitVec 32))) )
))
(declare-fun lt!627248 () SeekEntryResult!11183)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97125 (_ BitVec 32)) SeekEntryResult!11183)

(assert (=> b!1423802 (= res!959348 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627253 lt!627249 mask!2608) lt!627248))))

(declare-fun res!959355 () Bool)

(declare-fun e!804760 () Bool)

(assert (=> start!122842 (=> (not res!959355) (not e!804760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122842 (= res!959355 (validMask!0 mask!2608))))

(assert (=> start!122842 e!804760))

(assert (=> start!122842 true))

(declare-fun array_inv!35821 (array!97125) Bool)

(assert (=> start!122842 (array_inv!35821 a!2831)))

(declare-fun b!1423803 () Bool)

(declare-fun res!959356 () Bool)

(assert (=> b!1423803 (=> (not res!959356) (not e!804758))))

(declare-fun lt!627250 () SeekEntryResult!11183)

(assert (=> b!1423803 (= res!959356 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46876 a!2831) j!81) a!2831 mask!2608) lt!627250))))

(declare-fun b!1423804 () Bool)

(declare-fun res!959345 () Bool)

(assert (=> b!1423804 (=> (not res!959345) (not e!804760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423804 (= res!959345 (validKeyInArray!0 (select (arr!46876 a!2831) i!982)))))

(declare-fun b!1423805 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97125 (_ BitVec 32)) SeekEntryResult!11183)

(assert (=> b!1423805 (= e!804759 (= (seekEntryOrOpen!0 (select (arr!46876 a!2831) j!81) a!2831 mask!2608) (Found!11183 j!81)))))

(declare-fun b!1423806 () Bool)

(declare-fun res!959346 () Bool)

(assert (=> b!1423806 (=> (not res!959346) (not e!804760))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423806 (= res!959346 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47427 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47427 a!2831))))))

(declare-fun b!1423807 () Bool)

(declare-fun res!959354 () Bool)

(declare-fun e!804755 () Bool)

(assert (=> b!1423807 (=> res!959354 e!804755)))

(declare-fun lt!627252 () (_ BitVec 32))

(assert (=> b!1423807 (= res!959354 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627252 (select (arr!46876 a!2831) j!81) a!2831 mask!2608) lt!627250)))))

(declare-fun b!1423808 () Bool)

(declare-fun res!959349 () Bool)

(assert (=> b!1423808 (=> (not res!959349) (not e!804760))))

(assert (=> b!1423808 (= res!959349 (and (= (size!47427 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47427 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47427 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423809 () Bool)

(declare-fun res!959352 () Bool)

(assert (=> b!1423809 (=> (not res!959352) (not e!804760))))

(assert (=> b!1423809 (= res!959352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423810 () Bool)

(assert (=> b!1423810 (= e!804756 e!804755)))

(declare-fun res!959347 () Bool)

(assert (=> b!1423810 (=> res!959347 e!804755)))

(assert (=> b!1423810 (= res!959347 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627252 #b00000000000000000000000000000000) (bvsge lt!627252 (size!47427 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423810 (= lt!627252 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423811 () Bool)

(declare-fun e!804757 () Bool)

(assert (=> b!1423811 (= e!804757 e!804758)))

(declare-fun res!959357 () Bool)

(assert (=> b!1423811 (=> (not res!959357) (not e!804758))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423811 (= res!959357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627253 mask!2608) lt!627253 lt!627249 mask!2608) lt!627248))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423811 (= lt!627248 (Intermediate!11183 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423811 (= lt!627253 (select (store (arr!46876 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423811 (= lt!627249 (array!97126 (store (arr!46876 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47427 a!2831)))))

(declare-fun b!1423812 () Bool)

(assert (=> b!1423812 (= e!804755 true)))

(declare-fun lt!627251 () SeekEntryResult!11183)

(assert (=> b!1423812 (= lt!627251 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627252 lt!627253 lt!627249 mask!2608))))

(declare-fun b!1423813 () Bool)

(declare-fun res!959358 () Bool)

(assert (=> b!1423813 (=> (not res!959358) (not e!804760))))

(assert (=> b!1423813 (= res!959358 (validKeyInArray!0 (select (arr!46876 a!2831) j!81)))))

(declare-fun b!1423814 () Bool)

(declare-fun res!959343 () Bool)

(assert (=> b!1423814 (=> (not res!959343) (not e!804758))))

(assert (=> b!1423814 (= res!959343 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423815 () Bool)

(declare-fun res!959350 () Bool)

(assert (=> b!1423815 (=> (not res!959350) (not e!804760))))

(declare-datatypes ((List!33566 0))(
  ( (Nil!33563) (Cons!33562 (h!34864 (_ BitVec 64)) (t!48267 List!33566)) )
))
(declare-fun arrayNoDuplicates!0 (array!97125 (_ BitVec 32) List!33566) Bool)

(assert (=> b!1423815 (= res!959350 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33563))))

(declare-fun b!1423816 () Bool)

(assert (=> b!1423816 (= e!804760 e!804757)))

(declare-fun res!959344 () Bool)

(assert (=> b!1423816 (=> (not res!959344) (not e!804757))))

(assert (=> b!1423816 (= res!959344 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46876 a!2831) j!81) mask!2608) (select (arr!46876 a!2831) j!81) a!2831 mask!2608) lt!627250))))

(assert (=> b!1423816 (= lt!627250 (Intermediate!11183 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122842 res!959355) b!1423808))

(assert (= (and b!1423808 res!959349) b!1423804))

(assert (= (and b!1423804 res!959345) b!1423813))

(assert (= (and b!1423813 res!959358) b!1423809))

(assert (= (and b!1423809 res!959352) b!1423815))

(assert (= (and b!1423815 res!959350) b!1423806))

(assert (= (and b!1423806 res!959346) b!1423816))

(assert (= (and b!1423816 res!959344) b!1423811))

(assert (= (and b!1423811 res!959357) b!1423803))

(assert (= (and b!1423803 res!959356) b!1423802))

(assert (= (and b!1423802 res!959348) b!1423814))

(assert (= (and b!1423814 res!959343) b!1423801))

(assert (= (and b!1423801 res!959351) b!1423805))

(assert (= (and b!1423801 (not res!959353)) b!1423810))

(assert (= (and b!1423810 (not res!959347)) b!1423807))

(assert (= (and b!1423807 (not res!959354)) b!1423812))

(declare-fun m!1314407 () Bool)

(assert (=> b!1423801 m!1314407))

(declare-fun m!1314409 () Bool)

(assert (=> b!1423801 m!1314409))

(declare-fun m!1314411 () Bool)

(assert (=> b!1423801 m!1314411))

(declare-fun m!1314413 () Bool)

(assert (=> b!1423801 m!1314413))

(declare-fun m!1314415 () Bool)

(assert (=> b!1423801 m!1314415))

(declare-fun m!1314417 () Bool)

(assert (=> b!1423801 m!1314417))

(declare-fun m!1314419 () Bool)

(assert (=> b!1423812 m!1314419))

(assert (=> b!1423813 m!1314415))

(assert (=> b!1423813 m!1314415))

(declare-fun m!1314421 () Bool)

(assert (=> b!1423813 m!1314421))

(declare-fun m!1314423 () Bool)

(assert (=> b!1423804 m!1314423))

(assert (=> b!1423804 m!1314423))

(declare-fun m!1314425 () Bool)

(assert (=> b!1423804 m!1314425))

(assert (=> b!1423805 m!1314415))

(assert (=> b!1423805 m!1314415))

(declare-fun m!1314427 () Bool)

(assert (=> b!1423805 m!1314427))

(assert (=> b!1423816 m!1314415))

(assert (=> b!1423816 m!1314415))

(declare-fun m!1314429 () Bool)

(assert (=> b!1423816 m!1314429))

(assert (=> b!1423816 m!1314429))

(assert (=> b!1423816 m!1314415))

(declare-fun m!1314431 () Bool)

(assert (=> b!1423816 m!1314431))

(declare-fun m!1314433 () Bool)

(assert (=> start!122842 m!1314433))

(declare-fun m!1314435 () Bool)

(assert (=> start!122842 m!1314435))

(declare-fun m!1314437 () Bool)

(assert (=> b!1423811 m!1314437))

(assert (=> b!1423811 m!1314437))

(declare-fun m!1314439 () Bool)

(assert (=> b!1423811 m!1314439))

(assert (=> b!1423811 m!1314407))

(declare-fun m!1314441 () Bool)

(assert (=> b!1423811 m!1314441))

(declare-fun m!1314443 () Bool)

(assert (=> b!1423809 m!1314443))

(declare-fun m!1314445 () Bool)

(assert (=> b!1423810 m!1314445))

(assert (=> b!1423807 m!1314415))

(assert (=> b!1423807 m!1314415))

(declare-fun m!1314447 () Bool)

(assert (=> b!1423807 m!1314447))

(declare-fun m!1314449 () Bool)

(assert (=> b!1423815 m!1314449))

(assert (=> b!1423803 m!1314415))

(assert (=> b!1423803 m!1314415))

(declare-fun m!1314451 () Bool)

(assert (=> b!1423803 m!1314451))

(declare-fun m!1314453 () Bool)

(assert (=> b!1423802 m!1314453))

(push 1)

