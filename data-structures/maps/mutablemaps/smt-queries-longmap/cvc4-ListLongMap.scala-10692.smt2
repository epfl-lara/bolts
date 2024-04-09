; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125336 () Bool)

(assert start!125336)

(declare-fun b!1463089 () Bool)

(declare-fun res!992506 () Bool)

(declare-fun e!822391 () Bool)

(assert (=> b!1463089 (=> (not res!992506) (not e!822391))))

(declare-datatypes ((array!98701 0))(
  ( (array!98702 (arr!47634 (Array (_ BitVec 32) (_ BitVec 64))) (size!48185 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98701)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463089 (= res!992506 (validKeyInArray!0 (select (arr!47634 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640625 () (_ BitVec 64))

(declare-fun b!1463090 () Bool)

(declare-fun lt!640623 () array!98701)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!822385 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11909 0))(
  ( (MissingZero!11909 (index!50027 (_ BitVec 32))) (Found!11909 (index!50028 (_ BitVec 32))) (Intermediate!11909 (undefined!12721 Bool) (index!50029 (_ BitVec 32)) (x!131617 (_ BitVec 32))) (Undefined!11909) (MissingVacant!11909 (index!50030 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98701 (_ BitVec 32)) SeekEntryResult!11909)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98701 (_ BitVec 32)) SeekEntryResult!11909)

(assert (=> b!1463090 (= e!822385 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640625 lt!640623 mask!2687) (seekEntryOrOpen!0 lt!640625 lt!640623 mask!2687)))))

(declare-fun b!1463092 () Bool)

(declare-fun e!822384 () Bool)

(declare-fun e!822390 () Bool)

(assert (=> b!1463092 (= e!822384 e!822390)))

(declare-fun res!992512 () Bool)

(assert (=> b!1463092 (=> (not res!992512) (not e!822390))))

(declare-fun lt!640626 () SeekEntryResult!11909)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1463092 (= res!992512 (= lt!640626 (Intermediate!11909 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98701 (_ BitVec 32)) SeekEntryResult!11909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463092 (= lt!640626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640625 mask!2687) lt!640625 lt!640623 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463092 (= lt!640625 (select (store (arr!47634 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!822389 () Bool)

(declare-fun b!1463093 () Bool)

(assert (=> b!1463093 (= e!822389 (or (= (select (arr!47634 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47634 a!2862) intermediateBeforeIndex!19) (select (arr!47634 a!2862) j!93))))))

(declare-fun b!1463094 () Bool)

(declare-fun e!822386 () Bool)

(assert (=> b!1463094 (= e!822390 (not e!822386))))

(declare-fun res!992500 () Bool)

(assert (=> b!1463094 (=> res!992500 e!822386)))

(assert (=> b!1463094 (= res!992500 (or (and (= (select (arr!47634 a!2862) index!646) (select (store (arr!47634 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47634 a!2862) index!646) (select (arr!47634 a!2862) j!93))) (= (select (arr!47634 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463094 e!822389))

(declare-fun res!992510 () Bool)

(assert (=> b!1463094 (=> (not res!992510) (not e!822389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98701 (_ BitVec 32)) Bool)

(assert (=> b!1463094 (= res!992510 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49262 0))(
  ( (Unit!49263) )
))
(declare-fun lt!640622 () Unit!49262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49262)

(assert (=> b!1463094 (= lt!640622 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463095 () Bool)

(declare-fun res!992499 () Bool)

(assert (=> b!1463095 (=> (not res!992499) (not e!822391))))

(assert (=> b!1463095 (= res!992499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463096 () Bool)

(declare-fun e!822387 () Bool)

(assert (=> b!1463096 (= e!822387 e!822384)))

(declare-fun res!992501 () Bool)

(assert (=> b!1463096 (=> (not res!992501) (not e!822384))))

(declare-fun lt!640621 () SeekEntryResult!11909)

(assert (=> b!1463096 (= res!992501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47634 a!2862) j!93) mask!2687) (select (arr!47634 a!2862) j!93) a!2862 mask!2687) lt!640621))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463096 (= lt!640621 (Intermediate!11909 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463097 () Bool)

(declare-fun res!992508 () Bool)

(assert (=> b!1463097 (=> (not res!992508) (not e!822390))))

(assert (=> b!1463097 (= res!992508 e!822385)))

(declare-fun c!134810 () Bool)

(assert (=> b!1463097 (= c!134810 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!822388 () Bool)

(declare-fun b!1463098 () Bool)

(declare-fun lt!640624 () (_ BitVec 32))

(assert (=> b!1463098 (= e!822388 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640624 intermediateAfterIndex!19 lt!640625 lt!640623 mask!2687) (seekEntryOrOpen!0 lt!640625 lt!640623 mask!2687))))))

(declare-fun b!1463099 () Bool)

(declare-fun res!992503 () Bool)

(assert (=> b!1463099 (=> (not res!992503) (not e!822389))))

(assert (=> b!1463099 (= res!992503 (= (seekEntryOrOpen!0 (select (arr!47634 a!2862) j!93) a!2862 mask!2687) (Found!11909 j!93)))))

(declare-fun b!1463100 () Bool)

(declare-fun e!822383 () Bool)

(assert (=> b!1463100 (= e!822383 true)))

(declare-fun lt!640627 () Bool)

(assert (=> b!1463100 (= lt!640627 e!822388)))

(declare-fun c!134809 () Bool)

(assert (=> b!1463100 (= c!134809 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463101 () Bool)

(declare-fun res!992505 () Bool)

(assert (=> b!1463101 (=> (not res!992505) (not e!822391))))

(assert (=> b!1463101 (= res!992505 (and (= (size!48185 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48185 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48185 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463102 () Bool)

(declare-fun res!992507 () Bool)

(assert (=> b!1463102 (=> res!992507 e!822383)))

(assert (=> b!1463102 (= res!992507 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640624 (select (arr!47634 a!2862) j!93) a!2862 mask!2687) lt!640621)))))

(declare-fun b!1463103 () Bool)

(declare-fun res!992511 () Bool)

(assert (=> b!1463103 (=> (not res!992511) (not e!822391))))

(assert (=> b!1463103 (= res!992511 (validKeyInArray!0 (select (arr!47634 a!2862) i!1006)))))

(declare-fun b!1463104 () Bool)

(declare-fun res!992502 () Bool)

(assert (=> b!1463104 (=> (not res!992502) (not e!822390))))

(assert (=> b!1463104 (= res!992502 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463105 () Bool)

(assert (=> b!1463105 (= e!822388 (not (= lt!640626 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640624 lt!640625 lt!640623 mask!2687))))))

(declare-fun b!1463106 () Bool)

(assert (=> b!1463106 (= e!822391 e!822387)))

(declare-fun res!992513 () Bool)

(assert (=> b!1463106 (=> (not res!992513) (not e!822387))))

(assert (=> b!1463106 (= res!992513 (= (select (store (arr!47634 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463106 (= lt!640623 (array!98702 (store (arr!47634 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48185 a!2862)))))

(declare-fun b!1463107 () Bool)

(declare-fun res!992497 () Bool)

(assert (=> b!1463107 (=> (not res!992497) (not e!822391))))

(assert (=> b!1463107 (= res!992497 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48185 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48185 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48185 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463108 () Bool)

(declare-fun res!992514 () Bool)

(assert (=> b!1463108 (=> (not res!992514) (not e!822384))))

(assert (=> b!1463108 (= res!992514 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47634 a!2862) j!93) a!2862 mask!2687) lt!640621))))

(declare-fun b!1463091 () Bool)

(assert (=> b!1463091 (= e!822386 e!822383)))

(declare-fun res!992498 () Bool)

(assert (=> b!1463091 (=> res!992498 e!822383)))

(assert (=> b!1463091 (= res!992498 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640624 #b00000000000000000000000000000000) (bvsge lt!640624 (size!48185 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463091 (= lt!640624 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!992504 () Bool)

(assert (=> start!125336 (=> (not res!992504) (not e!822391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125336 (= res!992504 (validMask!0 mask!2687))))

(assert (=> start!125336 e!822391))

(assert (=> start!125336 true))

(declare-fun array_inv!36579 (array!98701) Bool)

(assert (=> start!125336 (array_inv!36579 a!2862)))

(declare-fun b!1463109 () Bool)

(declare-fun res!992509 () Bool)

(assert (=> b!1463109 (=> (not res!992509) (not e!822391))))

(declare-datatypes ((List!34315 0))(
  ( (Nil!34312) (Cons!34311 (h!35661 (_ BitVec 64)) (t!49016 List!34315)) )
))
(declare-fun arrayNoDuplicates!0 (array!98701 (_ BitVec 32) List!34315) Bool)

(assert (=> b!1463109 (= res!992509 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34312))))

(declare-fun b!1463110 () Bool)

(assert (=> b!1463110 (= e!822385 (= lt!640626 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640625 lt!640623 mask!2687)))))

(assert (= (and start!125336 res!992504) b!1463101))

(assert (= (and b!1463101 res!992505) b!1463103))

(assert (= (and b!1463103 res!992511) b!1463089))

(assert (= (and b!1463089 res!992506) b!1463095))

(assert (= (and b!1463095 res!992499) b!1463109))

(assert (= (and b!1463109 res!992509) b!1463107))

(assert (= (and b!1463107 res!992497) b!1463106))

(assert (= (and b!1463106 res!992513) b!1463096))

(assert (= (and b!1463096 res!992501) b!1463108))

(assert (= (and b!1463108 res!992514) b!1463092))

(assert (= (and b!1463092 res!992512) b!1463097))

(assert (= (and b!1463097 c!134810) b!1463110))

(assert (= (and b!1463097 (not c!134810)) b!1463090))

(assert (= (and b!1463097 res!992508) b!1463104))

(assert (= (and b!1463104 res!992502) b!1463094))

(assert (= (and b!1463094 res!992510) b!1463099))

(assert (= (and b!1463099 res!992503) b!1463093))

(assert (= (and b!1463094 (not res!992500)) b!1463091))

(assert (= (and b!1463091 (not res!992498)) b!1463102))

(assert (= (and b!1463102 (not res!992507)) b!1463100))

(assert (= (and b!1463100 c!134809) b!1463105))

(assert (= (and b!1463100 (not c!134809)) b!1463098))

(declare-fun m!1350515 () Bool)

(assert (=> b!1463089 m!1350515))

(assert (=> b!1463089 m!1350515))

(declare-fun m!1350517 () Bool)

(assert (=> b!1463089 m!1350517))

(declare-fun m!1350519 () Bool)

(assert (=> b!1463092 m!1350519))

(assert (=> b!1463092 m!1350519))

(declare-fun m!1350521 () Bool)

(assert (=> b!1463092 m!1350521))

(declare-fun m!1350523 () Bool)

(assert (=> b!1463092 m!1350523))

(declare-fun m!1350525 () Bool)

(assert (=> b!1463092 m!1350525))

(declare-fun m!1350527 () Bool)

(assert (=> b!1463105 m!1350527))

(assert (=> b!1463099 m!1350515))

(assert (=> b!1463099 m!1350515))

(declare-fun m!1350529 () Bool)

(assert (=> b!1463099 m!1350529))

(declare-fun m!1350531 () Bool)

(assert (=> b!1463109 m!1350531))

(declare-fun m!1350533 () Bool)

(assert (=> b!1463110 m!1350533))

(assert (=> b!1463108 m!1350515))

(assert (=> b!1463108 m!1350515))

(declare-fun m!1350535 () Bool)

(assert (=> b!1463108 m!1350535))

(declare-fun m!1350537 () Bool)

(assert (=> b!1463098 m!1350537))

(declare-fun m!1350539 () Bool)

(assert (=> b!1463098 m!1350539))

(assert (=> b!1463096 m!1350515))

(assert (=> b!1463096 m!1350515))

(declare-fun m!1350541 () Bool)

(assert (=> b!1463096 m!1350541))

(assert (=> b!1463096 m!1350541))

(assert (=> b!1463096 m!1350515))

(declare-fun m!1350543 () Bool)

(assert (=> b!1463096 m!1350543))

(assert (=> b!1463106 m!1350523))

(declare-fun m!1350545 () Bool)

(assert (=> b!1463106 m!1350545))

(assert (=> b!1463102 m!1350515))

(assert (=> b!1463102 m!1350515))

(declare-fun m!1350547 () Bool)

(assert (=> b!1463102 m!1350547))

(declare-fun m!1350549 () Bool)

(assert (=> b!1463103 m!1350549))

(assert (=> b!1463103 m!1350549))

(declare-fun m!1350551 () Bool)

(assert (=> b!1463103 m!1350551))

(declare-fun m!1350553 () Bool)

(assert (=> b!1463093 m!1350553))

(assert (=> b!1463093 m!1350515))

(declare-fun m!1350555 () Bool)

(assert (=> start!125336 m!1350555))

(declare-fun m!1350557 () Bool)

(assert (=> start!125336 m!1350557))

(declare-fun m!1350559 () Bool)

(assert (=> b!1463094 m!1350559))

(assert (=> b!1463094 m!1350523))

(declare-fun m!1350561 () Bool)

(assert (=> b!1463094 m!1350561))

(declare-fun m!1350563 () Bool)

(assert (=> b!1463094 m!1350563))

(declare-fun m!1350565 () Bool)

(assert (=> b!1463094 m!1350565))

(assert (=> b!1463094 m!1350515))

(declare-fun m!1350567 () Bool)

(assert (=> b!1463091 m!1350567))

(declare-fun m!1350569 () Bool)

(assert (=> b!1463095 m!1350569))

(declare-fun m!1350571 () Bool)

(assert (=> b!1463090 m!1350571))

(assert (=> b!1463090 m!1350539))

(push 1)

