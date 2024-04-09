; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125158 () Bool)

(assert start!125158)

(declare-fun b!1457386 () Bool)

(declare-fun e!819888 () Bool)

(declare-fun e!819891 () Bool)

(assert (=> b!1457386 (= e!819888 e!819891)))

(declare-fun res!987793 () Bool)

(assert (=> b!1457386 (=> res!987793 e!819891)))

(declare-fun lt!638628 () (_ BitVec 32))

(declare-datatypes ((array!98523 0))(
  ( (array!98524 (arr!47545 (Array (_ BitVec 32) (_ BitVec 64))) (size!48096 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98523)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1457386 (= res!987793 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638628 #b00000000000000000000000000000000) (bvsge lt!638628 (size!48096 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457386 (= lt!638628 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638629 () array!98523)

(declare-fun lt!638633 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11820 0))(
  ( (MissingZero!11820 (index!49671 (_ BitVec 32))) (Found!11820 (index!49672 (_ BitVec 32))) (Intermediate!11820 (undefined!12632 Bool) (index!49673 (_ BitVec 32)) (x!131296 (_ BitVec 32))) (Undefined!11820) (MissingVacant!11820 (index!49674 (_ BitVec 32))) )
))
(declare-fun lt!638635 () SeekEntryResult!11820)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98523 (_ BitVec 32)) SeekEntryResult!11820)

(assert (=> b!1457386 (= lt!638635 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638633 lt!638629 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98523 (_ BitVec 32)) SeekEntryResult!11820)

(assert (=> b!1457386 (= lt!638635 (seekEntryOrOpen!0 lt!638633 lt!638629 mask!2687))))

(declare-fun b!1457387 () Bool)

(declare-fun e!819893 () Bool)

(declare-fun e!819884 () Bool)

(assert (=> b!1457387 (= e!819893 e!819884)))

(declare-fun res!987796 () Bool)

(assert (=> b!1457387 (=> (not res!987796) (not e!819884))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!638630 () SeekEntryResult!11820)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98523 (_ BitVec 32)) SeekEntryResult!11820)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457387 (= res!987796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47545 a!2862) j!93) mask!2687) (select (arr!47545 a!2862) j!93) a!2862 mask!2687) lt!638630))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457387 (= lt!638630 (Intermediate!11820 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!987806 () Bool)

(declare-fun e!819890 () Bool)

(assert (=> start!125158 (=> (not res!987806) (not e!819890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125158 (= res!987806 (validMask!0 mask!2687))))

(assert (=> start!125158 e!819890))

(assert (=> start!125158 true))

(declare-fun array_inv!36490 (array!98523) Bool)

(assert (=> start!125158 (array_inv!36490 a!2862)))

(declare-fun b!1457388 () Bool)

(assert (=> b!1457388 (= e!819890 e!819893)))

(declare-fun res!987807 () Bool)

(assert (=> b!1457388 (=> (not res!987807) (not e!819893))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457388 (= res!987807 (= (select (store (arr!47545 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457388 (= lt!638629 (array!98524 (store (arr!47545 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48096 a!2862)))))

(declare-fun b!1457389 () Bool)

(declare-fun res!987794 () Bool)

(assert (=> b!1457389 (=> (not res!987794) (not e!819890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457389 (= res!987794 (validKeyInArray!0 (select (arr!47545 a!2862) i!1006)))))

(declare-fun b!1457390 () Bool)

(declare-fun res!987801 () Bool)

(assert (=> b!1457390 (=> (not res!987801) (not e!819890))))

(assert (=> b!1457390 (= res!987801 (and (= (size!48096 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48096 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48096 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457391 () Bool)

(declare-fun e!819892 () Bool)

(assert (=> b!1457391 (= e!819884 e!819892)))

(declare-fun res!987797 () Bool)

(assert (=> b!1457391 (=> (not res!987797) (not e!819892))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!638632 () SeekEntryResult!11820)

(assert (=> b!1457391 (= res!987797 (= lt!638632 (Intermediate!11820 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457391 (= lt!638632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638633 mask!2687) lt!638633 lt!638629 mask!2687))))

(assert (=> b!1457391 (= lt!638633 (select (store (arr!47545 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457392 () Bool)

(declare-fun res!987803 () Bool)

(assert (=> b!1457392 (=> (not res!987803) (not e!819890))))

(assert (=> b!1457392 (= res!987803 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48096 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48096 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48096 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!819887 () Bool)

(declare-fun b!1457393 () Bool)

(assert (=> b!1457393 (= e!819887 (and (or (= (select (arr!47545 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47545 a!2862) intermediateBeforeIndex!19) (select (arr!47545 a!2862) j!93))) (let ((bdg!53341 (select (store (arr!47545 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47545 a!2862) index!646) bdg!53341) (= (select (arr!47545 a!2862) index!646) (select (arr!47545 a!2862) j!93))) (= (select (arr!47545 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53341 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457394 () Bool)

(declare-fun res!987792 () Bool)

(assert (=> b!1457394 (=> (not res!987792) (not e!819892))))

(declare-fun e!819886 () Bool)

(assert (=> b!1457394 (= res!987792 e!819886)))

(declare-fun c!134311 () Bool)

(assert (=> b!1457394 (= c!134311 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457395 () Bool)

(declare-fun res!987790 () Bool)

(assert (=> b!1457395 (=> (not res!987790) (not e!819890))))

(assert (=> b!1457395 (= res!987790 (validKeyInArray!0 (select (arr!47545 a!2862) j!93)))))

(declare-fun b!1457396 () Bool)

(declare-fun e!819885 () Bool)

(assert (=> b!1457396 (= e!819885 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638628 intermediateAfterIndex!19 lt!638633 lt!638629 mask!2687) lt!638635)))))

(declare-fun b!1457397 () Bool)

(assert (=> b!1457397 (= e!819892 (not e!819888))))

(declare-fun res!987795 () Bool)

(assert (=> b!1457397 (=> res!987795 e!819888)))

(assert (=> b!1457397 (= res!987795 (or (and (= (select (arr!47545 a!2862) index!646) (select (store (arr!47545 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47545 a!2862) index!646) (select (arr!47545 a!2862) j!93))) (= (select (arr!47545 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457397 e!819887))

(declare-fun res!987799 () Bool)

(assert (=> b!1457397 (=> (not res!987799) (not e!819887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98523 (_ BitVec 32)) Bool)

(assert (=> b!1457397 (= res!987799 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49084 0))(
  ( (Unit!49085) )
))
(declare-fun lt!638634 () Unit!49084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49084)

(assert (=> b!1457397 (= lt!638634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457398 () Bool)

(declare-fun res!987791 () Bool)

(assert (=> b!1457398 (=> (not res!987791) (not e!819887))))

(assert (=> b!1457398 (= res!987791 (= (seekEntryOrOpen!0 (select (arr!47545 a!2862) j!93) a!2862 mask!2687) (Found!11820 j!93)))))

(declare-fun b!1457399 () Bool)

(assert (=> b!1457399 (= e!819886 (= lt!638632 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638633 lt!638629 mask!2687)))))

(declare-fun b!1457400 () Bool)

(declare-fun res!987805 () Bool)

(assert (=> b!1457400 (=> res!987805 e!819891)))

(assert (=> b!1457400 (= res!987805 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638628 (select (arr!47545 a!2862) j!93) a!2862 mask!2687) lt!638630)))))

(declare-fun b!1457401 () Bool)

(declare-fun res!987800 () Bool)

(assert (=> b!1457401 (=> (not res!987800) (not e!819884))))

(assert (=> b!1457401 (= res!987800 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47545 a!2862) j!93) a!2862 mask!2687) lt!638630))))

(declare-fun b!1457402 () Bool)

(assert (=> b!1457402 (= e!819891 true)))

(declare-fun lt!638631 () Bool)

(assert (=> b!1457402 (= lt!638631 e!819885)))

(declare-fun c!134312 () Bool)

(assert (=> b!1457402 (= c!134312 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457403 () Bool)

(assert (=> b!1457403 (= e!819885 (not (= lt!638632 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638628 lt!638633 lt!638629 mask!2687))))))

(declare-fun b!1457404 () Bool)

(assert (=> b!1457404 (= e!819886 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638633 lt!638629 mask!2687) (seekEntryOrOpen!0 lt!638633 lt!638629 mask!2687)))))

(declare-fun b!1457405 () Bool)

(declare-fun res!987798 () Bool)

(assert (=> b!1457405 (=> (not res!987798) (not e!819890))))

(assert (=> b!1457405 (= res!987798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457406 () Bool)

(declare-fun res!987802 () Bool)

(assert (=> b!1457406 (=> (not res!987802) (not e!819890))))

(declare-datatypes ((List!34226 0))(
  ( (Nil!34223) (Cons!34222 (h!35572 (_ BitVec 64)) (t!48927 List!34226)) )
))
(declare-fun arrayNoDuplicates!0 (array!98523 (_ BitVec 32) List!34226) Bool)

(assert (=> b!1457406 (= res!987802 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34223))))

(declare-fun b!1457407 () Bool)

(declare-fun res!987804 () Bool)

(assert (=> b!1457407 (=> (not res!987804) (not e!819892))))

(assert (=> b!1457407 (= res!987804 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125158 res!987806) b!1457390))

(assert (= (and b!1457390 res!987801) b!1457389))

(assert (= (and b!1457389 res!987794) b!1457395))

(assert (= (and b!1457395 res!987790) b!1457405))

(assert (= (and b!1457405 res!987798) b!1457406))

(assert (= (and b!1457406 res!987802) b!1457392))

(assert (= (and b!1457392 res!987803) b!1457388))

(assert (= (and b!1457388 res!987807) b!1457387))

(assert (= (and b!1457387 res!987796) b!1457401))

(assert (= (and b!1457401 res!987800) b!1457391))

(assert (= (and b!1457391 res!987797) b!1457394))

(assert (= (and b!1457394 c!134311) b!1457399))

(assert (= (and b!1457394 (not c!134311)) b!1457404))

(assert (= (and b!1457394 res!987792) b!1457407))

(assert (= (and b!1457407 res!987804) b!1457397))

(assert (= (and b!1457397 res!987799) b!1457398))

(assert (= (and b!1457398 res!987791) b!1457393))

(assert (= (and b!1457397 (not res!987795)) b!1457386))

(assert (= (and b!1457386 (not res!987793)) b!1457400))

(assert (= (and b!1457400 (not res!987805)) b!1457402))

(assert (= (and b!1457402 c!134312) b!1457403))

(assert (= (and b!1457402 (not c!134312)) b!1457396))

(declare-fun m!1345419 () Bool)

(assert (=> b!1457398 m!1345419))

(assert (=> b!1457398 m!1345419))

(declare-fun m!1345421 () Bool)

(assert (=> b!1457398 m!1345421))

(assert (=> b!1457401 m!1345419))

(assert (=> b!1457401 m!1345419))

(declare-fun m!1345423 () Bool)

(assert (=> b!1457401 m!1345423))

(declare-fun m!1345425 () Bool)

(assert (=> start!125158 m!1345425))

(declare-fun m!1345427 () Bool)

(assert (=> start!125158 m!1345427))

(assert (=> b!1457395 m!1345419))

(assert (=> b!1457395 m!1345419))

(declare-fun m!1345429 () Bool)

(assert (=> b!1457395 m!1345429))

(declare-fun m!1345431 () Bool)

(assert (=> b!1457393 m!1345431))

(declare-fun m!1345433 () Bool)

(assert (=> b!1457393 m!1345433))

(declare-fun m!1345435 () Bool)

(assert (=> b!1457393 m!1345435))

(declare-fun m!1345437 () Bool)

(assert (=> b!1457393 m!1345437))

(assert (=> b!1457393 m!1345419))

(declare-fun m!1345439 () Bool)

(assert (=> b!1457386 m!1345439))

(declare-fun m!1345441 () Bool)

(assert (=> b!1457386 m!1345441))

(declare-fun m!1345443 () Bool)

(assert (=> b!1457386 m!1345443))

(assert (=> b!1457387 m!1345419))

(assert (=> b!1457387 m!1345419))

(declare-fun m!1345445 () Bool)

(assert (=> b!1457387 m!1345445))

(assert (=> b!1457387 m!1345445))

(assert (=> b!1457387 m!1345419))

(declare-fun m!1345447 () Bool)

(assert (=> b!1457387 m!1345447))

(assert (=> b!1457388 m!1345431))

(declare-fun m!1345449 () Bool)

(assert (=> b!1457388 m!1345449))

(declare-fun m!1345451 () Bool)

(assert (=> b!1457406 m!1345451))

(declare-fun m!1345453 () Bool)

(assert (=> b!1457396 m!1345453))

(declare-fun m!1345455 () Bool)

(assert (=> b!1457405 m!1345455))

(declare-fun m!1345457 () Bool)

(assert (=> b!1457399 m!1345457))

(assert (=> b!1457400 m!1345419))

(assert (=> b!1457400 m!1345419))

(declare-fun m!1345459 () Bool)

(assert (=> b!1457400 m!1345459))

(assert (=> b!1457404 m!1345441))

(assert (=> b!1457404 m!1345443))

(declare-fun m!1345461 () Bool)

(assert (=> b!1457389 m!1345461))

(assert (=> b!1457389 m!1345461))

(declare-fun m!1345463 () Bool)

(assert (=> b!1457389 m!1345463))

(declare-fun m!1345465 () Bool)

(assert (=> b!1457403 m!1345465))

(declare-fun m!1345467 () Bool)

(assert (=> b!1457391 m!1345467))

(assert (=> b!1457391 m!1345467))

(declare-fun m!1345469 () Bool)

(assert (=> b!1457391 m!1345469))

(assert (=> b!1457391 m!1345431))

(declare-fun m!1345471 () Bool)

(assert (=> b!1457391 m!1345471))

(declare-fun m!1345473 () Bool)

(assert (=> b!1457397 m!1345473))

(assert (=> b!1457397 m!1345431))

(assert (=> b!1457397 m!1345435))

(assert (=> b!1457397 m!1345437))

(declare-fun m!1345475 () Bool)

(assert (=> b!1457397 m!1345475))

(assert (=> b!1457397 m!1345419))

(push 1)

