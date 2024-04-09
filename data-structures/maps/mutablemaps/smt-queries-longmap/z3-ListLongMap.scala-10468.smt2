; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123120 () Bool)

(assert start!123120)

(declare-fun b!1427224 () Bool)

(declare-fun e!806162 () Bool)

(declare-fun e!806163 () Bool)

(assert (=> b!1427224 (= e!806162 e!806163)))

(declare-fun res!962374 () Bool)

(assert (=> b!1427224 (=> (not res!962374) (not e!806163))))

(declare-datatypes ((SeekEntryResult!11262 0))(
  ( (MissingZero!11262 (index!47439 (_ BitVec 32))) (Found!11262 (index!47440 (_ BitVec 32))) (Intermediate!11262 (undefined!12074 Bool) (index!47441 (_ BitVec 32)) (x!129079 (_ BitVec 32))) (Undefined!11262) (MissingVacant!11262 (index!47442 (_ BitVec 32))) )
))
(declare-fun lt!628461 () SeekEntryResult!11262)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97301 0))(
  ( (array!97302 (arr!46961 (Array (_ BitVec 32) (_ BitVec 64))) (size!47512 (_ BitVec 32))) )
))
(declare-fun lt!628460 () array!97301)

(declare-fun lt!628462 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97301 (_ BitVec 32)) SeekEntryResult!11262)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427224 (= res!962374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628462 mask!2608) lt!628462 lt!628460 mask!2608) lt!628461))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427224 (= lt!628461 (Intermediate!11262 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97301)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427224 (= lt!628462 (select (store (arr!46961 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427224 (= lt!628460 (array!97302 (store (arr!46961 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47512 a!2831)))))

(declare-fun b!1427225 () Bool)

(declare-fun e!806164 () Bool)

(assert (=> b!1427225 (= e!806164 e!806162)))

(declare-fun res!962376 () Bool)

(assert (=> b!1427225 (=> (not res!962376) (not e!806162))))

(declare-fun lt!628458 () SeekEntryResult!11262)

(assert (=> b!1427225 (= res!962376 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46961 a!2831) j!81) mask!2608) (select (arr!46961 a!2831) j!81) a!2831 mask!2608) lt!628458))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427225 (= lt!628458 (Intermediate!11262 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427226 () Bool)

(declare-fun res!962369 () Bool)

(assert (=> b!1427226 (=> (not res!962369) (not e!806163))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427226 (= res!962369 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628462 lt!628460 mask!2608) lt!628461))))

(declare-fun b!1427227 () Bool)

(declare-fun res!962364 () Bool)

(assert (=> b!1427227 (=> (not res!962364) (not e!806164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427227 (= res!962364 (validKeyInArray!0 (select (arr!46961 a!2831) i!982)))))

(declare-fun b!1427228 () Bool)

(declare-fun res!962365 () Bool)

(assert (=> b!1427228 (=> (not res!962365) (not e!806164))))

(declare-datatypes ((List!33651 0))(
  ( (Nil!33648) (Cons!33647 (h!34955 (_ BitVec 64)) (t!48352 List!33651)) )
))
(declare-fun arrayNoDuplicates!0 (array!97301 (_ BitVec 32) List!33651) Bool)

(assert (=> b!1427228 (= res!962365 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33648))))

(declare-fun b!1427229 () Bool)

(declare-fun res!962367 () Bool)

(assert (=> b!1427229 (=> (not res!962367) (not e!806164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97301 (_ BitVec 32)) Bool)

(assert (=> b!1427229 (= res!962367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun e!806161 () Bool)

(declare-fun b!1427231 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97301 (_ BitVec 32)) SeekEntryResult!11262)

(assert (=> b!1427231 (= e!806161 (= (seekEntryOrOpen!0 (select (arr!46961 a!2831) j!81) a!2831 mask!2608) (Found!11262 j!81)))))

(declare-fun b!1427232 () Bool)

(declare-fun res!962368 () Bool)

(assert (=> b!1427232 (=> (not res!962368) (not e!806164))))

(assert (=> b!1427232 (= res!962368 (validKeyInArray!0 (select (arr!46961 a!2831) j!81)))))

(declare-fun b!1427233 () Bool)

(assert (=> b!1427233 (= e!806163 (not true))))

(assert (=> b!1427233 e!806161))

(declare-fun res!962372 () Bool)

(assert (=> b!1427233 (=> (not res!962372) (not e!806161))))

(assert (=> b!1427233 (= res!962372 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48218 0))(
  ( (Unit!48219) )
))
(declare-fun lt!628459 () Unit!48218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48218)

(assert (=> b!1427233 (= lt!628459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427234 () Bool)

(declare-fun res!962366 () Bool)

(assert (=> b!1427234 (=> (not res!962366) (not e!806164))))

(assert (=> b!1427234 (= res!962366 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47512 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47512 a!2831))))))

(declare-fun b!1427235 () Bool)

(declare-fun res!962375 () Bool)

(assert (=> b!1427235 (=> (not res!962375) (not e!806163))))

(assert (=> b!1427235 (= res!962375 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46961 a!2831) j!81) a!2831 mask!2608) lt!628458))))

