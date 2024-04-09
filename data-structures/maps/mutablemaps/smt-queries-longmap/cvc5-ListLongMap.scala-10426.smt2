; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122758 () Bool)

(assert start!122758)

(declare-fun b!1421806 () Bool)

(declare-fun res!957359 () Bool)

(declare-fun e!803889 () Bool)

(assert (=> b!1421806 (=> (not res!957359) (not e!803889))))

(declare-datatypes ((array!97041 0))(
  ( (array!97042 (arr!46834 (Array (_ BitVec 32) (_ BitVec 64))) (size!47385 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97041)

(declare-datatypes ((List!33524 0))(
  ( (Nil!33521) (Cons!33520 (h!34822 (_ BitVec 64)) (t!48225 List!33524)) )
))
(declare-fun arrayNoDuplicates!0 (array!97041 (_ BitVec 32) List!33524) Bool)

(assert (=> b!1421806 (= res!957359 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33521))))

(declare-fun b!1421807 () Bool)

(declare-fun e!803887 () Bool)

(assert (=> b!1421807 (= e!803887 (not true))))

(declare-fun e!803891 () Bool)

(assert (=> b!1421807 e!803891))

(declare-fun res!957348 () Bool)

(assert (=> b!1421807 (=> (not res!957348) (not e!803891))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97041 (_ BitVec 32)) Bool)

(assert (=> b!1421807 (= res!957348 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48066 0))(
  ( (Unit!48067) )
))
(declare-fun lt!626379 () Unit!48066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48066)

(assert (=> b!1421807 (= lt!626379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421808 () Bool)

(declare-fun res!957349 () Bool)

(assert (=> b!1421808 (=> (not res!957349) (not e!803889))))

(assert (=> b!1421808 (= res!957349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421809 () Bool)

(declare-fun res!957352 () Bool)

(assert (=> b!1421809 (=> (not res!957352) (not e!803887))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11141 0))(
  ( (MissingZero!11141 (index!46955 (_ BitVec 32))) (Found!11141 (index!46956 (_ BitVec 32))) (Intermediate!11141 (undefined!11953 Bool) (index!46957 (_ BitVec 32)) (x!128610 (_ BitVec 32))) (Undefined!11141) (MissingVacant!11141 (index!46958 (_ BitVec 32))) )
))
(declare-fun lt!626382 () SeekEntryResult!11141)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97041 (_ BitVec 32)) SeekEntryResult!11141)

(assert (=> b!1421809 (= res!957352 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46834 a!2831) j!81) a!2831 mask!2608) lt!626382))))

(declare-fun res!957355 () Bool)

