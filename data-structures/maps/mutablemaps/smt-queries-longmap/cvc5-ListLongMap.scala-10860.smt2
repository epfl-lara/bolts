; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127312 () Bool)

(assert start!127312)

(declare-fun lt!651766 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!651768 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12399 0))(
  ( (MissingZero!12399 (index!51987 (_ BitVec 32))) (Found!12399 (index!51988 (_ BitVec 32))) (Intermediate!12399 (undefined!13211 Bool) (index!51989 (_ BitVec 32)) (x!133610 (_ BitVec 32))) (Undefined!12399) (MissingVacant!12399 (index!51990 (_ BitVec 32))) )
))
(declare-fun lt!651764 () SeekEntryResult!12399)

(declare-datatypes ((array!99750 0))(
  ( (array!99751 (arr!48136 (Array (_ BitVec 32) (_ BitVec 64))) (size!48687 (_ BitVec 32))) )
))
(declare-fun lt!651769 () array!99750)

(declare-fun e!837728 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1495576 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99750 (_ BitVec 32)) SeekEntryResult!12399)

(assert (=> b!1495576 (= e!837728 (not (= lt!651764 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 lt!651766 lt!651769 mask!2687))))))

(declare-fun b!1495577 () Bool)

(declare-fun e!837730 () Bool)

(declare-fun e!837736 () Bool)

(assert (=> b!1495577 (= e!837730 e!837736)))

(declare-fun res!1017394 () Bool)

(assert (=> b!1495577 (=> res!1017394 e!837736)))

(declare-fun a!2862 () array!99750)

