; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123124 () Bool)

(assert start!123124)

(declare-fun b!1427302 () Bool)

(declare-fun res!962452 () Bool)

(declare-fun e!806193 () Bool)

(assert (=> b!1427302 (=> (not res!962452) (not e!806193))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97305 0))(
  ( (array!97306 (arr!46963 (Array (_ BitVec 32) (_ BitVec 64))) (size!47514 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97305)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427302 (= res!962452 (and (= (size!47514 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47514 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47514 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427303 () Bool)

(declare-fun e!806191 () Bool)

(assert (=> b!1427303 (= e!806193 e!806191)))

(declare-fun res!962446 () Bool)

(assert (=> b!1427303 (=> (not res!962446) (not e!806191))))

(declare-datatypes ((SeekEntryResult!11264 0))(
  ( (MissingZero!11264 (index!47447 (_ BitVec 32))) (Found!11264 (index!47448 (_ BitVec 32))) (Intermediate!11264 (undefined!12076 Bool) (index!47449 (_ BitVec 32)) (x!129089 (_ BitVec 32))) (Undefined!11264) (MissingVacant!11264 (index!47450 (_ BitVec 32))) )
))
(declare-fun lt!628491 () SeekEntryResult!11264)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97305 (_ BitVec 32)) SeekEntryResult!11264)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427303 (= res!962446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46963 a!2831) j!81) mask!2608) (select (arr!46963 a!2831) j!81) a!2831 mask!2608) lt!628491))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427303 (= lt!628491 (Intermediate!11264 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427304 () Bool)

(declare-fun res!962450 () Bool)

(assert (=> b!1427304 (=> (not res!962450) (not e!806193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97305 (_ BitVec 32)) Bool)

(assert (=> b!1427304 (= res!962450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427305 () Bool)

(declare-fun res!962447 () Bool)

(assert (=> b!1427305 (=> (not res!962447) (not e!806193))))

(declare-datatypes ((List!33653 0))(
  ( (Nil!33650) (Cons!33649 (h!34957 (_ BitVec 64)) (t!48354 List!33653)) )
))
(declare-fun arrayNoDuplicates!0 (array!97305 (_ BitVec 32) List!33653) Bool)

(assert (=> b!1427305 (= res!962447 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33650))))

(declare-fun b!1427306 () Bool)

(declare-fun e!806195 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97305 (_ BitVec 32)) SeekEntryResult!11264)

(assert (=> b!1427306 (= e!806195 (= (seekEntryOrOpen!0 (select (arr!46963 a!2831) j!81) a!2831 mask!2608) (Found!11264 j!81)))))

(declare-fun b!1427307 () Bool)

(declare-fun res!962448 () Bool)

(declare-fun e!806192 () Bool)

(assert (=> b!1427307 (=> (not res!962448) (not e!806192))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427307 (= res!962448 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427309 () Bool)

(assert (=> b!1427309 (= e!806191 e!806192)))

(declare-fun res!962451 () Bool)

(assert (=> b!1427309 (=> (not res!962451) (not e!806192))))

(declare-fun lt!628492 () (_ BitVec 64))

(declare-fun lt!628489 () SeekEntryResult!11264)

(declare-fun lt!628490 () array!97305)

(assert (=> b!1427309 (= res!962451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628492 mask!2608) lt!628492 lt!628490 mask!2608) lt!628489))))

(assert (=> b!1427309 (= lt!628489 (Intermediate!11264 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427309 (= lt!628492 (select (store (arr!46963 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427309 (= lt!628490 (array!97306 (store (arr!46963 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47514 a!2831)))))

(declare-fun b!1427310 () Bool)

(declare-fun res!962442 () Bool)

(assert (=> b!1427310 (=> (not res!962442) (not e!806193))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427310 (= res!962442 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47514 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47514 a!2831))))))

(declare-fun b!1427311 () Bool)

(assert (=> b!1427311 (= e!806192 (not true))))

(assert (=> b!1427311 e!806195))

(declare-fun res!962454 () Bool)

(assert (=> b!1427311 (=> (not res!962454) (not e!806195))))

(assert (=> b!1427311 (= res!962454 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48222 0))(
  ( (Unit!48223) )
))
(declare-fun lt!628488 () Unit!48222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48222)

(assert (=> b!1427311 (= lt!628488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427312 () Bool)

(declare-fun res!962445 () Bool)

(assert (=> b!1427312 (=> (not res!962445) (not e!806193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427312 (= res!962445 (validKeyInArray!0 (select (arr!46963 a!2831) j!81)))))

(declare-fun b!1427313 () Bool)

(declare-fun res!962449 () Bool)

(assert (=> b!1427313 (=> (not res!962449) (not e!806192))))

(assert (=> b!1427313 (= res!962449 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46963 a!2831) j!81) a!2831 mask!2608) lt!628491))))

(declare-fun b!1427314 () Bool)

(declare-fun res!962443 () Bool)

(assert (=> b!1427314 (=> (not res!962443) (not e!806192))))

(assert (=> b!1427314 (= res!962443 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628492 lt!628490 mask!2608) lt!628489))))

(declare-fun res!962453 () Bool)

(assert (=> start!123124 (=> (not res!962453) (not e!806193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123124 (= res!962453 (validMask!0 mask!2608))))

(assert (=> start!123124 e!806193))

(assert (=> start!123124 true))

(declare-fun array_inv!35908 (array!97305) Bool)

(assert (=> start!123124 (array_inv!35908 a!2831)))

(declare-fun b!1427308 () Bool)

(declare-fun res!962444 () Bool)

(assert (=> b!1427308 (=> (not res!962444) (not e!806193))))

(assert (=> b!1427308 (= res!962444 (validKeyInArray!0 (select (arr!46963 a!2831) i!982)))))

(assert (= (and start!123124 res!962453) b!1427302))

(assert (= (and b!1427302 res!962452) b!1427308))

(assert (= (and b!1427308 res!962444) b!1427312))

(assert (= (and b!1427312 res!962445) b!1427304))

(assert (= (and b!1427304 res!962450) b!1427305))

(assert (= (and b!1427305 res!962447) b!1427310))

(assert (= (and b!1427310 res!962442) b!1427303))

(assert (= (and b!1427303 res!962446) b!1427309))

(assert (= (and b!1427309 res!962451) b!1427313))

(assert (= (and b!1427313 res!962449) b!1427314))

(assert (= (and b!1427314 res!962443) b!1427307))

(assert (= (and b!1427307 res!962448) b!1427311))

(assert (= (and b!1427311 res!962454) b!1427306))

(declare-fun m!1317731 () Bool)

(assert (=> start!123124 m!1317731))

(declare-fun m!1317733 () Bool)

(assert (=> start!123124 m!1317733))

(declare-fun m!1317735 () Bool)

(assert (=> b!1427306 m!1317735))

(assert (=> b!1427306 m!1317735))

(declare-fun m!1317737 () Bool)

(assert (=> b!1427306 m!1317737))

(assert (=> b!1427312 m!1317735))

(assert (=> b!1427312 m!1317735))

(declare-fun m!1317739 () Bool)

(assert (=> b!1427312 m!1317739))

(declare-fun m!1317741 () Bool)

(assert (=> b!1427311 m!1317741))

(declare-fun m!1317743 () Bool)

(assert (=> b!1427311 m!1317743))

(assert (=> b!1427303 m!1317735))

(assert (=> b!1427303 m!1317735))

(declare-fun m!1317745 () Bool)

(assert (=> b!1427303 m!1317745))

(assert (=> b!1427303 m!1317745))

(assert (=> b!1427303 m!1317735))

(declare-fun m!1317747 () Bool)

(assert (=> b!1427303 m!1317747))

(assert (=> b!1427313 m!1317735))

(assert (=> b!1427313 m!1317735))

(declare-fun m!1317749 () Bool)

(assert (=> b!1427313 m!1317749))

(declare-fun m!1317751 () Bool)

(assert (=> b!1427309 m!1317751))

(assert (=> b!1427309 m!1317751))

(declare-fun m!1317753 () Bool)

(assert (=> b!1427309 m!1317753))

(declare-fun m!1317755 () Bool)

(assert (=> b!1427309 m!1317755))

(declare-fun m!1317757 () Bool)

(assert (=> b!1427309 m!1317757))

(declare-fun m!1317759 () Bool)

(assert (=> b!1427308 m!1317759))

(assert (=> b!1427308 m!1317759))

(declare-fun m!1317761 () Bool)

(assert (=> b!1427308 m!1317761))

(declare-fun m!1317763 () Bool)

(assert (=> b!1427304 m!1317763))

(declare-fun m!1317765 () Bool)

(assert (=> b!1427305 m!1317765))

(declare-fun m!1317767 () Bool)

(assert (=> b!1427314 m!1317767))

(push 1)

