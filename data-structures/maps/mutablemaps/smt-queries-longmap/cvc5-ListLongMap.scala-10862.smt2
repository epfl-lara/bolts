; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127390 () Bool)

(assert start!127390)

(declare-fun b!1496433 () Bool)

(declare-fun e!838177 () Bool)

(declare-fun e!838175 () Bool)

(assert (=> b!1496433 (= e!838177 e!838175)))

(declare-fun res!1017860 () Bool)

(assert (=> b!1496433 (=> res!1017860 e!838175)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!652067 () (_ BitVec 32))

(declare-datatypes ((array!99765 0))(
  ( (array!99766 (arr!48142 (Array (_ BitVec 32) (_ BitVec 64))) (size!48693 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99765)

(assert (=> b!1496433 (= res!1017860 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652067 #b00000000000000000000000000000000) (bvsge lt!652067 (size!48693 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496433 (= lt!652067 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496434 () Bool)

(declare-fun e!838172 () Bool)

(assert (=> b!1496434 (= e!838172 (not e!838177))))

(declare-fun res!1017850 () Bool)

(assert (=> b!1496434 (=> res!1017850 e!838177)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1496434 (= res!1017850 (or (and (= (select (arr!48142 a!2862) index!646) (select (store (arr!48142 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48142 a!2862) index!646) (select (arr!48142 a!2862) j!93))) (= (select (arr!48142 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!838174 () Bool)

(assert (=> b!1496434 e!838174))

(declare-fun res!1017848 () Bool)

(assert (=> b!1496434 (=> (not res!1017848) (not e!838174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99765 (_ BitVec 32)) Bool)

(assert (=> b!1496434 (= res!1017848 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50098 0))(
  ( (Unit!50099) )
))
(declare-fun lt!652072 () Unit!50098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50098)

(assert (=> b!1496434 (= lt!652072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496435 () Bool)

(declare-fun e!838180 () Bool)

(declare-fun e!838179 () Bool)

(assert (=> b!1496435 (= e!838180 e!838179)))

(declare-fun res!1017854 () Bool)

(assert (=> b!1496435 (=> (not res!1017854) (not e!838179))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496435 (= res!1017854 (= (select (store (arr!48142 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652068 () array!99765)

(assert (=> b!1496435 (= lt!652068 (array!99766 (store (arr!48142 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48693 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1496436 () Bool)

(assert (=> b!1496436 (= e!838174 (or (= (select (arr!48142 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48142 a!2862) intermediateBeforeIndex!19) (select (arr!48142 a!2862) j!93))))))

(declare-fun lt!652071 () (_ BitVec 64))

(declare-fun e!838178 () Bool)

(declare-fun b!1496437 () Bool)

(declare-datatypes ((SeekEntryResult!12405 0))(
  ( (MissingZero!12405 (index!52011 (_ BitVec 32))) (Found!12405 (index!52012 (_ BitVec 32))) (Intermediate!12405 (undefined!13217 Bool) (index!52013 (_ BitVec 32)) (x!133644 (_ BitVec 32))) (Undefined!12405) (MissingVacant!12405 (index!52014 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99765 (_ BitVec 32)) SeekEntryResult!12405)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99765 (_ BitVec 32)) SeekEntryResult!12405)

(assert (=> b!1496437 (= e!838178 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652067 intermediateAfterIndex!19 lt!652071 lt!652068 mask!2687) (seekEntryOrOpen!0 lt!652071 lt!652068 mask!2687))))))

(declare-fun b!1496438 () Bool)

(declare-fun lt!652069 () SeekEntryResult!12405)

(declare-fun e!838173 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99765 (_ BitVec 32)) SeekEntryResult!12405)

(assert (=> b!1496438 (= e!838173 (= lt!652069 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652071 lt!652068 mask!2687)))))

(declare-fun b!1496439 () Bool)

(assert (=> b!1496439 (= e!838173 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652071 lt!652068 mask!2687) (seekEntryOrOpen!0 lt!652071 lt!652068 mask!2687)))))

(declare-fun b!1496440 () Bool)

(declare-fun e!838181 () Bool)

(assert (=> b!1496440 (= e!838181 e!838172)))

(declare-fun res!1017843 () Bool)

(assert (=> b!1496440 (=> (not res!1017843) (not e!838172))))

(assert (=> b!1496440 (= res!1017843 (= lt!652069 (Intermediate!12405 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496440 (= lt!652069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652071 mask!2687) lt!652071 lt!652068 mask!2687))))

(assert (=> b!1496440 (= lt!652071 (select (store (arr!48142 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496441 () Bool)

(declare-fun res!1017859 () Bool)

(assert (=> b!1496441 (=> res!1017859 e!838175)))

(assert (=> b!1496441 (= res!1017859 e!838178)))

(declare-fun c!138832 () Bool)

(assert (=> b!1496441 (= c!138832 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!1017847 () Bool)

(assert (=> start!127390 (=> (not res!1017847) (not e!838180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127390 (= res!1017847 (validMask!0 mask!2687))))

(assert (=> start!127390 e!838180))

(assert (=> start!127390 true))

(declare-fun array_inv!37087 (array!99765) Bool)

(assert (=> start!127390 (array_inv!37087 a!2862)))

(declare-fun b!1496442 () Bool)

(declare-fun res!1017858 () Bool)

(assert (=> b!1496442 (=> res!1017858 e!838175)))

(declare-fun lt!652070 () SeekEntryResult!12405)

(assert (=> b!1496442 (= res!1017858 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652067 (select (arr!48142 a!2862) j!93) a!2862 mask!2687) lt!652070)))))

(declare-fun b!1496443 () Bool)

(declare-fun res!1017855 () Bool)

(assert (=> b!1496443 (=> (not res!1017855) (not e!838172))))

(assert (=> b!1496443 (= res!1017855 e!838173)))

(declare-fun c!138833 () Bool)

(assert (=> b!1496443 (= c!138833 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496444 () Bool)

(declare-fun res!1017861 () Bool)

(assert (=> b!1496444 (=> (not res!1017861) (not e!838172))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1496444 (= res!1017861 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496445 () Bool)

(declare-fun res!1017851 () Bool)

(assert (=> b!1496445 (=> (not res!1017851) (not e!838181))))

(assert (=> b!1496445 (= res!1017851 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48142 a!2862) j!93) a!2862 mask!2687) lt!652070))))

(declare-fun b!1496446 () Bool)

(assert (=> b!1496446 (= e!838175 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun b!1496447 () Bool)

(declare-fun res!1017856 () Bool)

(assert (=> b!1496447 (=> (not res!1017856) (not e!838180))))

(declare-datatypes ((List!34823 0))(
  ( (Nil!34820) (Cons!34819 (h!36217 (_ BitVec 64)) (t!49524 List!34823)) )
))
(declare-fun arrayNoDuplicates!0 (array!99765 (_ BitVec 32) List!34823) Bool)

(assert (=> b!1496447 (= res!1017856 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34820))))

(declare-fun b!1496448 () Bool)

(declare-fun res!1017846 () Bool)

(assert (=> b!1496448 (=> (not res!1017846) (not e!838180))))

(assert (=> b!1496448 (= res!1017846 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48693 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48693 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48693 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496449 () Bool)

(declare-fun res!1017845 () Bool)

(assert (=> b!1496449 (=> (not res!1017845) (not e!838180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496449 (= res!1017845 (validKeyInArray!0 (select (arr!48142 a!2862) j!93)))))

(declare-fun b!1496450 () Bool)

(declare-fun res!1017849 () Bool)

(assert (=> b!1496450 (=> (not res!1017849) (not e!838180))))

(assert (=> b!1496450 (= res!1017849 (validKeyInArray!0 (select (arr!48142 a!2862) i!1006)))))

(declare-fun b!1496451 () Bool)

(declare-fun res!1017857 () Bool)

(assert (=> b!1496451 (=> (not res!1017857) (not e!838180))))

(assert (=> b!1496451 (= res!1017857 (and (= (size!48693 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48693 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48693 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496452 () Bool)

(assert (=> b!1496452 (= e!838179 e!838181)))

(declare-fun res!1017852 () Bool)

(assert (=> b!1496452 (=> (not res!1017852) (not e!838181))))

(assert (=> b!1496452 (= res!1017852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48142 a!2862) j!93) mask!2687) (select (arr!48142 a!2862) j!93) a!2862 mask!2687) lt!652070))))

(assert (=> b!1496452 (= lt!652070 (Intermediate!12405 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496453 () Bool)

(declare-fun res!1017844 () Bool)

(assert (=> b!1496453 (=> (not res!1017844) (not e!838174))))

(assert (=> b!1496453 (= res!1017844 (= (seekEntryOrOpen!0 (select (arr!48142 a!2862) j!93) a!2862 mask!2687) (Found!12405 j!93)))))

(declare-fun b!1496454 () Bool)

(declare-fun res!1017853 () Bool)

(assert (=> b!1496454 (=> (not res!1017853) (not e!838180))))

(assert (=> b!1496454 (= res!1017853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496455 () Bool)

(assert (=> b!1496455 (= e!838178 (not (= lt!652069 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652067 lt!652071 lt!652068 mask!2687))))))

(assert (= (and start!127390 res!1017847) b!1496451))

(assert (= (and b!1496451 res!1017857) b!1496450))

(assert (= (and b!1496450 res!1017849) b!1496449))

(assert (= (and b!1496449 res!1017845) b!1496454))

(assert (= (and b!1496454 res!1017853) b!1496447))

(assert (= (and b!1496447 res!1017856) b!1496448))

(assert (= (and b!1496448 res!1017846) b!1496435))

(assert (= (and b!1496435 res!1017854) b!1496452))

(assert (= (and b!1496452 res!1017852) b!1496445))

(assert (= (and b!1496445 res!1017851) b!1496440))

(assert (= (and b!1496440 res!1017843) b!1496443))

(assert (= (and b!1496443 c!138833) b!1496438))

(assert (= (and b!1496443 (not c!138833)) b!1496439))

(assert (= (and b!1496443 res!1017855) b!1496444))

(assert (= (and b!1496444 res!1017861) b!1496434))

(assert (= (and b!1496434 res!1017848) b!1496453))

(assert (= (and b!1496453 res!1017844) b!1496436))

(assert (= (and b!1496434 (not res!1017850)) b!1496433))

(assert (= (and b!1496433 (not res!1017860)) b!1496442))

(assert (= (and b!1496442 (not res!1017858)) b!1496441))

(assert (= (and b!1496441 c!138832) b!1496455))

(assert (= (and b!1496441 (not c!138832)) b!1496437))

(assert (= (and b!1496441 (not res!1017859)) b!1496446))

(declare-fun m!1379667 () Bool)

(assert (=> b!1496453 m!1379667))

(assert (=> b!1496453 m!1379667))

(declare-fun m!1379669 () Bool)

(assert (=> b!1496453 m!1379669))

(declare-fun m!1379671 () Bool)

(assert (=> b!1496436 m!1379671))

(assert (=> b!1496436 m!1379667))

(declare-fun m!1379673 () Bool)

(assert (=> b!1496433 m!1379673))

(declare-fun m!1379675 () Bool)

(assert (=> b!1496455 m!1379675))

(assert (=> b!1496442 m!1379667))

(assert (=> b!1496442 m!1379667))

(declare-fun m!1379677 () Bool)

(assert (=> b!1496442 m!1379677))

(assert (=> b!1496449 m!1379667))

(assert (=> b!1496449 m!1379667))

(declare-fun m!1379679 () Bool)

(assert (=> b!1496449 m!1379679))

(declare-fun m!1379681 () Bool)

(assert (=> b!1496435 m!1379681))

(declare-fun m!1379683 () Bool)

(assert (=> b!1496435 m!1379683))

(declare-fun m!1379685 () Bool)

(assert (=> b!1496450 m!1379685))

(assert (=> b!1496450 m!1379685))

(declare-fun m!1379687 () Bool)

(assert (=> b!1496450 m!1379687))

(assert (=> b!1496445 m!1379667))

(assert (=> b!1496445 m!1379667))

(declare-fun m!1379689 () Bool)

(assert (=> b!1496445 m!1379689))

(declare-fun m!1379691 () Bool)

(assert (=> b!1496437 m!1379691))

(declare-fun m!1379693 () Bool)

(assert (=> b!1496437 m!1379693))

(declare-fun m!1379695 () Bool)

(assert (=> b!1496438 m!1379695))

(declare-fun m!1379697 () Bool)

(assert (=> start!127390 m!1379697))

(declare-fun m!1379699 () Bool)

(assert (=> start!127390 m!1379699))

(declare-fun m!1379701 () Bool)

(assert (=> b!1496434 m!1379701))

(assert (=> b!1496434 m!1379681))

(declare-fun m!1379703 () Bool)

(assert (=> b!1496434 m!1379703))

(declare-fun m!1379705 () Bool)

(assert (=> b!1496434 m!1379705))

(declare-fun m!1379707 () Bool)

(assert (=> b!1496434 m!1379707))

(assert (=> b!1496434 m!1379667))

(declare-fun m!1379709 () Bool)

(assert (=> b!1496440 m!1379709))

(assert (=> b!1496440 m!1379709))

(declare-fun m!1379711 () Bool)

(assert (=> b!1496440 m!1379711))

(assert (=> b!1496440 m!1379681))

(declare-fun m!1379713 () Bool)

(assert (=> b!1496440 m!1379713))

(declare-fun m!1379715 () Bool)

(assert (=> b!1496454 m!1379715))

(declare-fun m!1379717 () Bool)

(assert (=> b!1496447 m!1379717))

(assert (=> b!1496452 m!1379667))

(assert (=> b!1496452 m!1379667))

(declare-fun m!1379719 () Bool)

(assert (=> b!1496452 m!1379719))

(assert (=> b!1496452 m!1379719))

(assert (=> b!1496452 m!1379667))

(declare-fun m!1379721 () Bool)

(assert (=> b!1496452 m!1379721))

(declare-fun m!1379723 () Bool)

(assert (=> b!1496439 m!1379723))

(assert (=> b!1496439 m!1379693))

(push 1)

(assert (not b!1496454))

(assert (not b!1496445))

(assert (not b!1496453))

(assert (not b!1496452))

(assert (not b!1496447))

(assert (not b!1496440))

(assert (not b!1496455))

(assert (not b!1496434))

(assert (not b!1496438))

(assert (not b!1496439))

(assert (not start!127390))

(assert (not b!1496450))

(assert (not b!1496449))

(assert (not b!1496433))

(assert (not b!1496442))

(assert (not b!1496437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