(declare-fun b!1427236 () Bool)

(declare-fun res!962370 () Bool)

(assert (=> b!1427236 (=> (not res!962370) (not e!806164))))

(assert (=> b!1427236 (= res!962370 (and (= (size!47512 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47512 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47512 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427230 () Bool)

(declare-fun res!962371 () Bool)

(assert (=> b!1427230 (=> (not res!962371) (not e!806163))))

(assert (=> b!1427230 (= res!962371 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!962373 () Bool)

(assert (=> start!123120 (=> (not res!962373) (not e!806164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123120 (= res!962373 (validMask!0 mask!2608))))

(assert (=> start!123120 e!806164))

(assert (=> start!123120 true))

(declare-fun array_inv!35906 (array!97301) Bool)

(assert (=> start!123120 (array_inv!35906 a!2831)))

(assert (= (and start!123120 res!962373) b!1427236))

(assert (= (and b!1427236 res!962370) b!1427227))

(assert (= (and b!1427227 res!962364) b!1427232))

(assert (= (and b!1427232 res!962368) b!1427229))

(assert (= (and b!1427229 res!962367) b!1427228))

(assert (= (and b!1427228 res!962365) b!1427234))

(assert (= (and b!1427234 res!962366) b!1427225))

(assert (= (and b!1427225 res!962376) b!1427224))

(assert (= (and b!1427224 res!962374) b!1427235))

(assert (= (and b!1427235 res!962375) b!1427226))

(assert (= (and b!1427226 res!962369) b!1427230))

(assert (= (and b!1427230 res!962371) b!1427233))

(assert (= (and b!1427233 res!962372) b!1427231))

(declare-fun m!1317655 () Bool)

(assert (=> b!1427225 m!1317655))

(assert (=> b!1427225 m!1317655))

(declare-fun m!1317657 () Bool)

(assert (=> b!1427225 m!1317657))

(assert (=> b!1427225 m!1317657))

(assert (=> b!1427225 m!1317655))

(declare-fun m!1317659 () Bool)

(assert (=> b!1427225 m!1317659))

(declare-fun m!1317661 () Bool)

(assert (=> b!1427229 m!1317661))

(assert (=> b!1427235 m!1317655))

(assert (=> b!1427235 m!1317655))

(declare-fun m!1317663 () Bool)

(assert (=> b!1427235 m!1317663))

(declare-fun m!1317665 () Bool)

(assert (=> b!1427227 m!1317665))

(assert (=> b!1427227 m!1317665))

(declare-fun m!1317667 () Bool)

(assert (=> b!1427227 m!1317667))

(declare-fun m!1317669 () Bool)

(assert (=> start!123120 m!1317669))

(declare-fun m!1317671 () Bool)

(assert (=> start!123120 m!1317671))

(declare-fun m!1317673 () Bool)

(assert (=> b!1427228 m!1317673))

(declare-fun m!1317675 () Bool)

(assert (=> b!1427233 m!1317675))

(declare-fun m!1317677 () Bool)

(assert (=> b!1427233 m!1317677))

(declare-fun m!1317679 () Bool)

(assert (=> b!1427226 m!1317679))

(assert (=> b!1427232 m!1317655))

(assert (=> b!1427232 m!1317655))

(declare-fun m!1317681 () Bool)

(assert (=> b!1427232 m!1317681))

(assert (=> b!1427231 m!1317655))

(assert (=> b!1427231 m!1317655))

(declare-fun m!1317683 () Bool)

(assert (=> b!1427231 m!1317683))

(declare-fun m!1317685 () Bool)

(assert (=> b!1427224 m!1317685))

(assert (=> b!1427224 m!1317685))

(declare-fun m!1317687 () Bool)

(assert (=> b!1427224 m!1317687))

(declare-fun m!1317689 () Bool)

(assert (=> b!1427224 m!1317689))

(declare-fun m!1317691 () Bool)

(assert (=> b!1427224 m!1317691))

(check-sat (not b!1427227) (not b!1427225) (not b!1427229) (not b!1427232) (not b!1427228) (not b!1427231) (not b!1427235) (not start!123120) (not b!1427233) (not b!1427224) (not b!1427226))
(check-sat)