(assert (=> b!1495577 (= res!1017394 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651768 #b00000000000000000000000000000000) (bvsge lt!651768 (size!48687 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495577 (= lt!651768 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1495578 () Bool)

(declare-fun e!837729 () Bool)

(declare-fun e!837732 () Bool)

(assert (=> b!1495578 (= e!837729 e!837732)))

(declare-fun res!1017396 () Bool)

(assert (=> b!1495578 (=> (not res!1017396) (not e!837732))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1495578 (= res!1017396 (= (select (store (arr!48136 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495578 (= lt!651769 (array!99751 (store (arr!48136 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48687 a!2862)))))

(declare-fun b!1495579 () Bool)

(declare-fun res!1017395 () Bool)

(assert (=> b!1495579 (=> (not res!1017395) (not e!837729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1495579 (= res!1017395 (validKeyInArray!0 (select (arr!48136 a!2862) i!1006)))))

(declare-fun b!1495580 () Bool)

(declare-fun res!1017401 () Bool)

(assert (=> b!1495580 (=> res!1017401 e!837736)))

(declare-fun lt!651765 () SeekEntryResult!12399)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1495580 (= res!1017401 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651765)))))

(declare-fun b!1495581 () Bool)

(declare-fun res!1017402 () Bool)

(assert (=> b!1495581 (=> (not res!1017402) (not e!837729))))

(assert (=> b!1495581 (= res!1017402 (and (= (size!48687 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48687 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48687 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1495582 () Bool)

(declare-fun res!1017390 () Bool)

(declare-fun e!837735 () Bool)

(assert (=> b!1495582 (=> (not res!1017390) (not e!837735))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99750 (_ BitVec 32)) SeekEntryResult!12399)

(assert (=> b!1495582 (= res!1017390 (= (seekEntryOrOpen!0 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) (Found!12399 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1495583 () Bool)

(assert (=> b!1495583 (= e!837735 (or (= (select (arr!48136 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48136 a!2862) intermediateBeforeIndex!19) (select (arr!48136 a!2862) j!93))))))

(declare-fun b!1495584 () Bool)

(declare-fun res!1017384 () Bool)

(assert (=> b!1495584 (=> (not res!1017384) (not e!837729))))

(declare-datatypes ((List!34817 0))(
  ( (Nil!34814) (Cons!34813 (h!36208 (_ BitVec 64)) (t!49518 List!34817)) )
))
(declare-fun arrayNoDuplicates!0 (array!99750 (_ BitVec 32) List!34817) Bool)

(assert (=> b!1495584 (= res!1017384 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34814))))

(declare-fun b!1495585 () Bool)

(declare-fun e!837733 () Bool)

(assert (=> b!1495585 (= e!837732 e!837733)))

(declare-fun res!1017387 () Bool)

(assert (=> b!1495585 (=> (not res!1017387) (not e!837733))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495585 (= res!1017387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651765))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1495585 (= lt!651765 (Intermediate!12399 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1495586 () Bool)

(declare-fun res!1017391 () Bool)

(assert (=> b!1495586 (=> (not res!1017391) (not e!837729))))

(assert (=> b!1495586 (= res!1017391 (validKeyInArray!0 (select (arr!48136 a!2862) j!93)))))

(declare-fun b!1495587 () Bool)

(declare-fun e!837737 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99750 (_ BitVec 32)) SeekEntryResult!12399)

(assert (=> b!1495587 (= e!837737 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687) (seekEntryOrOpen!0 lt!651766 lt!651769 mask!2687)))))

(declare-fun res!1017385 () Bool)

(assert (=> start!127312 (=> (not res!1017385) (not e!837729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127312 (= res!1017385 (validMask!0 mask!2687))))

(assert (=> start!127312 e!837729))

(assert (=> start!127312 true))

(declare-fun array_inv!37081 (array!99750) Bool)

(assert (=> start!127312 (array_inv!37081 a!2862)))

(declare-fun b!1495575 () Bool)

(declare-fun res!1017400 () Bool)

(assert (=> b!1495575 (=> res!1017400 e!837736)))

(assert (=> b!1495575 (= res!1017400 e!837728)))

(declare-fun c!138631 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1495575 (= c!138631 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1495588 () Bool)

(assert (=> b!1495588 (= e!837736 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1495589 () Bool)

(assert (=> b!1495589 (= e!837737 (= lt!651764 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651766 lt!651769 mask!2687)))))

(declare-fun b!1495590 () Bool)

(assert (=> b!1495590 (= e!837728 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687) (seekEntryOrOpen!0 lt!651766 lt!651769 mask!2687))))))

(declare-fun b!1495591 () Bool)

(declare-fun res!1017386 () Bool)

(declare-fun e!837731 () Bool)

(assert (=> b!1495591 (=> (not res!1017386) (not e!837731))))

(assert (=> b!1495591 (= res!1017386 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1495592 () Bool)

(declare-fun res!1017393 () Bool)

(assert (=> b!1495592 (=> (not res!1017393) (not e!837733))))

(assert (=> b!1495592 (= res!1017393 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651765))))

(declare-fun b!1495593 () Bool)

(declare-fun res!1017389 () Bool)

(assert (=> b!1495593 (=> (not res!1017389) (not e!837729))))

(assert (=> b!1495593 (= res!1017389 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48687 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48687 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48687 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1495594 () Bool)

(assert (=> b!1495594 (= e!837731 (not e!837730))))

(declare-fun res!1017392 () Bool)

(assert (=> b!1495594 (=> res!1017392 e!837730)))

(assert (=> b!1495594 (= res!1017392 (or (and (= (select (arr!48136 a!2862) index!646) (select (store (arr!48136 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48136 a!2862) index!646) (select (arr!48136 a!2862) j!93))) (= (select (arr!48136 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1495594 e!837735))

(declare-fun res!1017397 () Bool)

(assert (=> b!1495594 (=> (not res!1017397) (not e!837735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99750 (_ BitVec 32)) Bool)

(assert (=> b!1495594 (= res!1017397 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50086 0))(
  ( (Unit!50087) )
))
(declare-fun lt!651767 () Unit!50086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50086)

(assert (=> b!1495594 (= lt!651767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1495595 () Bool)

(declare-fun res!1017399 () Bool)

(assert (=> b!1495595 (=> (not res!1017399) (not e!837729))))

(assert (=> b!1495595 (= res!1017399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1495596 () Bool)

(assert (=> b!1495596 (= e!837733 e!837731)))

(declare-fun res!1017388 () Bool)

(assert (=> b!1495596 (=> (not res!1017388) (not e!837731))))

(assert (=> b!1495596 (= res!1017388 (= lt!651764 (Intermediate!12399 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1495596 (= lt!651764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651766 mask!2687) lt!651766 lt!651769 mask!2687))))

(assert (=> b!1495596 (= lt!651766 (select (store (arr!48136 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1495597 () Bool)

(declare-fun res!1017398 () Bool)

(assert (=> b!1495597 (=> (not res!1017398) (not e!837731))))

(assert (=> b!1495597 (= res!1017398 e!837737)))

(declare-fun c!138632 () Bool)

(assert (=> b!1495597 (= c!138632 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!127312 res!1017385) b!1495581))

(assert (= (and b!1495581 res!1017402) b!1495579))

(assert (= (and b!1495579 res!1017395) b!1495586))

(assert (= (and b!1495586 res!1017391) b!1495595))

(assert (= (and b!1495595 res!1017399) b!1495584))

(assert (= (and b!1495584 res!1017384) b!1495593))

(assert (= (and b!1495593 res!1017389) b!1495578))

(assert (= (and b!1495578 res!1017396) b!1495585))

(assert (= (and b!1495585 res!1017387) b!1495592))

(assert (= (and b!1495592 res!1017393) b!1495596))

(assert (= (and b!1495596 res!1017388) b!1495597))

(assert (= (and b!1495597 c!138632) b!1495589))

(assert (= (and b!1495597 (not c!138632)) b!1495587))

(assert (= (and b!1495597 res!1017398) b!1495591))

(assert (= (and b!1495591 res!1017386) b!1495594))

(assert (= (and b!1495594 res!1017397) b!1495582))

(assert (= (and b!1495582 res!1017390) b!1495583))

(assert (= (and b!1495594 (not res!1017392)) b!1495577))

(assert (= (and b!1495577 (not res!1017394)) b!1495580))

(assert (= (and b!1495580 (not res!1017401)) b!1495575))

(assert (= (and b!1495575 c!138631) b!1495576))

(assert (= (and b!1495575 (not c!138631)) b!1495590))

(assert (= (and b!1495575 (not res!1017400)) b!1495588))

(declare-fun m!1379025 () Bool)

(assert (=> b!1495582 m!1379025))

(assert (=> b!1495582 m!1379025))

(declare-fun m!1379027 () Bool)

(assert (=> b!1495582 m!1379027))

(declare-fun m!1379029 () Bool)

(assert (=> b!1495587 m!1379029))

(declare-fun m!1379031 () Bool)

(assert (=> b!1495587 m!1379031))

(declare-fun m!1379033 () Bool)

(assert (=> b!1495579 m!1379033))

(assert (=> b!1495579 m!1379033))

(declare-fun m!1379035 () Bool)

(assert (=> b!1495579 m!1379035))

(declare-fun m!1379037 () Bool)

(assert (=> b!1495590 m!1379037))

(assert (=> b!1495590 m!1379031))

(declare-fun m!1379039 () Bool)

(assert (=> b!1495594 m!1379039))

(declare-fun m!1379041 () Bool)

(assert (=> b!1495594 m!1379041))

(declare-fun m!1379043 () Bool)

(assert (=> b!1495594 m!1379043))

(declare-fun m!1379045 () Bool)

(assert (=> b!1495594 m!1379045))

(declare-fun m!1379047 () Bool)

(assert (=> b!1495594 m!1379047))

(assert (=> b!1495594 m!1379025))

(declare-fun m!1379049 () Bool)

(assert (=> b!1495589 m!1379049))

(assert (=> b!1495586 m!1379025))

(assert (=> b!1495586 m!1379025))

(declare-fun m!1379051 () Bool)

(assert (=> b!1495586 m!1379051))

(assert (=> b!1495580 m!1379025))

(assert (=> b!1495580 m!1379025))

(declare-fun m!1379053 () Bool)

(assert (=> b!1495580 m!1379053))

(declare-fun m!1379055 () Bool)

(assert (=> b!1495577 m!1379055))

(assert (=> b!1495592 m!1379025))

(assert (=> b!1495592 m!1379025))

(declare-fun m!1379057 () Bool)

(assert (=> b!1495592 m!1379057))

(assert (=> b!1495585 m!1379025))

(assert (=> b!1495585 m!1379025))

(declare-fun m!1379059 () Bool)

(assert (=> b!1495585 m!1379059))

(assert (=> b!1495585 m!1379059))

(assert (=> b!1495585 m!1379025))

(declare-fun m!1379061 () Bool)

(assert (=> b!1495585 m!1379061))

(declare-fun m!1379063 () Bool)

(assert (=> b!1495595 m!1379063))

(declare-fun m!1379065 () Bool)

(assert (=> b!1495583 m!1379065))

(assert (=> b!1495583 m!1379025))

(assert (=> b!1495578 m!1379041))

(declare-fun m!1379067 () Bool)

(assert (=> b!1495578 m!1379067))

(declare-fun m!1379069 () Bool)

(assert (=> b!1495576 m!1379069))

(declare-fun m!1379071 () Bool)

(assert (=> b!1495584 m!1379071))

(declare-fun m!1379073 () Bool)

(assert (=> start!127312 m!1379073))

(declare-fun m!1379075 () Bool)

(assert (=> start!127312 m!1379075))

(declare-fun m!1379077 () Bool)

(assert (=> b!1495596 m!1379077))

(assert (=> b!1495596 m!1379077))

(declare-fun m!1379079 () Bool)

(assert (=> b!1495596 m!1379079))

(assert (=> b!1495596 m!1379041))

(declare-fun m!1379081 () Bool)

(assert (=> b!1495596 m!1379081))

(push 1)

(assert (not b!1495592))

(assert (not b!1495585))

(assert (not b!1495589))

(assert (not b!1495594))

(assert (not b!1495595))

(assert (not b!1495596))

(assert (not b!1495576))

(assert (not b!1495587))

(assert (not b!1495579))

(assert (not b!1495577))

(assert (not b!1495584))

(assert (not b!1495590))

(assert (not b!1495582))

(assert (not b!1495586))

(assert (not start!127312))

(assert (not b!1495580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1495948 () Bool)

(declare-fun e!837921 () SeekEntryResult!12399)

(declare-fun e!837923 () SeekEntryResult!12399)

(assert (=> b!1495948 (= e!837921 e!837923)))

(declare-fun c!138722 () Bool)

(declare-fun lt!651898 () (_ BitVec 64))

(assert (=> b!1495948 (= c!138722 (= lt!651898 lt!651766))))

(declare-fun b!1495949 () Bool)

(assert (=> b!1495949 (= e!837921 Undefined!12399)))

(declare-fun b!1495950 () Bool)

(declare-fun e!837922 () SeekEntryResult!12399)

(assert (=> b!1495950 (= e!837922 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651768 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687))))

(declare-fun b!1495951 () Bool)

(assert (=> b!1495951 (= e!837922 (MissingVacant!12399 intermediateAfterIndex!19))))

(declare-fun b!1495952 () Bool)

(declare-fun c!138723 () Bool)

(assert (=> b!1495952 (= c!138723 (= lt!651898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495952 (= e!837923 e!837922)))

(declare-fun d!157293 () Bool)

(declare-fun lt!651899 () SeekEntryResult!12399)

(assert (=> d!157293 (and (or (is-Undefined!12399 lt!651899) (not (is-Found!12399 lt!651899)) (and (bvsge (index!51988 lt!651899) #b00000000000000000000000000000000) (bvslt (index!51988 lt!651899) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651899) (is-Found!12399 lt!651899) (not (is-MissingVacant!12399 lt!651899)) (not (= (index!51990 lt!651899) intermediateAfterIndex!19)) (and (bvsge (index!51990 lt!651899) #b00000000000000000000000000000000) (bvslt (index!51990 lt!651899) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651899) (ite (is-Found!12399 lt!651899) (= (select (arr!48136 lt!651769) (index!51988 lt!651899)) lt!651766) (and (is-MissingVacant!12399 lt!651899) (= (index!51990 lt!651899) intermediateAfterIndex!19) (= (select (arr!48136 lt!651769) (index!51990 lt!651899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157293 (= lt!651899 e!837921)))

(declare-fun c!138721 () Bool)

(assert (=> d!157293 (= c!138721 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157293 (= lt!651898 (select (arr!48136 lt!651769) lt!651768))))

(assert (=> d!157293 (validMask!0 mask!2687)))

(assert (=> d!157293 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687) lt!651899)))

(declare-fun b!1495947 () Bool)

(assert (=> b!1495947 (= e!837923 (Found!12399 lt!651768))))

(assert (= (and d!157293 c!138721) b!1495949))

(assert (= (and d!157293 (not c!138721)) b!1495948))

(assert (= (and b!1495948 c!138722) b!1495947))

(assert (= (and b!1495948 (not c!138722)) b!1495952))

(assert (= (and b!1495952 c!138723) b!1495951))

(assert (= (and b!1495952 (not c!138723)) b!1495950))

(declare-fun m!1379317 () Bool)

(assert (=> b!1495950 m!1379317))

(assert (=> b!1495950 m!1379317))

(declare-fun m!1379319 () Bool)

(assert (=> b!1495950 m!1379319))

(declare-fun m!1379321 () Bool)

(assert (=> d!157293 m!1379321))

(declare-fun m!1379323 () Bool)

(assert (=> d!157293 m!1379323))

(declare-fun m!1379325 () Bool)

(assert (=> d!157293 m!1379325))

(assert (=> d!157293 m!1379073))

(assert (=> b!1495590 d!157293))

(declare-fun b!1495995 () Bool)

(declare-fun e!837947 () SeekEntryResult!12399)

(declare-fun e!837945 () SeekEntryResult!12399)

(assert (=> b!1495995 (= e!837947 e!837945)))

(declare-fun lt!651921 () (_ BitVec 64))

(declare-fun lt!651919 () SeekEntryResult!12399)

(assert (=> b!1495995 (= lt!651921 (select (arr!48136 lt!651769) (index!51989 lt!651919)))))

(declare-fun c!138747 () Bool)

(assert (=> b!1495995 (= c!138747 (= lt!651921 lt!651766))))

(declare-fun b!1495996 () Bool)

(declare-fun c!138745 () Bool)

(assert (=> b!1495996 (= c!138745 (= lt!651921 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837946 () SeekEntryResult!12399)

(assert (=> b!1495996 (= e!837945 e!837946)))

(declare-fun b!1495997 () Bool)

(assert (=> b!1495997 (= e!837946 (MissingZero!12399 (index!51989 lt!651919)))))

(declare-fun b!1495998 () Bool)

(assert (=> b!1495998 (= e!837945 (Found!12399 (index!51989 lt!651919)))))

(declare-fun b!1495999 () Bool)

(assert (=> b!1495999 (= e!837946 (seekKeyOrZeroReturnVacant!0 (x!133610 lt!651919) (index!51989 lt!651919) (index!51989 lt!651919) lt!651766 lt!651769 mask!2687))))

(declare-fun d!157299 () Bool)

(declare-fun lt!651920 () SeekEntryResult!12399)

(assert (=> d!157299 (and (or (is-Undefined!12399 lt!651920) (not (is-Found!12399 lt!651920)) (and (bvsge (index!51988 lt!651920) #b00000000000000000000000000000000) (bvslt (index!51988 lt!651920) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651920) (is-Found!12399 lt!651920) (not (is-MissingZero!12399 lt!651920)) (and (bvsge (index!51987 lt!651920) #b00000000000000000000000000000000) (bvslt (index!51987 lt!651920) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651920) (is-Found!12399 lt!651920) (is-MissingZero!12399 lt!651920) (not (is-MissingVacant!12399 lt!651920)) (and (bvsge (index!51990 lt!651920) #b00000000000000000000000000000000) (bvslt (index!51990 lt!651920) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651920) (ite (is-Found!12399 lt!651920) (= (select (arr!48136 lt!651769) (index!51988 lt!651920)) lt!651766) (ite (is-MissingZero!12399 lt!651920) (= (select (arr!48136 lt!651769) (index!51987 lt!651920)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12399 lt!651920) (= (select (arr!48136 lt!651769) (index!51990 lt!651920)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157299 (= lt!651920 e!837947)))

(declare-fun c!138746 () Bool)

(assert (=> d!157299 (= c!138746 (and (is-Intermediate!12399 lt!651919) (undefined!13211 lt!651919)))))

(assert (=> d!157299 (= lt!651919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651766 mask!2687) lt!651766 lt!651769 mask!2687))))

(assert (=> d!157299 (validMask!0 mask!2687)))

(assert (=> d!157299 (= (seekEntryOrOpen!0 lt!651766 lt!651769 mask!2687) lt!651920)))

(declare-fun b!1496000 () Bool)

(assert (=> b!1496000 (= e!837947 Undefined!12399)))

(assert (= (and d!157299 c!138746) b!1496000))

(assert (= (and d!157299 (not c!138746)) b!1495995))

(assert (= (and b!1495995 c!138747) b!1495998))

(assert (= (and b!1495995 (not c!138747)) b!1495996))

(assert (= (and b!1495996 c!138745) b!1495997))

(assert (= (and b!1495996 (not c!138745)) b!1495999))

(declare-fun m!1379337 () Bool)

(assert (=> b!1495995 m!1379337))

(declare-fun m!1379339 () Bool)

(assert (=> b!1495999 m!1379339))

(assert (=> d!157299 m!1379077))

(declare-fun m!1379341 () Bool)

(assert (=> d!157299 m!1379341))

(declare-fun m!1379343 () Bool)

(assert (=> d!157299 m!1379343))

(assert (=> d!157299 m!1379073))

(assert (=> d!157299 m!1379077))

(assert (=> d!157299 m!1379079))

(declare-fun m!1379345 () Bool)

(assert (=> d!157299 m!1379345))

(assert (=> b!1495590 d!157299))

(declare-fun d!157305 () Bool)

(assert (=> d!157305 (= (validKeyInArray!0 (select (arr!48136 a!2862) i!1006)) (and (not (= (select (arr!48136 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48136 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495579 d!157305))

(declare-fun b!1496092 () Bool)

(declare-fun e!838005 () Bool)

(declare-fun lt!651949 () SeekEntryResult!12399)

(assert (=> b!1496092 (= e!838005 (bvsge (x!133610 lt!651949) #b01111111111111111111111111111110))))

(declare-fun d!157307 () Bool)

(assert (=> d!157307 e!838005))

(declare-fun c!138780 () Bool)

(assert (=> d!157307 (= c!138780 (and (is-Intermediate!12399 lt!651949) (undefined!13211 lt!651949)))))

(declare-fun e!838004 () SeekEntryResult!12399)

(assert (=> d!157307 (= lt!651949 e!838004)))

(declare-fun c!138779 () Bool)

(assert (=> d!157307 (= c!138779 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651950 () (_ BitVec 64))

(assert (=> d!157307 (= lt!651950 (select (arr!48136 a!2862) lt!651768))))

(assert (=> d!157307 (validMask!0 mask!2687)))

(assert (=> d!157307 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651949)))

(declare-fun b!1496093 () Bool)

(assert (=> b!1496093 (and (bvsge (index!51989 lt!651949) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651949) (size!48687 a!2862)))))

(declare-fun e!838003 () Bool)

(assert (=> b!1496093 (= e!838003 (= (select (arr!48136 a!2862) (index!51989 lt!651949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496094 () Bool)

(declare-fun e!838002 () SeekEntryResult!12399)

(assert (=> b!1496094 (= e!838002 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651768 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1496095 () Bool)

(declare-fun e!838006 () Bool)

(assert (=> b!1496095 (= e!838005 e!838006)))

(declare-fun res!1017609 () Bool)

(assert (=> b!1496095 (= res!1017609 (and (is-Intermediate!12399 lt!651949) (not (undefined!13211 lt!651949)) (bvslt (x!133610 lt!651949) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651949) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651949) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1496095 (=> (not res!1017609) (not e!838006))))

(declare-fun b!1496096 () Bool)

(assert (=> b!1496096 (= e!838002 (Intermediate!12399 false lt!651768 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496097 () Bool)

(assert (=> b!1496097 (= e!838004 (Intermediate!12399 true lt!651768 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496098 () Bool)

(assert (=> b!1496098 (= e!838004 e!838002)))

(declare-fun c!138781 () Bool)

(assert (=> b!1496098 (= c!138781 (or (= lt!651950 (select (arr!48136 a!2862) j!93)) (= (bvadd lt!651950 lt!651950) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496099 () Bool)

(assert (=> b!1496099 (and (bvsge (index!51989 lt!651949) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651949) (size!48687 a!2862)))))

(declare-fun res!1017608 () Bool)

(assert (=> b!1496099 (= res!1017608 (= (select (arr!48136 a!2862) (index!51989 lt!651949)) (select (arr!48136 a!2862) j!93)))))

(assert (=> b!1496099 (=> res!1017608 e!838003)))

(assert (=> b!1496099 (= e!838006 e!838003)))

(declare-fun b!1496100 () Bool)

(assert (=> b!1496100 (and (bvsge (index!51989 lt!651949) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651949) (size!48687 a!2862)))))

(declare-fun res!1017607 () Bool)

(assert (=> b!1496100 (= res!1017607 (= (select (arr!48136 a!2862) (index!51989 lt!651949)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496100 (=> res!1017607 e!838003)))

(assert (= (and d!157307 c!138779) b!1496097))

(assert (= (and d!157307 (not c!138779)) b!1496098))

(assert (= (and b!1496098 c!138781) b!1496096))

(assert (= (and b!1496098 (not c!138781)) b!1496094))

(assert (= (and d!157307 c!138780) b!1496092))

(assert (= (and d!157307 (not c!138780)) b!1496095))

(assert (= (and b!1496095 res!1017609) b!1496099))

(assert (= (and b!1496099 (not res!1017608)) b!1496100))

(assert (= (and b!1496100 (not res!1017607)) b!1496093))

(declare-fun m!1379415 () Bool)

(assert (=> b!1496093 m!1379415))

(declare-fun m!1379417 () Bool)

(assert (=> d!157307 m!1379417))

(assert (=> d!157307 m!1379073))

(assert (=> b!1496099 m!1379415))

(assert (=> b!1496094 m!1379317))

(assert (=> b!1496094 m!1379317))

(assert (=> b!1496094 m!1379025))

(declare-fun m!1379419 () Bool)

(assert (=> b!1496094 m!1379419))

(assert (=> b!1496100 m!1379415))

(assert (=> b!1495580 d!157307))

(declare-fun b!1496101 () Bool)

(declare-fun e!838009 () SeekEntryResult!12399)

(declare-fun e!838007 () SeekEntryResult!12399)

(assert (=> b!1496101 (= e!838009 e!838007)))

(declare-fun lt!651953 () (_ BitVec 64))

(declare-fun lt!651951 () SeekEntryResult!12399)

(assert (=> b!1496101 (= lt!651953 (select (arr!48136 a!2862) (index!51989 lt!651951)))))

(declare-fun c!138784 () Bool)

(assert (=> b!1496101 (= c!138784 (= lt!651953 (select (arr!48136 a!2862) j!93)))))

(declare-fun b!1496102 () Bool)

(declare-fun c!138782 () Bool)

(assert (=> b!1496102 (= c!138782 (= lt!651953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838008 () SeekEntryResult!12399)

(assert (=> b!1496102 (= e!838007 e!838008)))

(declare-fun b!1496103 () Bool)

(assert (=> b!1496103 (= e!838008 (MissingZero!12399 (index!51989 lt!651951)))))

(declare-fun b!1496104 () Bool)

(assert (=> b!1496104 (= e!838007 (Found!12399 (index!51989 lt!651951)))))

(declare-fun b!1496105 () Bool)

(assert (=> b!1496105 (= e!838008 (seekKeyOrZeroReturnVacant!0 (x!133610 lt!651951) (index!51989 lt!651951) (index!51989 lt!651951) (select (arr!48136 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!157331 () Bool)

(declare-fun lt!651952 () SeekEntryResult!12399)

(assert (=> d!157331 (and (or (is-Undefined!12399 lt!651952) (not (is-Found!12399 lt!651952)) (and (bvsge (index!51988 lt!651952) #b00000000000000000000000000000000) (bvslt (index!51988 lt!651952) (size!48687 a!2862)))) (or (is-Undefined!12399 lt!651952) (is-Found!12399 lt!651952) (not (is-MissingZero!12399 lt!651952)) (and (bvsge (index!51987 lt!651952) #b00000000000000000000000000000000) (bvslt (index!51987 lt!651952) (size!48687 a!2862)))) (or (is-Undefined!12399 lt!651952) (is-Found!12399 lt!651952) (is-MissingZero!12399 lt!651952) (not (is-MissingVacant!12399 lt!651952)) (and (bvsge (index!51990 lt!651952) #b00000000000000000000000000000000) (bvslt (index!51990 lt!651952) (size!48687 a!2862)))) (or (is-Undefined!12399 lt!651952) (ite (is-Found!12399 lt!651952) (= (select (arr!48136 a!2862) (index!51988 lt!651952)) (select (arr!48136 a!2862) j!93)) (ite (is-MissingZero!12399 lt!651952) (= (select (arr!48136 a!2862) (index!51987 lt!651952)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12399 lt!651952) (= (select (arr!48136 a!2862) (index!51990 lt!651952)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157331 (= lt!651952 e!838009)))

(declare-fun c!138783 () Bool)

(assert (=> d!157331 (= c!138783 (and (is-Intermediate!12399 lt!651951) (undefined!13211 lt!651951)))))

(assert (=> d!157331 (= lt!651951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157331 (validMask!0 mask!2687)))

(assert (=> d!157331 (= (seekEntryOrOpen!0 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651952)))

(declare-fun b!1496106 () Bool)

(assert (=> b!1496106 (= e!838009 Undefined!12399)))

(assert (= (and d!157331 c!138783) b!1496106))

(assert (= (and d!157331 (not c!138783)) b!1496101))

(assert (= (and b!1496101 c!138784) b!1496104))

(assert (= (and b!1496101 (not c!138784)) b!1496102))

(assert (= (and b!1496102 c!138782) b!1496103))

(assert (= (and b!1496102 (not c!138782)) b!1496105))

(declare-fun m!1379421 () Bool)

(assert (=> b!1496101 m!1379421))

(assert (=> b!1496105 m!1379025))

(declare-fun m!1379423 () Bool)

(assert (=> b!1496105 m!1379423))

(assert (=> d!157331 m!1379025))

(assert (=> d!157331 m!1379059))

(declare-fun m!1379425 () Bool)

(assert (=> d!157331 m!1379425))

(declare-fun m!1379427 () Bool)

(assert (=> d!157331 m!1379427))

(assert (=> d!157331 m!1379073))

(assert (=> d!157331 m!1379059))

(assert (=> d!157331 m!1379025))

(assert (=> d!157331 m!1379061))

(declare-fun m!1379429 () Bool)

(assert (=> d!157331 m!1379429))

(assert (=> b!1495582 d!157331))

(declare-fun b!1496107 () Bool)

(declare-fun e!838013 () Bool)

(declare-fun lt!651954 () SeekEntryResult!12399)

(assert (=> b!1496107 (= e!838013 (bvsge (x!133610 lt!651954) #b01111111111111111111111111111110))))

(declare-fun d!157333 () Bool)

(assert (=> d!157333 e!838013))

(declare-fun c!138786 () Bool)

(assert (=> d!157333 (= c!138786 (and (is-Intermediate!12399 lt!651954) (undefined!13211 lt!651954)))))

(declare-fun e!838012 () SeekEntryResult!12399)

(assert (=> d!157333 (= lt!651954 e!838012)))

(declare-fun c!138785 () Bool)

(assert (=> d!157333 (= c!138785 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651955 () (_ BitVec 64))

(assert (=> d!157333 (= lt!651955 (select (arr!48136 a!2862) index!646))))

(assert (=> d!157333 (validMask!0 mask!2687)))

(assert (=> d!157333 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651954)))

(declare-fun b!1496108 () Bool)

(assert (=> b!1496108 (and (bvsge (index!51989 lt!651954) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651954) (size!48687 a!2862)))))

(declare-fun e!838011 () Bool)

(assert (=> b!1496108 (= e!838011 (= (select (arr!48136 a!2862) (index!51989 lt!651954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838010 () SeekEntryResult!12399)

(declare-fun b!1496109 () Bool)

(assert (=> b!1496109 (= e!838010 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1496110 () Bool)

(declare-fun e!838014 () Bool)

(assert (=> b!1496110 (= e!838013 e!838014)))

(declare-fun res!1017612 () Bool)

(assert (=> b!1496110 (= res!1017612 (and (is-Intermediate!12399 lt!651954) (not (undefined!13211 lt!651954)) (bvslt (x!133610 lt!651954) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651954) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651954) x!665)))))

(assert (=> b!1496110 (=> (not res!1017612) (not e!838014))))

(declare-fun b!1496111 () Bool)

(assert (=> b!1496111 (= e!838010 (Intermediate!12399 false index!646 x!665))))

(declare-fun b!1496112 () Bool)

(assert (=> b!1496112 (= e!838012 (Intermediate!12399 true index!646 x!665))))

(declare-fun b!1496113 () Bool)

(assert (=> b!1496113 (= e!838012 e!838010)))

(declare-fun c!138787 () Bool)

(assert (=> b!1496113 (= c!138787 (or (= lt!651955 (select (arr!48136 a!2862) j!93)) (= (bvadd lt!651955 lt!651955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496114 () Bool)

(assert (=> b!1496114 (and (bvsge (index!51989 lt!651954) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651954) (size!48687 a!2862)))))

(declare-fun res!1017611 () Bool)

(assert (=> b!1496114 (= res!1017611 (= (select (arr!48136 a!2862) (index!51989 lt!651954)) (select (arr!48136 a!2862) j!93)))))

(assert (=> b!1496114 (=> res!1017611 e!838011)))

(assert (=> b!1496114 (= e!838014 e!838011)))

(declare-fun b!1496115 () Bool)

(assert (=> b!1496115 (and (bvsge (index!51989 lt!651954) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651954) (size!48687 a!2862)))))

(declare-fun res!1017610 () Bool)

(assert (=> b!1496115 (= res!1017610 (= (select (arr!48136 a!2862) (index!51989 lt!651954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496115 (=> res!1017610 e!838011)))

(assert (= (and d!157333 c!138785) b!1496112))

(assert (= (and d!157333 (not c!138785)) b!1496113))

(assert (= (and b!1496113 c!138787) b!1496111))

(assert (= (and b!1496113 (not c!138787)) b!1496109))

(assert (= (and d!157333 c!138786) b!1496107))

(assert (= (and d!157333 (not c!138786)) b!1496110))

(assert (= (and b!1496110 res!1017612) b!1496114))

(assert (= (and b!1496114 (not res!1017611)) b!1496115))

(assert (= (and b!1496115 (not res!1017610)) b!1496108))

(declare-fun m!1379431 () Bool)

(assert (=> b!1496108 m!1379431))

(assert (=> d!157333 m!1379045))

(assert (=> d!157333 m!1379073))

(assert (=> b!1496114 m!1379431))

(assert (=> b!1496109 m!1379055))

(assert (=> b!1496109 m!1379055))

(assert (=> b!1496109 m!1379025))

(declare-fun m!1379433 () Bool)

(assert (=> b!1496109 m!1379433))

(assert (=> b!1496115 m!1379431))

(assert (=> b!1495592 d!157333))

(declare-fun bm!68033 () Bool)

(declare-fun call!68036 () Bool)

(assert (=> bm!68033 (= call!68036 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1496124 () Bool)

(declare-fun e!838022 () Bool)

(assert (=> b!1496124 (= e!838022 call!68036)))

(declare-fun b!1496125 () Bool)

(declare-fun e!838023 () Bool)

(assert (=> b!1496125 (= e!838023 e!838022)))

(declare-fun c!138790 () Bool)

(assert (=> b!1496125 (= c!138790 (validKeyInArray!0 (select (arr!48136 a!2862) j!93)))))

(declare-fun b!1496126 () Bool)

(declare-fun e!838021 () Bool)

(assert (=> b!1496126 (= e!838022 e!838021)))

(declare-fun lt!651964 () (_ BitVec 64))

(assert (=> b!1496126 (= lt!651964 (select (arr!48136 a!2862) j!93))))

(declare-fun lt!651963 () Unit!50086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99750 (_ BitVec 64) (_ BitVec 32)) Unit!50086)

(assert (=> b!1496126 (= lt!651963 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651964 j!93))))

(declare-fun arrayContainsKey!0 (array!99750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1496126 (arrayContainsKey!0 a!2862 lt!651964 #b00000000000000000000000000000000)))

(declare-fun lt!651962 () Unit!50086)

(assert (=> b!1496126 (= lt!651962 lt!651963)))

(declare-fun res!1017618 () Bool)

(assert (=> b!1496126 (= res!1017618 (= (seekEntryOrOpen!0 (select (arr!48136 a!2862) j!93) a!2862 mask!2687) (Found!12399 j!93)))))

(assert (=> b!1496126 (=> (not res!1017618) (not e!838021))))

(declare-fun d!157335 () Bool)

(declare-fun res!1017617 () Bool)

(assert (=> d!157335 (=> res!1017617 e!838023)))

(assert (=> d!157335 (= res!1017617 (bvsge j!93 (size!48687 a!2862)))))

(assert (=> d!157335 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!838023)))

(declare-fun b!1496127 () Bool)

(assert (=> b!1496127 (= e!838021 call!68036)))

(assert (= (and d!157335 (not res!1017617)) b!1496125))

(assert (= (and b!1496125 c!138790) b!1496126))

(assert (= (and b!1496125 (not c!138790)) b!1496124))

(assert (= (and b!1496126 res!1017618) b!1496127))

(assert (= (or b!1496127 b!1496124) bm!68033))

(declare-fun m!1379435 () Bool)

(assert (=> bm!68033 m!1379435))

(assert (=> b!1496125 m!1379025))

(assert (=> b!1496125 m!1379025))

(assert (=> b!1496125 m!1379051))

(assert (=> b!1496126 m!1379025))

(declare-fun m!1379437 () Bool)

(assert (=> b!1496126 m!1379437))

(declare-fun m!1379439 () Bool)

(assert (=> b!1496126 m!1379439))

(assert (=> b!1496126 m!1379025))

(assert (=> b!1496126 m!1379027))

(assert (=> b!1495594 d!157335))

(declare-fun d!157337 () Bool)

(assert (=> d!157337 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651967 () Unit!50086)

(declare-fun choose!38 (array!99750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50086)

(assert (=> d!157337 (= lt!651967 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157337 (validMask!0 mask!2687)))

(assert (=> d!157337 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651967)))

(declare-fun bs!42918 () Bool)

(assert (= bs!42918 d!157337))

(assert (=> bs!42918 m!1379047))

(declare-fun m!1379441 () Bool)

(assert (=> bs!42918 m!1379441))

(assert (=> bs!42918 m!1379073))

(assert (=> b!1495594 d!157337))

(declare-fun b!1496128 () Bool)

(declare-fun e!838027 () Bool)

(declare-fun lt!651968 () SeekEntryResult!12399)

(assert (=> b!1496128 (= e!838027 (bvsge (x!133610 lt!651968) #b01111111111111111111111111111110))))

(declare-fun d!157339 () Bool)

(assert (=> d!157339 e!838027))

(declare-fun c!138792 () Bool)

(assert (=> d!157339 (= c!138792 (and (is-Intermediate!12399 lt!651968) (undefined!13211 lt!651968)))))

(declare-fun e!838026 () SeekEntryResult!12399)

(assert (=> d!157339 (= lt!651968 e!838026)))

(declare-fun c!138791 () Bool)

(assert (=> d!157339 (= c!138791 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651969 () (_ BitVec 64))

(assert (=> d!157339 (= lt!651969 (select (arr!48136 a!2862) (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687)))))

(assert (=> d!157339 (validMask!0 mask!2687)))

(assert (=> d!157339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687) lt!651968)))

(declare-fun b!1496129 () Bool)

(assert (=> b!1496129 (and (bvsge (index!51989 lt!651968) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651968) (size!48687 a!2862)))))

(declare-fun e!838025 () Bool)

(assert (=> b!1496129 (= e!838025 (= (select (arr!48136 a!2862) (index!51989 lt!651968)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496130 () Bool)

(declare-fun e!838024 () SeekEntryResult!12399)

(assert (=> b!1496130 (= e!838024 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48136 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1496131 () Bool)

(declare-fun e!838028 () Bool)

(assert (=> b!1496131 (= e!838027 e!838028)))

(declare-fun res!1017621 () Bool)

(assert (=> b!1496131 (= res!1017621 (and (is-Intermediate!12399 lt!651968) (not (undefined!13211 lt!651968)) (bvslt (x!133610 lt!651968) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651968) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651968) #b00000000000000000000000000000000)))))

(assert (=> b!1496131 (=> (not res!1017621) (not e!838028))))

(declare-fun b!1496132 () Bool)

(assert (=> b!1496132 (= e!838024 (Intermediate!12399 false (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496133 () Bool)

(assert (=> b!1496133 (= e!838026 (Intermediate!12399 true (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496134 () Bool)

(assert (=> b!1496134 (= e!838026 e!838024)))

(declare-fun c!138793 () Bool)

(assert (=> b!1496134 (= c!138793 (or (= lt!651969 (select (arr!48136 a!2862) j!93)) (= (bvadd lt!651969 lt!651969) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496135 () Bool)

(assert (=> b!1496135 (and (bvsge (index!51989 lt!651968) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651968) (size!48687 a!2862)))))

(declare-fun res!1017620 () Bool)

(assert (=> b!1496135 (= res!1017620 (= (select (arr!48136 a!2862) (index!51989 lt!651968)) (select (arr!48136 a!2862) j!93)))))

(assert (=> b!1496135 (=> res!1017620 e!838025)))

(assert (=> b!1496135 (= e!838028 e!838025)))

(declare-fun b!1496136 () Bool)

(assert (=> b!1496136 (and (bvsge (index!51989 lt!651968) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651968) (size!48687 a!2862)))))

(declare-fun res!1017619 () Bool)

(assert (=> b!1496136 (= res!1017619 (= (select (arr!48136 a!2862) (index!51989 lt!651968)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496136 (=> res!1017619 e!838025)))

(assert (= (and d!157339 c!138791) b!1496133))

(assert (= (and d!157339 (not c!138791)) b!1496134))

(assert (= (and b!1496134 c!138793) b!1496132))

(assert (= (and b!1496134 (not c!138793)) b!1496130))

(assert (= (and d!157339 c!138792) b!1496128))

(assert (= (and d!157339 (not c!138792)) b!1496131))

(assert (= (and b!1496131 res!1017621) b!1496135))

(assert (= (and b!1496135 (not res!1017620)) b!1496136))

(assert (= (and b!1496136 (not res!1017619)) b!1496129))

(declare-fun m!1379443 () Bool)

(assert (=> b!1496129 m!1379443))

(assert (=> d!157339 m!1379059))

(declare-fun m!1379445 () Bool)

(assert (=> d!157339 m!1379445))

(assert (=> d!157339 m!1379073))

(assert (=> b!1496135 m!1379443))

(assert (=> b!1496130 m!1379059))

(declare-fun m!1379447 () Bool)

(assert (=> b!1496130 m!1379447))

(assert (=> b!1496130 m!1379447))

(assert (=> b!1496130 m!1379025))

(declare-fun m!1379449 () Bool)

(assert (=> b!1496130 m!1379449))

(assert (=> b!1496136 m!1379443))

(assert (=> b!1495585 d!157339))

(declare-fun d!157341 () Bool)

(declare-fun lt!651975 () (_ BitVec 32))

(declare-fun lt!651974 () (_ BitVec 32))

(assert (=> d!157341 (= lt!651975 (bvmul (bvxor lt!651974 (bvlshr lt!651974 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157341 (= lt!651974 ((_ extract 31 0) (bvand (bvxor (select (arr!48136 a!2862) j!93) (bvlshr (select (arr!48136 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157341 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017622 (let ((h!36213 ((_ extract 31 0) (bvand (bvxor (select (arr!48136 a!2862) j!93) (bvlshr (select (arr!48136 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133623 (bvmul (bvxor h!36213 (bvlshr h!36213 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133623 (bvlshr x!133623 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017622 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017622 #b00000000000000000000000000000000))))))

(assert (=> d!157341 (= (toIndex!0 (select (arr!48136 a!2862) j!93) mask!2687) (bvand (bvxor lt!651975 (bvlshr lt!651975 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495585 d!157341))

(declare-fun b!1496147 () Bool)

(declare-fun e!838040 () Bool)

(declare-fun e!838037 () Bool)

(assert (=> b!1496147 (= e!838040 e!838037)))

(declare-fun res!1017629 () Bool)

(assert (=> b!1496147 (=> (not res!1017629) (not e!838037))))

(declare-fun e!838039 () Bool)

(assert (=> b!1496147 (= res!1017629 (not e!838039))))

(declare-fun res!1017630 () Bool)

(assert (=> b!1496147 (=> (not res!1017630) (not e!838039))))

(assert (=> b!1496147 (= res!1017630 (validKeyInArray!0 (select (arr!48136 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!68036 () Bool)

(declare-fun call!68039 () Bool)

(declare-fun c!138796 () Bool)

(assert (=> bm!68036 (= call!68039 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138796 (Cons!34813 (select (arr!48136 a!2862) #b00000000000000000000000000000000) Nil!34814) Nil!34814)))))

(declare-fun b!1496148 () Bool)

(declare-fun e!838038 () Bool)

(assert (=> b!1496148 (= e!838038 call!68039)))

(declare-fun b!1496149 () Bool)

(assert (=> b!1496149 (= e!838038 call!68039)))

(declare-fun b!1496150 () Bool)

(declare-fun contains!9946 (List!34817 (_ BitVec 64)) Bool)

(assert (=> b!1496150 (= e!838039 (contains!9946 Nil!34814 (select (arr!48136 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157343 () Bool)

(declare-fun res!1017631 () Bool)

(assert (=> d!157343 (=> res!1017631 e!838040)))

(assert (=> d!157343 (= res!1017631 (bvsge #b00000000000000000000000000000000 (size!48687 a!2862)))))

(assert (=> d!157343 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34814) e!838040)))

(declare-fun b!1496151 () Bool)

(assert (=> b!1496151 (= e!838037 e!838038)))

(assert (=> b!1496151 (= c!138796 (validKeyInArray!0 (select (arr!48136 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!157343 (not res!1017631)) b!1496147))

(assert (= (and b!1496147 res!1017630) b!1496150))

(assert (= (and b!1496147 res!1017629) b!1496151))

(assert (= (and b!1496151 c!138796) b!1496148))

(assert (= (and b!1496151 (not c!138796)) b!1496149))

(assert (= (or b!1496148 b!1496149) bm!68036))

(declare-fun m!1379451 () Bool)

(assert (=> b!1496147 m!1379451))

(assert (=> b!1496147 m!1379451))

(declare-fun m!1379453 () Bool)

(assert (=> b!1496147 m!1379453))

(assert (=> bm!68036 m!1379451))

(declare-fun m!1379455 () Bool)

(assert (=> bm!68036 m!1379455))

(assert (=> b!1496150 m!1379451))

(assert (=> b!1496150 m!1379451))

(declare-fun m!1379457 () Bool)

(assert (=> b!1496150 m!1379457))

(assert (=> b!1496151 m!1379451))

(assert (=> b!1496151 m!1379451))

(assert (=> b!1496151 m!1379453))

(assert (=> b!1495584 d!157343))

(declare-fun bm!68037 () Bool)

(declare-fun call!68040 () Bool)

(assert (=> bm!68037 (= call!68040 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1496152 () Bool)

(declare-fun e!838042 () Bool)

(assert (=> b!1496152 (= e!838042 call!68040)))

(declare-fun b!1496153 () Bool)

(declare-fun e!838043 () Bool)

(assert (=> b!1496153 (= e!838043 e!838042)))

(declare-fun c!138797 () Bool)

(assert (=> b!1496153 (= c!138797 (validKeyInArray!0 (select (arr!48136 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1496154 () Bool)

(declare-fun e!838041 () Bool)

(assert (=> b!1496154 (= e!838042 e!838041)))

(declare-fun lt!651978 () (_ BitVec 64))

(assert (=> b!1496154 (= lt!651978 (select (arr!48136 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651977 () Unit!50086)

(assert (=> b!1496154 (= lt!651977 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651978 #b00000000000000000000000000000000))))

(assert (=> b!1496154 (arrayContainsKey!0 a!2862 lt!651978 #b00000000000000000000000000000000)))

(declare-fun lt!651976 () Unit!50086)

(assert (=> b!1496154 (= lt!651976 lt!651977)))

(declare-fun res!1017633 () Bool)

(assert (=> b!1496154 (= res!1017633 (= (seekEntryOrOpen!0 (select (arr!48136 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12399 #b00000000000000000000000000000000)))))

(assert (=> b!1496154 (=> (not res!1017633) (not e!838041))))

(declare-fun d!157345 () Bool)

(declare-fun res!1017632 () Bool)

(assert (=> d!157345 (=> res!1017632 e!838043)))

(assert (=> d!157345 (= res!1017632 (bvsge #b00000000000000000000000000000000 (size!48687 a!2862)))))

(assert (=> d!157345 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!838043)))

(declare-fun b!1496155 () Bool)

(assert (=> b!1496155 (= e!838041 call!68040)))

(assert (= (and d!157345 (not res!1017632)) b!1496153))

(assert (= (and b!1496153 c!138797) b!1496154))

(assert (= (and b!1496153 (not c!138797)) b!1496152))

(assert (= (and b!1496154 res!1017633) b!1496155))

(assert (= (or b!1496155 b!1496152) bm!68037))

(declare-fun m!1379459 () Bool)

(assert (=> bm!68037 m!1379459))

(assert (=> b!1496153 m!1379451))

(assert (=> b!1496153 m!1379451))

(assert (=> b!1496153 m!1379453))

(assert (=> b!1496154 m!1379451))

(declare-fun m!1379461 () Bool)

(assert (=> b!1496154 m!1379461))

(declare-fun m!1379463 () Bool)

(assert (=> b!1496154 m!1379463))

(assert (=> b!1496154 m!1379451))

(declare-fun m!1379465 () Bool)

(assert (=> b!1496154 m!1379465))

(assert (=> b!1495595 d!157345))

(declare-fun d!157347 () Bool)

(assert (=> d!157347 (= (validKeyInArray!0 (select (arr!48136 a!2862) j!93)) (and (not (= (select (arr!48136 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48136 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495586 d!157347))

(declare-fun b!1496156 () Bool)

(declare-fun e!838047 () Bool)

(declare-fun lt!651979 () SeekEntryResult!12399)

(assert (=> b!1496156 (= e!838047 (bvsge (x!133610 lt!651979) #b01111111111111111111111111111110))))

(declare-fun d!157349 () Bool)

(assert (=> d!157349 e!838047))

(declare-fun c!138799 () Bool)

(assert (=> d!157349 (= c!138799 (and (is-Intermediate!12399 lt!651979) (undefined!13211 lt!651979)))))

(declare-fun e!838046 () SeekEntryResult!12399)

(assert (=> d!157349 (= lt!651979 e!838046)))

(declare-fun c!138798 () Bool)

(assert (=> d!157349 (= c!138798 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651980 () (_ BitVec 64))

(assert (=> d!157349 (= lt!651980 (select (arr!48136 lt!651769) (toIndex!0 lt!651766 mask!2687)))))

(assert (=> d!157349 (validMask!0 mask!2687)))

(assert (=> d!157349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651766 mask!2687) lt!651766 lt!651769 mask!2687) lt!651979)))

(declare-fun b!1496157 () Bool)

(assert (=> b!1496157 (and (bvsge (index!51989 lt!651979) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651979) (size!48687 lt!651769)))))

(declare-fun e!838045 () Bool)

(assert (=> b!1496157 (= e!838045 (= (select (arr!48136 lt!651769) (index!51989 lt!651979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838044 () SeekEntryResult!12399)

(declare-fun b!1496158 () Bool)

(assert (=> b!1496158 (= e!838044 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651766 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651766 lt!651769 mask!2687))))

(declare-fun b!1496159 () Bool)

(declare-fun e!838048 () Bool)

(assert (=> b!1496159 (= e!838047 e!838048)))

(declare-fun res!1017636 () Bool)

(assert (=> b!1496159 (= res!1017636 (and (is-Intermediate!12399 lt!651979) (not (undefined!13211 lt!651979)) (bvslt (x!133610 lt!651979) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651979) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651979) #b00000000000000000000000000000000)))))

(assert (=> b!1496159 (=> (not res!1017636) (not e!838048))))

(declare-fun b!1496160 () Bool)

(assert (=> b!1496160 (= e!838044 (Intermediate!12399 false (toIndex!0 lt!651766 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496161 () Bool)

(assert (=> b!1496161 (= e!838046 (Intermediate!12399 true (toIndex!0 lt!651766 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1496162 () Bool)

(assert (=> b!1496162 (= e!838046 e!838044)))

(declare-fun c!138800 () Bool)

(assert (=> b!1496162 (= c!138800 (or (= lt!651980 lt!651766) (= (bvadd lt!651980 lt!651980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496163 () Bool)

(assert (=> b!1496163 (and (bvsge (index!51989 lt!651979) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651979) (size!48687 lt!651769)))))

(declare-fun res!1017635 () Bool)

(assert (=> b!1496163 (= res!1017635 (= (select (arr!48136 lt!651769) (index!51989 lt!651979)) lt!651766))))

(assert (=> b!1496163 (=> res!1017635 e!838045)))

(assert (=> b!1496163 (= e!838048 e!838045)))

(declare-fun b!1496164 () Bool)

(assert (=> b!1496164 (and (bvsge (index!51989 lt!651979) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651979) (size!48687 lt!651769)))))

(declare-fun res!1017634 () Bool)

(assert (=> b!1496164 (= res!1017634 (= (select (arr!48136 lt!651769) (index!51989 lt!651979)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496164 (=> res!1017634 e!838045)))

(assert (= (and d!157349 c!138798) b!1496161))

(assert (= (and d!157349 (not c!138798)) b!1496162))

(assert (= (and b!1496162 c!138800) b!1496160))

(assert (= (and b!1496162 (not c!138800)) b!1496158))

(assert (= (and d!157349 c!138799) b!1496156))

(assert (= (and d!157349 (not c!138799)) b!1496159))

(assert (= (and b!1496159 res!1017636) b!1496163))

(assert (= (and b!1496163 (not res!1017635)) b!1496164))

(assert (= (and b!1496164 (not res!1017634)) b!1496157))

(declare-fun m!1379467 () Bool)

(assert (=> b!1496157 m!1379467))

(assert (=> d!157349 m!1379077))

(declare-fun m!1379469 () Bool)

(assert (=> d!157349 m!1379469))

(assert (=> d!157349 m!1379073))

(assert (=> b!1496163 m!1379467))

(assert (=> b!1496158 m!1379077))

(declare-fun m!1379471 () Bool)

(assert (=> b!1496158 m!1379471))

(assert (=> b!1496158 m!1379471))

(declare-fun m!1379473 () Bool)

(assert (=> b!1496158 m!1379473))

(assert (=> b!1496164 m!1379467))

(assert (=> b!1495596 d!157349))

(declare-fun d!157351 () Bool)

(declare-fun lt!651982 () (_ BitVec 32))

(declare-fun lt!651981 () (_ BitVec 32))

(assert (=> d!157351 (= lt!651982 (bvmul (bvxor lt!651981 (bvlshr lt!651981 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157351 (= lt!651981 ((_ extract 31 0) (bvand (bvxor lt!651766 (bvlshr lt!651766 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157351 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017622 (let ((h!36213 ((_ extract 31 0) (bvand (bvxor lt!651766 (bvlshr lt!651766 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133623 (bvmul (bvxor h!36213 (bvlshr h!36213 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133623 (bvlshr x!133623 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017622 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017622 #b00000000000000000000000000000000))))))

(assert (=> d!157351 (= (toIndex!0 lt!651766 mask!2687) (bvand (bvxor lt!651982 (bvlshr lt!651982 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495596 d!157351))

(declare-fun d!157353 () Bool)

(assert (=> d!157353 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127312 d!157353))

(declare-fun d!157355 () Bool)

(assert (=> d!157355 (= (array_inv!37081 a!2862) (bvsge (size!48687 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127312 d!157355))

(declare-fun d!157357 () Bool)

(declare-fun lt!651985 () (_ BitVec 32))

(assert (=> d!157357 (and (bvsge lt!651985 #b00000000000000000000000000000000) (bvslt lt!651985 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157357 (= lt!651985 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157357 (validMask!0 mask!2687)))

(assert (=> d!157357 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651985)))

(declare-fun bs!42919 () Bool)

(assert (= bs!42919 d!157357))

(declare-fun m!1379475 () Bool)

(assert (=> bs!42919 m!1379475))

(assert (=> bs!42919 m!1379073))

(assert (=> b!1495577 d!157357))

(declare-fun b!1496165 () Bool)

(declare-fun e!838052 () Bool)

(declare-fun lt!651986 () SeekEntryResult!12399)

(assert (=> b!1496165 (= e!838052 (bvsge (x!133610 lt!651986) #b01111111111111111111111111111110))))

(declare-fun d!157359 () Bool)

(assert (=> d!157359 e!838052))

(declare-fun c!138802 () Bool)

(assert (=> d!157359 (= c!138802 (and (is-Intermediate!12399 lt!651986) (undefined!13211 lt!651986)))))

(declare-fun e!838051 () SeekEntryResult!12399)

(assert (=> d!157359 (= lt!651986 e!838051)))

(declare-fun c!138801 () Bool)

(assert (=> d!157359 (= c!138801 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651987 () (_ BitVec 64))

(assert (=> d!157359 (= lt!651987 (select (arr!48136 lt!651769) lt!651768))))

(assert (=> d!157359 (validMask!0 mask!2687)))

(assert (=> d!157359 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651768 lt!651766 lt!651769 mask!2687) lt!651986)))

(declare-fun b!1496166 () Bool)

(assert (=> b!1496166 (and (bvsge (index!51989 lt!651986) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651986) (size!48687 lt!651769)))))

(declare-fun e!838050 () Bool)

(assert (=> b!1496166 (= e!838050 (= (select (arr!48136 lt!651769) (index!51989 lt!651986)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1496167 () Bool)

(declare-fun e!838049 () SeekEntryResult!12399)

(assert (=> b!1496167 (= e!838049 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651768 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651766 lt!651769 mask!2687))))

(declare-fun b!1496168 () Bool)

(declare-fun e!838053 () Bool)

(assert (=> b!1496168 (= e!838052 e!838053)))

(declare-fun res!1017639 () Bool)

(assert (=> b!1496168 (= res!1017639 (and (is-Intermediate!12399 lt!651986) (not (undefined!13211 lt!651986)) (bvslt (x!133610 lt!651986) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651986) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651986) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1496168 (=> (not res!1017639) (not e!838053))))

(declare-fun b!1496169 () Bool)

(assert (=> b!1496169 (= e!838049 (Intermediate!12399 false lt!651768 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496170 () Bool)

(assert (=> b!1496170 (= e!838051 (Intermediate!12399 true lt!651768 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1496171 () Bool)

(assert (=> b!1496171 (= e!838051 e!838049)))

(declare-fun c!138803 () Bool)

(assert (=> b!1496171 (= c!138803 (or (= lt!651987 lt!651766) (= (bvadd lt!651987 lt!651987) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496172 () Bool)

(assert (=> b!1496172 (and (bvsge (index!51989 lt!651986) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651986) (size!48687 lt!651769)))))

(declare-fun res!1017638 () Bool)

(assert (=> b!1496172 (= res!1017638 (= (select (arr!48136 lt!651769) (index!51989 lt!651986)) lt!651766))))

(assert (=> b!1496172 (=> res!1017638 e!838050)))

(assert (=> b!1496172 (= e!838053 e!838050)))

(declare-fun b!1496173 () Bool)

(assert (=> b!1496173 (and (bvsge (index!51989 lt!651986) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651986) (size!48687 lt!651769)))))

(declare-fun res!1017637 () Bool)

(assert (=> b!1496173 (= res!1017637 (= (select (arr!48136 lt!651769) (index!51989 lt!651986)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496173 (=> res!1017637 e!838050)))

(assert (= (and d!157359 c!138801) b!1496170))

(assert (= (and d!157359 (not c!138801)) b!1496171))

(assert (= (and b!1496171 c!138803) b!1496169))

(assert (= (and b!1496171 (not c!138803)) b!1496167))

(assert (= (and d!157359 c!138802) b!1496165))

(assert (= (and d!157359 (not c!138802)) b!1496168))

(assert (= (and b!1496168 res!1017639) b!1496172))

(assert (= (and b!1496172 (not res!1017638)) b!1496173))

(assert (= (and b!1496173 (not res!1017637)) b!1496166))

(declare-fun m!1379477 () Bool)

(assert (=> b!1496166 m!1379477))

(assert (=> d!157359 m!1379325))

(assert (=> d!157359 m!1379073))

(assert (=> b!1496172 m!1379477))

(assert (=> b!1496167 m!1379317))

(assert (=> b!1496167 m!1379317))

(declare-fun m!1379479 () Bool)

(assert (=> b!1496167 m!1379479))

(assert (=> b!1496173 m!1379477))

(assert (=> b!1495576 d!157359))

(declare-fun b!1496175 () Bool)

(declare-fun e!838054 () SeekEntryResult!12399)

(declare-fun e!838056 () SeekEntryResult!12399)

(assert (=> b!1496175 (= e!838054 e!838056)))

(declare-fun c!138805 () Bool)

(declare-fun lt!651988 () (_ BitVec 64))

(assert (=> b!1496175 (= c!138805 (= lt!651988 lt!651766))))

(declare-fun b!1496176 () Bool)

(assert (=> b!1496176 (= e!838054 Undefined!12399)))

(declare-fun b!1496177 () Bool)

(declare-fun e!838055 () SeekEntryResult!12399)

(assert (=> b!1496177 (= e!838055 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687))))

(declare-fun b!1496178 () Bool)

(assert (=> b!1496178 (= e!838055 (MissingVacant!12399 intermediateAfterIndex!19))))

(declare-fun b!1496179 () Bool)

(declare-fun c!138806 () Bool)

(assert (=> b!1496179 (= c!138806 (= lt!651988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496179 (= e!838056 e!838055)))

(declare-fun d!157361 () Bool)

(declare-fun lt!651989 () SeekEntryResult!12399)

(assert (=> d!157361 (and (or (is-Undefined!12399 lt!651989) (not (is-Found!12399 lt!651989)) (and (bvsge (index!51988 lt!651989) #b00000000000000000000000000000000) (bvslt (index!51988 lt!651989) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651989) (is-Found!12399 lt!651989) (not (is-MissingVacant!12399 lt!651989)) (not (= (index!51990 lt!651989) intermediateAfterIndex!19)) (and (bvsge (index!51990 lt!651989) #b00000000000000000000000000000000) (bvslt (index!51990 lt!651989) (size!48687 lt!651769)))) (or (is-Undefined!12399 lt!651989) (ite (is-Found!12399 lt!651989) (= (select (arr!48136 lt!651769) (index!51988 lt!651989)) lt!651766) (and (is-MissingVacant!12399 lt!651989) (= (index!51990 lt!651989) intermediateAfterIndex!19) (= (select (arr!48136 lt!651769) (index!51990 lt!651989)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157361 (= lt!651989 e!838054)))

(declare-fun c!138804 () Bool)

(assert (=> d!157361 (= c!138804 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157361 (= lt!651988 (select (arr!48136 lt!651769) index!646))))

(assert (=> d!157361 (validMask!0 mask!2687)))

(assert (=> d!157361 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651766 lt!651769 mask!2687) lt!651989)))

(declare-fun b!1496174 () Bool)

(assert (=> b!1496174 (= e!838056 (Found!12399 index!646))))

(assert (= (and d!157361 c!138804) b!1496176))

(assert (= (and d!157361 (not c!138804)) b!1496175))

(assert (= (and b!1496175 c!138805) b!1496174))

(assert (= (and b!1496175 (not c!138805)) b!1496179))

(assert (= (and b!1496179 c!138806) b!1496178))

(assert (= (and b!1496179 (not c!138806)) b!1496177))

(assert (=> b!1496177 m!1379055))

(assert (=> b!1496177 m!1379055))

(declare-fun m!1379481 () Bool)

(assert (=> b!1496177 m!1379481))

(declare-fun m!1379483 () Bool)

(assert (=> d!157361 m!1379483))

(declare-fun m!1379485 () Bool)

(assert (=> d!157361 m!1379485))

(declare-fun m!1379487 () Bool)

(assert (=> d!157361 m!1379487))

(assert (=> d!157361 m!1379073))

(assert (=> b!1495587 d!157361))

(assert (=> b!1495587 d!157299))

(declare-fun b!1496180 () Bool)

(declare-fun e!838060 () Bool)

(declare-fun lt!651990 () SeekEntryResult!12399)

(assert (=> b!1496180 (= e!838060 (bvsge (x!133610 lt!651990) #b01111111111111111111111111111110))))

(declare-fun d!157363 () Bool)

(assert (=> d!157363 e!838060))

(declare-fun c!138808 () Bool)

(assert (=> d!157363 (= c!138808 (and (is-Intermediate!12399 lt!651990) (undefined!13211 lt!651990)))))

(declare-fun e!838059 () SeekEntryResult!12399)

(assert (=> d!157363 (= lt!651990 e!838059)))

(declare-fun c!138807 () Bool)

(assert (=> d!157363 (= c!138807 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651991 () (_ BitVec 64))

(assert (=> d!157363 (= lt!651991 (select (arr!48136 lt!651769) index!646))))

(assert (=> d!157363 (validMask!0 mask!2687)))

(assert (=> d!157363 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651766 lt!651769 mask!2687) lt!651990)))

(declare-fun b!1496181 () Bool)

(assert (=> b!1496181 (and (bvsge (index!51989 lt!651990) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651990) (size!48687 lt!651769)))))

(declare-fun e!838058 () Bool)

(assert (=> b!1496181 (= e!838058 (= (select (arr!48136 lt!651769) (index!51989 lt!651990)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838057 () SeekEntryResult!12399)

(declare-fun b!1496182 () Bool)

(assert (=> b!1496182 (= e!838057 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651766 lt!651769 mask!2687))))

(declare-fun b!1496183 () Bool)

(declare-fun e!838061 () Bool)

(assert (=> b!1496183 (= e!838060 e!838061)))

(declare-fun res!1017642 () Bool)

(assert (=> b!1496183 (= res!1017642 (and (is-Intermediate!12399 lt!651990) (not (undefined!13211 lt!651990)) (bvslt (x!133610 lt!651990) #b01111111111111111111111111111110) (bvsge (x!133610 lt!651990) #b00000000000000000000000000000000) (bvsge (x!133610 lt!651990) x!665)))))

(assert (=> b!1496183 (=> (not res!1017642) (not e!838061))))

(declare-fun b!1496184 () Bool)

(assert (=> b!1496184 (= e!838057 (Intermediate!12399 false index!646 x!665))))

(declare-fun b!1496185 () Bool)

(assert (=> b!1496185 (= e!838059 (Intermediate!12399 true index!646 x!665))))

(declare-fun b!1496186 () Bool)

(assert (=> b!1496186 (= e!838059 e!838057)))

(declare-fun c!138809 () Bool)

(assert (=> b!1496186 (= c!138809 (or (= lt!651991 lt!651766) (= (bvadd lt!651991 lt!651991) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1496187 () Bool)

(assert (=> b!1496187 (and (bvsge (index!51989 lt!651990) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651990) (size!48687 lt!651769)))))

(declare-fun res!1017641 () Bool)

(assert (=> b!1496187 (= res!1017641 (= (select (arr!48136 lt!651769) (index!51989 lt!651990)) lt!651766))))

(assert (=> b!1496187 (=> res!1017641 e!838058)))

(assert (=> b!1496187 (= e!838061 e!838058)))

(declare-fun b!1496188 () Bool)

(assert (=> b!1496188 (and (bvsge (index!51989 lt!651990) #b00000000000000000000000000000000) (bvslt (index!51989 lt!651990) (size!48687 lt!651769)))))

(declare-fun res!1017640 () Bool)

(assert (=> b!1496188 (= res!1017640 (= (select (arr!48136 lt!651769) (index!51989 lt!651990)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496188 (=> res!1017640 e!838058)))

(assert (= (and d!157363 c!138807) b!1496185))

(assert (= (and d!157363 (not c!138807)) b!1496186))

(assert (= (and b!1496186 c!138809) b!1496184))

(assert (= (and b!1496186 (not c!138809)) b!1496182))

(assert (= (and d!157363 c!138808) b!1496180))

(assert (= (and d!157363 (not c!138808)) b!1496183))

(assert (= (and b!1496183 res!1017642) b!1496187))

(assert (= (and b!1496187 (not res!1017641)) b!1496188))

(assert (= (and b!1496188 (not res!1017640)) b!1496181))

(declare-fun m!1379489 () Bool)

(assert (=> b!1496181 m!1379489))

(assert (=> d!157363 m!1379487))

(assert (=> d!157363 m!1379073))

(assert (=> b!1496187 m!1379489))

(assert (=> b!1496182 m!1379055))

(assert (=> b!1496182 m!1379055))

(declare-fun m!1379491 () Bool)

(assert (=> b!1496182 m!1379491))

(assert (=> b!1496188 m!1379489))

(assert (=> b!1495589 d!157363))

(push 1)