(assert (=> start!122758 (=> (not res!957355) (not e!803889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122758 (= res!957355 (validMask!0 mask!2608))))

(assert (=> start!122758 e!803889))

(assert (=> start!122758 true))

(declare-fun array_inv!35779 (array!97041) Bool)

(assert (=> start!122758 (array_inv!35779 a!2831)))

(declare-fun b!1421810 () Bool)

(declare-fun res!957351 () Bool)

(assert (=> b!1421810 (=> (not res!957351) (not e!803889))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421810 (= res!957351 (and (= (size!47385 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47385 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47385 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421811 () Bool)

(declare-fun e!803888 () Bool)

(assert (=> b!1421811 (= e!803888 e!803887)))

(declare-fun res!957350 () Bool)

(assert (=> b!1421811 (=> (not res!957350) (not e!803887))))

(declare-fun lt!626380 () (_ BitVec 64))

(declare-fun lt!626383 () SeekEntryResult!11141)

(declare-fun lt!626381 () array!97041)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421811 (= res!957350 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626380 mask!2608) lt!626380 lt!626381 mask!2608) lt!626383))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421811 (= lt!626383 (Intermediate!11141 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421811 (= lt!626380 (select (store (arr!46834 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421811 (= lt!626381 (array!97042 (store (arr!46834 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47385 a!2831)))))

(declare-fun b!1421812 () Bool)

(declare-fun res!957358 () Bool)

(assert (=> b!1421812 (=> (not res!957358) (not e!803889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421812 (= res!957358 (validKeyInArray!0 (select (arr!46834 a!2831) j!81)))))

(declare-fun b!1421813 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97041 (_ BitVec 32)) SeekEntryResult!11141)

(assert (=> b!1421813 (= e!803891 (= (seekEntryOrOpen!0 (select (arr!46834 a!2831) j!81) a!2831 mask!2608) (Found!11141 j!81)))))

(declare-fun b!1421814 () Bool)

(declare-fun res!957360 () Bool)

(assert (=> b!1421814 (=> (not res!957360) (not e!803887))))

(assert (=> b!1421814 (= res!957360 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626380 lt!626381 mask!2608) lt!626383))))

(declare-fun b!1421815 () Bool)

(assert (=> b!1421815 (= e!803889 e!803888)))

(declare-fun res!957357 () Bool)

(assert (=> b!1421815 (=> (not res!957357) (not e!803888))))

(assert (=> b!1421815 (= res!957357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46834 a!2831) j!81) mask!2608) (select (arr!46834 a!2831) j!81) a!2831 mask!2608) lt!626382))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421815 (= lt!626382 (Intermediate!11141 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421816 () Bool)

(declare-fun res!957354 () Bool)

(assert (=> b!1421816 (=> (not res!957354) (not e!803889))))

(assert (=> b!1421816 (= res!957354 (validKeyInArray!0 (select (arr!46834 a!2831) i!982)))))

(declare-fun b!1421817 () Bool)

(declare-fun res!957353 () Bool)

(assert (=> b!1421817 (=> (not res!957353) (not e!803887))))

(assert (=> b!1421817 (= res!957353 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421818 () Bool)

(declare-fun res!957356 () Bool)

(assert (=> b!1421818 (=> (not res!957356) (not e!803889))))

(assert (=> b!1421818 (= res!957356 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47385 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47385 a!2831))))))

(assert (= (and start!122758 res!957355) b!1421810))

(assert (= (and b!1421810 res!957351) b!1421816))

(assert (= (and b!1421816 res!957354) b!1421812))

(assert (= (and b!1421812 res!957358) b!1421808))

(assert (= (and b!1421808 res!957349) b!1421806))

(assert (= (and b!1421806 res!957359) b!1421818))

(assert (= (and b!1421818 res!957356) b!1421815))

(assert (= (and b!1421815 res!957357) b!1421811))

(assert (= (and b!1421811 res!957350) b!1421809))

(assert (= (and b!1421809 res!957352) b!1421814))

(assert (= (and b!1421814 res!957360) b!1421817))

(assert (= (and b!1421817 res!957353) b!1421807))

(assert (= (and b!1421807 res!957348) b!1421813))

(declare-fun m!1312421 () Bool)

(assert (=> b!1421811 m!1312421))

(assert (=> b!1421811 m!1312421))

(declare-fun m!1312423 () Bool)

(assert (=> b!1421811 m!1312423))

(declare-fun m!1312425 () Bool)

(assert (=> b!1421811 m!1312425))

(declare-fun m!1312427 () Bool)

(assert (=> b!1421811 m!1312427))

(declare-fun m!1312429 () Bool)

(assert (=> b!1421809 m!1312429))

(assert (=> b!1421809 m!1312429))

(declare-fun m!1312431 () Bool)

(assert (=> b!1421809 m!1312431))

(declare-fun m!1312433 () Bool)

(assert (=> b!1421814 m!1312433))

(declare-fun m!1312435 () Bool)

(assert (=> b!1421806 m!1312435))

(assert (=> b!1421815 m!1312429))

(assert (=> b!1421815 m!1312429))

(declare-fun m!1312437 () Bool)

(assert (=> b!1421815 m!1312437))

(assert (=> b!1421815 m!1312437))

(assert (=> b!1421815 m!1312429))

(declare-fun m!1312439 () Bool)

(assert (=> b!1421815 m!1312439))

(declare-fun m!1312441 () Bool)

(assert (=> b!1421808 m!1312441))

(assert (=> b!1421812 m!1312429))

(assert (=> b!1421812 m!1312429))

(declare-fun m!1312443 () Bool)

(assert (=> b!1421812 m!1312443))

(declare-fun m!1312445 () Bool)

(assert (=> b!1421807 m!1312445))

(declare-fun m!1312447 () Bool)

(assert (=> b!1421807 m!1312447))

(declare-fun m!1312449 () Bool)

(assert (=> b!1421816 m!1312449))

(assert (=> b!1421816 m!1312449))

(declare-fun m!1312451 () Bool)

(assert (=> b!1421816 m!1312451))

(declare-fun m!1312453 () Bool)

(assert (=> start!122758 m!1312453))

(declare-fun m!1312455 () Bool)

(assert (=> start!122758 m!1312455))

(assert (=> b!1421813 m!1312429))

(assert (=> b!1421813 m!1312429))

(declare-fun m!1312457 () Bool)

(assert (=> b!1421813 m!1312457))

(push 1)

