; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125162 () Bool)

(assert start!125162)

(declare-fun b!1457518 () Bool)

(declare-fun e!819953 () Bool)

(declare-fun e!819945 () Bool)

(assert (=> b!1457518 (= e!819953 e!819945)))

(declare-fun res!987901 () Bool)

(assert (=> b!1457518 (=> (not res!987901) (not e!819945))))

(declare-datatypes ((SeekEntryResult!11822 0))(
  ( (MissingZero!11822 (index!49679 (_ BitVec 32))) (Found!11822 (index!49680 (_ BitVec 32))) (Intermediate!11822 (undefined!12634 Bool) (index!49681 (_ BitVec 32)) (x!131298 (_ BitVec 32))) (Undefined!11822) (MissingVacant!11822 (index!49682 (_ BitVec 32))) )
))
(declare-fun lt!638682 () SeekEntryResult!11822)

(declare-datatypes ((array!98527 0))(
  ( (array!98528 (arr!47547 (Array (_ BitVec 32) (_ BitVec 64))) (size!48098 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98527)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98527 (_ BitVec 32)) SeekEntryResult!11822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457518 (= res!987901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47547 a!2862) j!93) mask!2687) (select (arr!47547 a!2862) j!93) a!2862 mask!2687) lt!638682))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457518 (= lt!638682 (Intermediate!11822 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!987906 () Bool)

(declare-fun e!819944 () Bool)

(assert (=> start!125162 (=> (not res!987906) (not e!819944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125162 (= res!987906 (validMask!0 mask!2687))))

(assert (=> start!125162 e!819944))

(assert (=> start!125162 true))

(declare-fun array_inv!36492 (array!98527) Bool)

(assert (=> start!125162 (array_inv!36492 a!2862)))

(declare-fun b!1457519 () Bool)

(declare-fun res!987900 () Bool)

(declare-fun e!819948 () Bool)

(assert (=> b!1457519 (=> (not res!987900) (not e!819948))))

(declare-fun e!819950 () Bool)

(assert (=> b!1457519 (= res!987900 e!819950)))

(declare-fun c!134323 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457519 (= c!134323 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!638681 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!638680 () array!98527)

(declare-fun lt!638678 () SeekEntryResult!11822)

(declare-fun b!1457520 () Bool)

(assert (=> b!1457520 (= e!819950 (= lt!638678 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638681 lt!638680 mask!2687)))))

(declare-fun b!1457521 () Bool)

(assert (=> b!1457521 (= e!819944 e!819953)))

(declare-fun res!987905 () Bool)

(assert (=> b!1457521 (=> (not res!987905) (not e!819953))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457521 (= res!987905 (= (select (store (arr!47547 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457521 (= lt!638680 (array!98528 (store (arr!47547 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48098 a!2862)))))

(declare-fun e!819949 () Bool)

(declare-fun b!1457522 () Bool)

(assert (=> b!1457522 (= e!819949 (and (or (= (select (arr!47547 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47547 a!2862) intermediateBeforeIndex!19) (select (arr!47547 a!2862) j!93))) (let ((bdg!53347 (select (store (arr!47547 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47547 a!2862) index!646) bdg!53347) (= (select (arr!47547 a!2862) index!646) (select (arr!47547 a!2862) j!93))) (= (select (arr!47547 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53347 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457523 () Bool)

(declare-fun e!819952 () Bool)

(assert (=> b!1457523 (= e!819948 (not e!819952))))

(declare-fun res!987909 () Bool)

(assert (=> b!1457523 (=> res!987909 e!819952)))

(assert (=> b!1457523 (= res!987909 (or (and (= (select (arr!47547 a!2862) index!646) (select (store (arr!47547 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47547 a!2862) index!646) (select (arr!47547 a!2862) j!93))) (= (select (arr!47547 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457523 e!819949))

(declare-fun res!987913 () Bool)

(assert (=> b!1457523 (=> (not res!987913) (not e!819949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98527 (_ BitVec 32)) Bool)

(assert (=> b!1457523 (= res!987913 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49088 0))(
  ( (Unit!49089) )
))
(declare-fun lt!638676 () Unit!49088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49088)

(assert (=> b!1457523 (= lt!638676 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457524 () Bool)

(assert (=> b!1457524 (= e!819945 e!819948)))

(declare-fun res!987902 () Bool)

(assert (=> b!1457524 (=> (not res!987902) (not e!819948))))

(assert (=> b!1457524 (= res!987902 (= lt!638678 (Intermediate!11822 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457524 (= lt!638678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638681 mask!2687) lt!638681 lt!638680 mask!2687))))

(assert (=> b!1457524 (= lt!638681 (select (store (arr!47547 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457525 () Bool)

(declare-fun res!987904 () Bool)

(declare-fun e!819951 () Bool)

(assert (=> b!1457525 (=> res!987904 e!819951)))

(declare-fun lt!638677 () (_ BitVec 32))

(assert (=> b!1457525 (= res!987904 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638677 (select (arr!47547 a!2862) j!93) a!2862 mask!2687) lt!638682)))))

(declare-fun e!819946 () Bool)

(declare-fun b!1457526 () Bool)

(declare-fun lt!638683 () SeekEntryResult!11822)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98527 (_ BitVec 32)) SeekEntryResult!11822)

(assert (=> b!1457526 (= e!819946 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638677 intermediateAfterIndex!19 lt!638681 lt!638680 mask!2687) lt!638683)))))

(declare-fun b!1457527 () Bool)

(declare-fun res!987899 () Bool)

(assert (=> b!1457527 (=> (not res!987899) (not e!819949))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98527 (_ BitVec 32)) SeekEntryResult!11822)

(assert (=> b!1457527 (= res!987899 (= (seekEntryOrOpen!0 (select (arr!47547 a!2862) j!93) a!2862 mask!2687) (Found!11822 j!93)))))

(declare-fun b!1457528 () Bool)

(declare-fun res!987898 () Bool)

(assert (=> b!1457528 (=> (not res!987898) (not e!819944))))

(declare-datatypes ((List!34228 0))(
  ( (Nil!34225) (Cons!34224 (h!35574 (_ BitVec 64)) (t!48929 List!34228)) )
))
(declare-fun arrayNoDuplicates!0 (array!98527 (_ BitVec 32) List!34228) Bool)

(assert (=> b!1457528 (= res!987898 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34225))))

(declare-fun b!1457529 () Bool)

(assert (=> b!1457529 (= e!819946 (not (= lt!638678 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638677 lt!638681 lt!638680 mask!2687))))))

(declare-fun b!1457530 () Bool)

(declare-fun res!987915 () Bool)

(assert (=> b!1457530 (=> (not res!987915) (not e!819944))))

(assert (=> b!1457530 (= res!987915 (and (= (size!48098 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48098 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48098 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457531 () Bool)

(declare-fun res!987903 () Bool)

(assert (=> b!1457531 (=> (not res!987903) (not e!819944))))

(assert (=> b!1457531 (= res!987903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457532 () Bool)

(assert (=> b!1457532 (= e!819950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638681 lt!638680 mask!2687) (seekEntryOrOpen!0 lt!638681 lt!638680 mask!2687)))))

(declare-fun b!1457533 () Bool)

(assert (=> b!1457533 (= e!819951 true)))

(declare-fun lt!638679 () Bool)

(assert (=> b!1457533 (= lt!638679 e!819946)))

(declare-fun c!134324 () Bool)

(assert (=> b!1457533 (= c!134324 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457534 () Bool)

(declare-fun res!987911 () Bool)

(assert (=> b!1457534 (=> (not res!987911) (not e!819944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457534 (= res!987911 (validKeyInArray!0 (select (arr!47547 a!2862) j!93)))))

(declare-fun b!1457535 () Bool)

(declare-fun res!987907 () Bool)

(assert (=> b!1457535 (=> (not res!987907) (not e!819944))))

(assert (=> b!1457535 (= res!987907 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48098 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48098 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48098 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457536 () Bool)

(declare-fun res!987910 () Bool)

(assert (=> b!1457536 (=> (not res!987910) (not e!819945))))

(assert (=> b!1457536 (= res!987910 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47547 a!2862) j!93) a!2862 mask!2687) lt!638682))))

(declare-fun b!1457537 () Bool)

(assert (=> b!1457537 (= e!819952 e!819951)))

(declare-fun res!987912 () Bool)

(assert (=> b!1457537 (=> res!987912 e!819951)))

(assert (=> b!1457537 (= res!987912 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638677 #b00000000000000000000000000000000) (bvsge lt!638677 (size!48098 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457537 (= lt!638677 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457537 (= lt!638683 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638681 lt!638680 mask!2687))))

(assert (=> b!1457537 (= lt!638683 (seekEntryOrOpen!0 lt!638681 lt!638680 mask!2687))))

(declare-fun b!1457538 () Bool)

(declare-fun res!987914 () Bool)

(assert (=> b!1457538 (=> (not res!987914) (not e!819948))))

(assert (=> b!1457538 (= res!987914 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457539 () Bool)

(declare-fun res!987908 () Bool)

(assert (=> b!1457539 (=> (not res!987908) (not e!819944))))

(assert (=> b!1457539 (= res!987908 (validKeyInArray!0 (select (arr!47547 a!2862) i!1006)))))

(assert (= (and start!125162 res!987906) b!1457530))

(assert (= (and b!1457530 res!987915) b!1457539))

(assert (= (and b!1457539 res!987908) b!1457534))

(assert (= (and b!1457534 res!987911) b!1457531))

(assert (= (and b!1457531 res!987903) b!1457528))

(assert (= (and b!1457528 res!987898) b!1457535))

(assert (= (and b!1457535 res!987907) b!1457521))

(assert (= (and b!1457521 res!987905) b!1457518))

(assert (= (and b!1457518 res!987901) b!1457536))

(assert (= (and b!1457536 res!987910) b!1457524))

(assert (= (and b!1457524 res!987902) b!1457519))

(assert (= (and b!1457519 c!134323) b!1457520))

(assert (= (and b!1457519 (not c!134323)) b!1457532))

(assert (= (and b!1457519 res!987900) b!1457538))

(assert (= (and b!1457538 res!987914) b!1457523))

(assert (= (and b!1457523 res!987913) b!1457527))

(assert (= (and b!1457527 res!987899) b!1457522))

(assert (= (and b!1457523 (not res!987909)) b!1457537))

(assert (= (and b!1457537 (not res!987912)) b!1457525))

(assert (= (and b!1457525 (not res!987904)) b!1457533))

(assert (= (and b!1457533 c!134324) b!1457529))

(assert (= (and b!1457533 (not c!134324)) b!1457526))

(declare-fun m!1345535 () Bool)

(assert (=> start!125162 m!1345535))

(declare-fun m!1345537 () Bool)

(assert (=> start!125162 m!1345537))

(declare-fun m!1345539 () Bool)

(assert (=> b!1457518 m!1345539))

(assert (=> b!1457518 m!1345539))

(declare-fun m!1345541 () Bool)

(assert (=> b!1457518 m!1345541))

(assert (=> b!1457518 m!1345541))

(assert (=> b!1457518 m!1345539))

(declare-fun m!1345543 () Bool)

(assert (=> b!1457518 m!1345543))

(assert (=> b!1457534 m!1345539))

(assert (=> b!1457534 m!1345539))

(declare-fun m!1345545 () Bool)

(assert (=> b!1457534 m!1345545))

(declare-fun m!1345547 () Bool)

(assert (=> b!1457531 m!1345547))

(declare-fun m!1345549 () Bool)

(assert (=> b!1457526 m!1345549))

(assert (=> b!1457536 m!1345539))

(assert (=> b!1457536 m!1345539))

(declare-fun m!1345551 () Bool)

(assert (=> b!1457536 m!1345551))

(declare-fun m!1345553 () Bool)

(assert (=> b!1457539 m!1345553))

(assert (=> b!1457539 m!1345553))

(declare-fun m!1345555 () Bool)

(assert (=> b!1457539 m!1345555))

(declare-fun m!1345557 () Bool)

(assert (=> b!1457529 m!1345557))

(declare-fun m!1345559 () Bool)

(assert (=> b!1457532 m!1345559))

(declare-fun m!1345561 () Bool)

(assert (=> b!1457532 m!1345561))

(assert (=> b!1457525 m!1345539))

(assert (=> b!1457525 m!1345539))

(declare-fun m!1345563 () Bool)

(assert (=> b!1457525 m!1345563))

(declare-fun m!1345565 () Bool)

(assert (=> b!1457522 m!1345565))

(declare-fun m!1345567 () Bool)

(assert (=> b!1457522 m!1345567))

(declare-fun m!1345569 () Bool)

(assert (=> b!1457522 m!1345569))

(declare-fun m!1345571 () Bool)

(assert (=> b!1457522 m!1345571))

(assert (=> b!1457522 m!1345539))

(assert (=> b!1457521 m!1345565))

(declare-fun m!1345573 () Bool)

(assert (=> b!1457521 m!1345573))

(declare-fun m!1345575 () Bool)

(assert (=> b!1457523 m!1345575))

(assert (=> b!1457523 m!1345565))

(assert (=> b!1457523 m!1345569))

(assert (=> b!1457523 m!1345571))

(declare-fun m!1345577 () Bool)

(assert (=> b!1457523 m!1345577))

(assert (=> b!1457523 m!1345539))

(declare-fun m!1345579 () Bool)

(assert (=> b!1457528 m!1345579))

(declare-fun m!1345581 () Bool)

(assert (=> b!1457537 m!1345581))

(assert (=> b!1457537 m!1345559))

(assert (=> b!1457537 m!1345561))

(declare-fun m!1345583 () Bool)

(assert (=> b!1457520 m!1345583))

(declare-fun m!1345585 () Bool)

(assert (=> b!1457524 m!1345585))

(assert (=> b!1457524 m!1345585))

(declare-fun m!1345587 () Bool)

(assert (=> b!1457524 m!1345587))

(assert (=> b!1457524 m!1345565))

(declare-fun m!1345589 () Bool)

(assert (=> b!1457524 m!1345589))

(assert (=> b!1457527 m!1345539))

(assert (=> b!1457527 m!1345539))

(declare-fun m!1345591 () Bool)

(assert (=> b!1457527 m!1345591))

(push 1)

