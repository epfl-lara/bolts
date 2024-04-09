; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125344 () Bool)

(assert start!125344)

(declare-fun b!1463353 () Bool)

(declare-fun res!992729 () Bool)

(declare-fun e!822511 () Bool)

(assert (=> b!1463353 (=> (not res!992729) (not e!822511))))

(declare-datatypes ((array!98709 0))(
  ( (array!98710 (arr!47638 (Array (_ BitVec 32) (_ BitVec 64))) (size!48189 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98709)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11913 0))(
  ( (MissingZero!11913 (index!50043 (_ BitVec 32))) (Found!11913 (index!50044 (_ BitVec 32))) (Intermediate!11913 (undefined!12725 Bool) (index!50045 (_ BitVec 32)) (x!131637 (_ BitVec 32))) (Undefined!11913) (MissingVacant!11913 (index!50046 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98709 (_ BitVec 32)) SeekEntryResult!11913)

(assert (=> b!1463353 (= res!992729 (= (seekEntryOrOpen!0 (select (arr!47638 a!2862) j!93) a!2862 mask!2687) (Found!11913 j!93)))))

(declare-fun b!1463354 () Bool)

(declare-fun e!822512 () Bool)

(declare-fun e!822503 () Bool)

(assert (=> b!1463354 (= e!822512 e!822503)))

(declare-fun res!992714 () Bool)

(assert (=> b!1463354 (=> (not res!992714) (not e!822503))))

(declare-fun lt!640705 () SeekEntryResult!11913)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463354 (= res!992714 (= lt!640705 (Intermediate!11913 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640708 () array!98709)

(declare-fun lt!640706 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98709 (_ BitVec 32)) SeekEntryResult!11913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463354 (= lt!640705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640706 mask!2687) lt!640706 lt!640708 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463354 (= lt!640706 (select (store (arr!47638 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463355 () Bool)

(declare-fun res!992713 () Bool)

(declare-fun e!822507 () Bool)

(assert (=> b!1463355 (=> (not res!992713) (not e!822507))))

(assert (=> b!1463355 (= res!992713 (and (= (size!48189 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48189 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48189 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463357 () Bool)

(declare-fun res!992716 () Bool)

(assert (=> b!1463357 (=> (not res!992716) (not e!822507))))

(declare-datatypes ((List!34319 0))(
  ( (Nil!34316) (Cons!34315 (h!35665 (_ BitVec 64)) (t!49020 List!34319)) )
))
(declare-fun arrayNoDuplicates!0 (array!98709 (_ BitVec 32) List!34319) Bool)

(assert (=> b!1463357 (= res!992716 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34316))))

(declare-fun b!1463358 () Bool)

(declare-fun res!992719 () Bool)

(assert (=> b!1463358 (=> (not res!992719) (not e!822507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98709 (_ BitVec 32)) Bool)

(assert (=> b!1463358 (= res!992719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463359 () Bool)

(declare-fun e!822509 () Bool)

(declare-fun e!822508 () Bool)

(assert (=> b!1463359 (= e!822509 e!822508)))

(declare-fun res!992727 () Bool)

(assert (=> b!1463359 (=> res!992727 e!822508)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640710 () (_ BitVec 32))

(assert (=> b!1463359 (= res!992727 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640710 #b00000000000000000000000000000000) (bvsge lt!640710 (size!48189 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463359 (= lt!640710 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463360 () Bool)

(declare-fun res!992717 () Bool)

(assert (=> b!1463360 (=> (not res!992717) (not e!822507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463360 (= res!992717 (validKeyInArray!0 (select (arr!47638 a!2862) i!1006)))))

(declare-fun b!1463361 () Bool)

(declare-fun res!992726 () Bool)

(assert (=> b!1463361 (=> (not res!992726) (not e!822503))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463361 (= res!992726 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463362 () Bool)

(declare-fun e!822504 () Bool)

(assert (=> b!1463362 (= e!822504 e!822512)))

(declare-fun res!992730 () Bool)

(assert (=> b!1463362 (=> (not res!992730) (not e!822512))))

(declare-fun lt!640709 () SeekEntryResult!11913)

(assert (=> b!1463362 (= res!992730 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47638 a!2862) j!93) mask!2687) (select (arr!47638 a!2862) j!93) a!2862 mask!2687) lt!640709))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463362 (= lt!640709 (Intermediate!11913 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463363 () Bool)

(declare-fun res!992715 () Bool)

(assert (=> b!1463363 (=> (not res!992715) (not e!822507))))

(assert (=> b!1463363 (= res!992715 (validKeyInArray!0 (select (arr!47638 a!2862) j!93)))))

(declare-fun e!822510 () Bool)

(declare-fun b!1463364 () Bool)

(assert (=> b!1463364 (= e!822510 (= lt!640705 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640706 lt!640708 mask!2687)))))

(declare-fun b!1463365 () Bool)

(assert (=> b!1463365 (= e!822511 (or (= (select (arr!47638 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47638 a!2862) intermediateBeforeIndex!19) (select (arr!47638 a!2862) j!93))))))

(declare-fun b!1463366 () Bool)

(assert (=> b!1463366 (= e!822507 e!822504)))

(declare-fun res!992718 () Bool)

(assert (=> b!1463366 (=> (not res!992718) (not e!822504))))

(assert (=> b!1463366 (= res!992718 (= (select (store (arr!47638 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463366 (= lt!640708 (array!98710 (store (arr!47638 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48189 a!2862)))))

(declare-fun b!1463367 () Bool)

(declare-fun res!992721 () Bool)

(assert (=> b!1463367 (=> (not res!992721) (not e!822507))))

(assert (=> b!1463367 (= res!992721 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48189 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48189 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48189 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!992725 () Bool)

(assert (=> start!125344 (=> (not res!992725) (not e!822507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125344 (= res!992725 (validMask!0 mask!2687))))

(assert (=> start!125344 e!822507))

(assert (=> start!125344 true))

(declare-fun array_inv!36583 (array!98709) Bool)

(assert (=> start!125344 (array_inv!36583 a!2862)))

(declare-fun b!1463356 () Bool)

(assert (=> b!1463356 (= e!822503 (not e!822509))))

(declare-fun res!992722 () Bool)

(assert (=> b!1463356 (=> res!992722 e!822509)))

(assert (=> b!1463356 (= res!992722 (or (and (= (select (arr!47638 a!2862) index!646) (select (store (arr!47638 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47638 a!2862) index!646) (select (arr!47638 a!2862) j!93))) (= (select (arr!47638 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463356 e!822511))

(declare-fun res!992720 () Bool)

(assert (=> b!1463356 (=> (not res!992720) (not e!822511))))

(assert (=> b!1463356 (= res!992720 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49270 0))(
  ( (Unit!49271) )
))
(declare-fun lt!640707 () Unit!49270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49270)

(assert (=> b!1463356 (= lt!640707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!822505 () Bool)

(declare-fun b!1463368 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98709 (_ BitVec 32)) SeekEntryResult!11913)

(assert (=> b!1463368 (= e!822505 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640710 intermediateAfterIndex!19 lt!640706 lt!640708 mask!2687) (seekEntryOrOpen!0 lt!640706 lt!640708 mask!2687))))))

(declare-fun b!1463369 () Bool)

(assert (=> b!1463369 (= e!822508 true)))

(declare-fun lt!640711 () Bool)

(assert (=> b!1463369 (= lt!640711 e!822505)))

(declare-fun c!134834 () Bool)

(assert (=> b!1463369 (= c!134834 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463370 () Bool)

(declare-fun res!992724 () Bool)

(assert (=> b!1463370 (=> (not res!992724) (not e!822503))))

(assert (=> b!1463370 (= res!992724 e!822510)))

(declare-fun c!134833 () Bool)

(assert (=> b!1463370 (= c!134833 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463371 () Bool)

(declare-fun res!992728 () Bool)

(assert (=> b!1463371 (=> (not res!992728) (not e!822512))))

(assert (=> b!1463371 (= res!992728 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47638 a!2862) j!93) a!2862 mask!2687) lt!640709))))

(declare-fun b!1463372 () Bool)

(declare-fun res!992723 () Bool)

(assert (=> b!1463372 (=> res!992723 e!822508)))

(assert (=> b!1463372 (= res!992723 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640710 (select (arr!47638 a!2862) j!93) a!2862 mask!2687) lt!640709)))))

(declare-fun b!1463373 () Bool)

(assert (=> b!1463373 (= e!822505 (not (= lt!640705 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640710 lt!640706 lt!640708 mask!2687))))))

(declare-fun b!1463374 () Bool)

(assert (=> b!1463374 (= e!822510 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640706 lt!640708 mask!2687) (seekEntryOrOpen!0 lt!640706 lt!640708 mask!2687)))))

(assert (= (and start!125344 res!992725) b!1463355))

(assert (= (and b!1463355 res!992713) b!1463360))

(assert (= (and b!1463360 res!992717) b!1463363))

(assert (= (and b!1463363 res!992715) b!1463358))

(assert (= (and b!1463358 res!992719) b!1463357))

(assert (= (and b!1463357 res!992716) b!1463367))

(assert (= (and b!1463367 res!992721) b!1463366))

(assert (= (and b!1463366 res!992718) b!1463362))

(assert (= (and b!1463362 res!992730) b!1463371))

(assert (= (and b!1463371 res!992728) b!1463354))

(assert (= (and b!1463354 res!992714) b!1463370))

(assert (= (and b!1463370 c!134833) b!1463364))

(assert (= (and b!1463370 (not c!134833)) b!1463374))

(assert (= (and b!1463370 res!992724) b!1463361))

(assert (= (and b!1463361 res!992726) b!1463356))

(assert (= (and b!1463356 res!992720) b!1463353))

(assert (= (and b!1463353 res!992729) b!1463365))

(assert (= (and b!1463356 (not res!992722)) b!1463359))

(assert (= (and b!1463359 (not res!992727)) b!1463372))

(assert (= (and b!1463372 (not res!992723)) b!1463369))

(assert (= (and b!1463369 c!134834) b!1463373))

(assert (= (and b!1463369 (not c!134834)) b!1463368))

(declare-fun m!1350747 () Bool)

(assert (=> start!125344 m!1350747))

(declare-fun m!1350749 () Bool)

(assert (=> start!125344 m!1350749))

(declare-fun m!1350751 () Bool)

(assert (=> b!1463357 m!1350751))

(declare-fun m!1350753 () Bool)

(assert (=> b!1463356 m!1350753))

(declare-fun m!1350755 () Bool)

(assert (=> b!1463356 m!1350755))

(declare-fun m!1350757 () Bool)

(assert (=> b!1463356 m!1350757))

(declare-fun m!1350759 () Bool)

(assert (=> b!1463356 m!1350759))

(declare-fun m!1350761 () Bool)

(assert (=> b!1463356 m!1350761))

(declare-fun m!1350763 () Bool)

(assert (=> b!1463356 m!1350763))

(assert (=> b!1463363 m!1350763))

(assert (=> b!1463363 m!1350763))

(declare-fun m!1350765 () Bool)

(assert (=> b!1463363 m!1350765))

(assert (=> b!1463371 m!1350763))

(assert (=> b!1463371 m!1350763))

(declare-fun m!1350767 () Bool)

(assert (=> b!1463371 m!1350767))

(declare-fun m!1350769 () Bool)

(assert (=> b!1463364 m!1350769))

(declare-fun m!1350771 () Bool)

(assert (=> b!1463368 m!1350771))

(declare-fun m!1350773 () Bool)

(assert (=> b!1463368 m!1350773))

(declare-fun m!1350775 () Bool)

(assert (=> b!1463354 m!1350775))

(assert (=> b!1463354 m!1350775))

(declare-fun m!1350777 () Bool)

(assert (=> b!1463354 m!1350777))

(assert (=> b!1463354 m!1350755))

(declare-fun m!1350779 () Bool)

(assert (=> b!1463354 m!1350779))

(declare-fun m!1350781 () Bool)

(assert (=> b!1463359 m!1350781))

(declare-fun m!1350783 () Bool)

(assert (=> b!1463365 m!1350783))

(assert (=> b!1463365 m!1350763))

(declare-fun m!1350785 () Bool)

(assert (=> b!1463360 m!1350785))

(assert (=> b!1463360 m!1350785))

(declare-fun m!1350787 () Bool)

(assert (=> b!1463360 m!1350787))

(assert (=> b!1463372 m!1350763))

(assert (=> b!1463372 m!1350763))

(declare-fun m!1350789 () Bool)

(assert (=> b!1463372 m!1350789))

(assert (=> b!1463362 m!1350763))

(assert (=> b!1463362 m!1350763))

(declare-fun m!1350791 () Bool)

(assert (=> b!1463362 m!1350791))

(assert (=> b!1463362 m!1350791))

(assert (=> b!1463362 m!1350763))

(declare-fun m!1350793 () Bool)

(assert (=> b!1463362 m!1350793))

(assert (=> b!1463353 m!1350763))

(assert (=> b!1463353 m!1350763))

(declare-fun m!1350795 () Bool)

(assert (=> b!1463353 m!1350795))

(assert (=> b!1463366 m!1350755))

(declare-fun m!1350797 () Bool)

(assert (=> b!1463366 m!1350797))

(declare-fun m!1350799 () Bool)

(assert (=> b!1463358 m!1350799))

(declare-fun m!1350801 () Bool)

(assert (=> b!1463373 m!1350801))

(declare-fun m!1350803 () Bool)

(assert (=> b!1463374 m!1350803))

(assert (=> b!1463374 m!1350773))

(push 1)

