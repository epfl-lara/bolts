; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126876 () Bool)

(assert start!126876)

(declare-fun b!1489044 () Bool)

(declare-fun res!1012670 () Bool)

(declare-fun e!834617 () Bool)

(assert (=> b!1489044 (=> (not res!1012670) (not e!834617))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99566 0))(
  ( (array!99567 (arr!48050 (Array (_ BitVec 32) (_ BitVec 64))) (size!48601 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99566)

(assert (=> b!1489044 (= res!1012670 (and (= (size!48601 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48601 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48601 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489045 () Bool)

(declare-fun res!1012663 () Bool)

(assert (=> b!1489045 (=> (not res!1012663) (not e!834617))))

(declare-datatypes ((List!34731 0))(
  ( (Nil!34728) (Cons!34727 (h!36110 (_ BitVec 64)) (t!49432 List!34731)) )
))
(declare-fun arrayNoDuplicates!0 (array!99566 (_ BitVec 32) List!34731) Bool)

(assert (=> b!1489045 (= res!1012663 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34728))))

(declare-fun b!1489046 () Bool)

(declare-fun res!1012662 () Bool)

(declare-fun e!834618 () Bool)

(assert (=> b!1489046 (=> res!1012662 e!834618)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12313 0))(
  ( (MissingZero!12313 (index!51643 (_ BitVec 32))) (Found!12313 (index!51644 (_ BitVec 32))) (Intermediate!12313 (undefined!13125 Bool) (index!51645 (_ BitVec 32)) (x!133244 (_ BitVec 32))) (Undefined!12313) (MissingVacant!12313 (index!51646 (_ BitVec 32))) )
))
(declare-fun lt!649377 () SeekEntryResult!12313)

(declare-fun lt!649376 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99566 (_ BitVec 32)) SeekEntryResult!12313)

(assert (=> b!1489046 (= res!1012662 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649376 (select (arr!48050 a!2862) j!93) a!2862 mask!2687) lt!649377)))))

(declare-fun b!1489047 () Bool)

(declare-fun e!834624 () Bool)

(assert (=> b!1489047 (= e!834624 e!834618)))

(declare-fun res!1012664 () Bool)

(assert (=> b!1489047 (=> res!1012664 e!834618)))

(assert (=> b!1489047 (= res!1012664 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649376 #b00000000000000000000000000000000) (bvsge lt!649376 (size!48601 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489047 (= lt!649376 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649378 () SeekEntryResult!12313)

(declare-fun lt!649372 () array!99566)

(declare-fun lt!649374 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99566 (_ BitVec 32)) SeekEntryResult!12313)

(assert (=> b!1489047 (= lt!649378 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649374 lt!649372 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99566 (_ BitVec 32)) SeekEntryResult!12313)

(assert (=> b!1489047 (= lt!649378 (seekEntryOrOpen!0 lt!649374 lt!649372 mask!2687))))

(declare-fun b!1489048 () Bool)

(declare-fun e!834619 () Bool)

(assert (=> b!1489048 (= e!834619 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649374 lt!649372 mask!2687) (seekEntryOrOpen!0 lt!649374 lt!649372 mask!2687)))))

(declare-fun b!1489049 () Bool)

(declare-fun res!1012665 () Bool)

(assert (=> b!1489049 (=> (not res!1012665) (not e!834617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489049 (= res!1012665 (validKeyInArray!0 (select (arr!48050 a!2862) i!1006)))))

(declare-fun b!1489050 () Bool)

(declare-fun res!1012669 () Bool)

(declare-fun e!834620 () Bool)

(assert (=> b!1489050 (=> (not res!1012669) (not e!834620))))

(assert (=> b!1489050 (= res!1012669 (= (seekEntryOrOpen!0 (select (arr!48050 a!2862) j!93) a!2862 mask!2687) (Found!12313 j!93)))))

(declare-fun e!834626 () Bool)

(declare-fun b!1489051 () Bool)

(assert (=> b!1489051 (= e!834626 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649376 intermediateAfterIndex!19 lt!649374 lt!649372 mask!2687) lt!649378)))))

(declare-fun b!1489053 () Bool)

(declare-fun e!834622 () Bool)

(assert (=> b!1489053 (= e!834622 (not e!834624))))

(declare-fun res!1012658 () Bool)

(assert (=> b!1489053 (=> res!1012658 e!834624)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489053 (= res!1012658 (or (and (= (select (arr!48050 a!2862) index!646) (select (store (arr!48050 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48050 a!2862) index!646) (select (arr!48050 a!2862) j!93))) (= (select (arr!48050 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489053 e!834620))

(declare-fun res!1012655 () Bool)

(assert (=> b!1489053 (=> (not res!1012655) (not e!834620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99566 (_ BitVec 32)) Bool)

(assert (=> b!1489053 (= res!1012655 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49914 0))(
  ( (Unit!49915) )
))
(declare-fun lt!649373 () Unit!49914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49914)

(assert (=> b!1489053 (= lt!649373 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489054 () Bool)

(declare-fun res!1012660 () Bool)

(assert (=> b!1489054 (=> (not res!1012660) (not e!834617))))

(assert (=> b!1489054 (= res!1012660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489055 () Bool)

(declare-fun res!1012667 () Bool)

(assert (=> b!1489055 (=> (not res!1012667) (not e!834622))))

(assert (=> b!1489055 (= res!1012667 e!834619)))

(declare-fun c!137726 () Bool)

(assert (=> b!1489055 (= c!137726 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489056 () Bool)

(declare-fun res!1012666 () Bool)

(assert (=> b!1489056 (=> (not res!1012666) (not e!834617))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489056 (= res!1012666 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48601 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48601 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48601 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489057 () Bool)

(declare-fun e!834623 () Bool)

(declare-fun e!834625 () Bool)

(assert (=> b!1489057 (= e!834623 e!834625)))

(declare-fun res!1012654 () Bool)

(assert (=> b!1489057 (=> (not res!1012654) (not e!834625))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489057 (= res!1012654 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48050 a!2862) j!93) mask!2687) (select (arr!48050 a!2862) j!93) a!2862 mask!2687) lt!649377))))

(assert (=> b!1489057 (= lt!649377 (Intermediate!12313 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489058 () Bool)

(assert (=> b!1489058 (= e!834625 e!834622)))

(declare-fun res!1012661 () Bool)

(assert (=> b!1489058 (=> (not res!1012661) (not e!834622))))

(declare-fun lt!649375 () SeekEntryResult!12313)

(assert (=> b!1489058 (= res!1012661 (= lt!649375 (Intermediate!12313 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489058 (= lt!649375 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649374 mask!2687) lt!649374 lt!649372 mask!2687))))

(assert (=> b!1489058 (= lt!649374 (select (store (arr!48050 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489059 () Bool)

(assert (=> b!1489059 (= e!834619 (= lt!649375 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649374 lt!649372 mask!2687)))))

(declare-fun b!1489060 () Bool)

(declare-fun res!1012659 () Bool)

(assert (=> b!1489060 (=> (not res!1012659) (not e!834625))))

(assert (=> b!1489060 (= res!1012659 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48050 a!2862) j!93) a!2862 mask!2687) lt!649377))))

(declare-fun b!1489061 () Bool)

(assert (=> b!1489061 (= e!834617 e!834623)))

(declare-fun res!1012671 () Bool)

(assert (=> b!1489061 (=> (not res!1012671) (not e!834623))))

(assert (=> b!1489061 (= res!1012671 (= (select (store (arr!48050 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489061 (= lt!649372 (array!99567 (store (arr!48050 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48601 a!2862)))))

(declare-fun b!1489062 () Bool)

(assert (=> b!1489062 (= e!834618 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun b!1489063 () Bool)

(assert (=> b!1489063 (= e!834620 (and (or (= (select (arr!48050 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48050 a!2862) intermediateBeforeIndex!19) (select (arr!48050 a!2862) j!93))) (let ((bdg!54691 (select (store (arr!48050 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48050 a!2862) index!646) bdg!54691) (= (select (arr!48050 a!2862) index!646) (select (arr!48050 a!2862) j!93))) (= (select (arr!48050 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54691 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1489064 () Bool)

(assert (=> b!1489064 (= e!834626 (not (= lt!649375 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649376 lt!649374 lt!649372 mask!2687))))))

(declare-fun b!1489052 () Bool)

(declare-fun res!1012657 () Bool)

(assert (=> b!1489052 (=> res!1012657 e!834618)))

(assert (=> b!1489052 (= res!1012657 e!834626)))

(declare-fun c!137725 () Bool)

(assert (=> b!1489052 (= c!137725 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!1012656 () Bool)

(assert (=> start!126876 (=> (not res!1012656) (not e!834617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126876 (= res!1012656 (validMask!0 mask!2687))))

(assert (=> start!126876 e!834617))

(assert (=> start!126876 true))

(declare-fun array_inv!36995 (array!99566) Bool)

(assert (=> start!126876 (array_inv!36995 a!2862)))

(declare-fun b!1489065 () Bool)

(declare-fun res!1012653 () Bool)

(assert (=> b!1489065 (=> (not res!1012653) (not e!834617))))

(assert (=> b!1489065 (= res!1012653 (validKeyInArray!0 (select (arr!48050 a!2862) j!93)))))

(declare-fun b!1489066 () Bool)

(declare-fun res!1012668 () Bool)

(assert (=> b!1489066 (=> (not res!1012668) (not e!834622))))

(assert (=> b!1489066 (= res!1012668 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126876 res!1012656) b!1489044))

(assert (= (and b!1489044 res!1012670) b!1489049))

(assert (= (and b!1489049 res!1012665) b!1489065))

(assert (= (and b!1489065 res!1012653) b!1489054))

(assert (= (and b!1489054 res!1012660) b!1489045))

(assert (= (and b!1489045 res!1012663) b!1489056))

(assert (= (and b!1489056 res!1012666) b!1489061))

(assert (= (and b!1489061 res!1012671) b!1489057))

(assert (= (and b!1489057 res!1012654) b!1489060))

(assert (= (and b!1489060 res!1012659) b!1489058))

(assert (= (and b!1489058 res!1012661) b!1489055))

(assert (= (and b!1489055 c!137726) b!1489059))

(assert (= (and b!1489055 (not c!137726)) b!1489048))

(assert (= (and b!1489055 res!1012667) b!1489066))

(assert (= (and b!1489066 res!1012668) b!1489053))

(assert (= (and b!1489053 res!1012655) b!1489050))

(assert (= (and b!1489050 res!1012669) b!1489063))

(assert (= (and b!1489053 (not res!1012658)) b!1489047))

(assert (= (and b!1489047 (not res!1012664)) b!1489046))

(assert (= (and b!1489046 (not res!1012662)) b!1489052))

(assert (= (and b!1489052 c!137725) b!1489064))

(assert (= (and b!1489052 (not c!137725)) b!1489051))

(assert (= (and b!1489052 (not res!1012657)) b!1489062))

(declare-fun m!1373371 () Bool)

(assert (=> b!1489061 m!1373371))

(declare-fun m!1373373 () Bool)

(assert (=> b!1489061 m!1373373))

(declare-fun m!1373375 () Bool)

(assert (=> b!1489051 m!1373375))

(declare-fun m!1373377 () Bool)

(assert (=> b!1489045 m!1373377))

(declare-fun m!1373379 () Bool)

(assert (=> b!1489059 m!1373379))

(declare-fun m!1373381 () Bool)

(assert (=> b!1489049 m!1373381))

(assert (=> b!1489049 m!1373381))

(declare-fun m!1373383 () Bool)

(assert (=> b!1489049 m!1373383))

(declare-fun m!1373385 () Bool)

(assert (=> b!1489065 m!1373385))

(assert (=> b!1489065 m!1373385))

(declare-fun m!1373387 () Bool)

(assert (=> b!1489065 m!1373387))

(declare-fun m!1373389 () Bool)

(assert (=> b!1489048 m!1373389))

(declare-fun m!1373391 () Bool)

(assert (=> b!1489048 m!1373391))

(declare-fun m!1373393 () Bool)

(assert (=> b!1489047 m!1373393))

(assert (=> b!1489047 m!1373389))

(assert (=> b!1489047 m!1373391))

(declare-fun m!1373395 () Bool)

(assert (=> b!1489058 m!1373395))

(assert (=> b!1489058 m!1373395))

(declare-fun m!1373397 () Bool)

(assert (=> b!1489058 m!1373397))

(assert (=> b!1489058 m!1373371))

(declare-fun m!1373399 () Bool)

(assert (=> b!1489058 m!1373399))

(assert (=> b!1489050 m!1373385))

(assert (=> b!1489050 m!1373385))

(declare-fun m!1373401 () Bool)

(assert (=> b!1489050 m!1373401))

(declare-fun m!1373403 () Bool)

(assert (=> b!1489054 m!1373403))

(declare-fun m!1373405 () Bool)

(assert (=> b!1489053 m!1373405))

(assert (=> b!1489053 m!1373371))

(declare-fun m!1373407 () Bool)

(assert (=> b!1489053 m!1373407))

(declare-fun m!1373409 () Bool)

(assert (=> b!1489053 m!1373409))

(declare-fun m!1373411 () Bool)

(assert (=> b!1489053 m!1373411))

(assert (=> b!1489053 m!1373385))

(declare-fun m!1373413 () Bool)

(assert (=> b!1489064 m!1373413))

(assert (=> b!1489046 m!1373385))

(assert (=> b!1489046 m!1373385))

(declare-fun m!1373415 () Bool)

(assert (=> b!1489046 m!1373415))

(assert (=> b!1489057 m!1373385))

(assert (=> b!1489057 m!1373385))

(declare-fun m!1373417 () Bool)

(assert (=> b!1489057 m!1373417))

(assert (=> b!1489057 m!1373417))

(assert (=> b!1489057 m!1373385))

(declare-fun m!1373419 () Bool)

(assert (=> b!1489057 m!1373419))

(declare-fun m!1373421 () Bool)

(assert (=> start!126876 m!1373421))

(declare-fun m!1373423 () Bool)

(assert (=> start!126876 m!1373423))

(assert (=> b!1489063 m!1373371))

(declare-fun m!1373425 () Bool)

(assert (=> b!1489063 m!1373425))

(assert (=> b!1489063 m!1373407))

(assert (=> b!1489063 m!1373409))

(assert (=> b!1489063 m!1373385))

(assert (=> b!1489060 m!1373385))

(assert (=> b!1489060 m!1373385))

(declare-fun m!1373427 () Bool)

(assert (=> b!1489060 m!1373427))

(check-sat (not b!1489054) (not b!1489060) (not b!1489049) (not b!1489058) (not b!1489065) (not start!126876) (not b!1489059) (not b!1489047) (not b!1489053) (not b!1489045) (not b!1489057) (not b!1489051) (not b!1489064) (not b!1489046) (not b!1489050) (not b!1489048))
(check-sat)
