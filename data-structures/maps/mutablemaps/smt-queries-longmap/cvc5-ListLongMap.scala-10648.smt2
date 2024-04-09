; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125068 () Bool)

(assert start!125068)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1454416 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98433 0))(
  ( (array!98434 (arr!47500 (Array (_ BitVec 32) (_ BitVec 64))) (size!48051 (_ BitVec 32))) )
))
(declare-fun lt!637549 () array!98433)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!637554 () (_ BitVec 64))

(declare-fun e!818535 () Bool)

(declare-datatypes ((SeekEntryResult!11775 0))(
  ( (MissingZero!11775 (index!49491 (_ BitVec 32))) (Found!11775 (index!49492 (_ BitVec 32))) (Intermediate!11775 (undefined!12587 Bool) (index!49493 (_ BitVec 32)) (x!131131 (_ BitVec 32))) (Undefined!11775) (MissingVacant!11775 (index!49494 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98433 (_ BitVec 32)) SeekEntryResult!11775)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98433 (_ BitVec 32)) SeekEntryResult!11775)

(assert (=> b!1454416 (= e!818535 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637554 lt!637549 mask!2687) (seekEntryOrOpen!0 lt!637554 lt!637549 mask!2687)))))

(declare-fun b!1454417 () Bool)

(declare-fun e!818538 () Bool)

(declare-fun e!818540 () Bool)

(assert (=> b!1454417 (= e!818538 e!818540)))

(declare-fun res!985367 () Bool)

(assert (=> b!1454417 (=> (not res!985367) (not e!818540))))

(declare-fun a!2862 () array!98433)

(declare-fun lt!637555 () SeekEntryResult!11775)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98433 (_ BitVec 32)) SeekEntryResult!11775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454417 (= res!985367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47500 a!2862) j!93) mask!2687) (select (arr!47500 a!2862) j!93) a!2862 mask!2687) lt!637555))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454417 (= lt!637555 (Intermediate!11775 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454418 () Bool)

(declare-fun e!818539 () Bool)

(declare-fun e!818534 () Bool)

(assert (=> b!1454418 (= e!818539 e!818534)))

(declare-fun res!985366 () Bool)

(assert (=> b!1454418 (=> res!985366 e!818534)))

(declare-fun lt!637548 () (_ BitVec 32))

(assert (=> b!1454418 (= res!985366 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637548 #b00000000000000000000000000000000) (bvsge lt!637548 (size!48051 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454418 (= lt!637548 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637553 () SeekEntryResult!11775)

(assert (=> b!1454418 (= lt!637553 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637554 lt!637549 mask!2687))))

(assert (=> b!1454418 (= lt!637553 (seekEntryOrOpen!0 lt!637554 lt!637549 mask!2687))))

(declare-fun b!1454419 () Bool)

(declare-fun lt!637551 () SeekEntryResult!11775)

(assert (=> b!1454419 (= e!818535 (= lt!637551 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637554 lt!637549 mask!2687)))))

(declare-fun e!818536 () Bool)

(declare-fun b!1454420 () Bool)

(assert (=> b!1454420 (= e!818536 (not (= lt!637551 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637548 lt!637554 lt!637549 mask!2687))))))

(declare-fun b!1454421 () Bool)

(declare-fun e!818543 () Bool)

(assert (=> b!1454421 (= e!818543 e!818538)))

(declare-fun res!985371 () Bool)

(assert (=> b!1454421 (=> (not res!985371) (not e!818538))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454421 (= res!985371 (= (select (store (arr!47500 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454421 (= lt!637549 (array!98434 (store (arr!47500 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48051 a!2862)))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1454422 () Bool)

(declare-fun e!818541 () Bool)

(assert (=> b!1454422 (= e!818541 (and (or (= (select (arr!47500 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47500 a!2862) intermediateBeforeIndex!19) (select (arr!47500 a!2862) j!93))) (let ((bdg!53071 (select (store (arr!47500 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47500 a!2862) index!646) bdg!53071) (= (select (arr!47500 a!2862) index!646) (select (arr!47500 a!2862) j!93))) (= (select (arr!47500 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53071 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454423 () Bool)

(declare-fun res!985377 () Bool)

(assert (=> b!1454423 (=> (not res!985377) (not e!818543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454423 (= res!985377 (validKeyInArray!0 (select (arr!47500 a!2862) j!93)))))

(declare-fun b!1454424 () Bool)

(declare-fun res!985372 () Bool)

(assert (=> b!1454424 (=> (not res!985372) (not e!818543))))

(assert (=> b!1454424 (= res!985372 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48051 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48051 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48051 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454425 () Bool)

(declare-fun res!985368 () Bool)

(assert (=> b!1454425 (=> (not res!985368) (not e!818543))))

(assert (=> b!1454425 (= res!985368 (and (= (size!48051 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48051 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48051 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454426 () Bool)

(declare-fun res!985364 () Bool)

(assert (=> b!1454426 (=> (not res!985364) (not e!818541))))

(assert (=> b!1454426 (= res!985364 (= (seekEntryOrOpen!0 (select (arr!47500 a!2862) j!93) a!2862 mask!2687) (Found!11775 j!93)))))

(declare-fun b!1454427 () Bool)

(declare-fun res!985376 () Bool)

(assert (=> b!1454427 (=> (not res!985376) (not e!818543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98433 (_ BitVec 32)) Bool)

(assert (=> b!1454427 (= res!985376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454428 () Bool)

(declare-fun res!985374 () Bool)

(assert (=> b!1454428 (=> (not res!985374) (not e!818543))))

(assert (=> b!1454428 (= res!985374 (validKeyInArray!0 (select (arr!47500 a!2862) i!1006)))))

(declare-fun b!1454429 () Bool)

(declare-fun e!818542 () Bool)

(assert (=> b!1454429 (= e!818542 (not e!818539))))

(declare-fun res!985375 () Bool)

(assert (=> b!1454429 (=> res!985375 e!818539)))

(assert (=> b!1454429 (= res!985375 (or (and (= (select (arr!47500 a!2862) index!646) (select (store (arr!47500 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47500 a!2862) index!646) (select (arr!47500 a!2862) j!93))) (= (select (arr!47500 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454429 e!818541))

(declare-fun res!985360 () Bool)

(assert (=> b!1454429 (=> (not res!985360) (not e!818541))))

(assert (=> b!1454429 (= res!985360 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48994 0))(
  ( (Unit!48995) )
))
(declare-fun lt!637550 () Unit!48994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48994)

(assert (=> b!1454429 (= lt!637550 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454430 () Bool)

(assert (=> b!1454430 (= e!818536 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637548 intermediateAfterIndex!19 lt!637554 lt!637549 mask!2687) lt!637553)))))

(declare-fun b!1454431 () Bool)

(assert (=> b!1454431 (= e!818534 true)))

(declare-fun lt!637552 () Bool)

(assert (=> b!1454431 (= lt!637552 e!818536)))

(declare-fun c!134041 () Bool)

(assert (=> b!1454431 (= c!134041 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454432 () Bool)

(declare-fun res!985361 () Bool)

(assert (=> b!1454432 (=> (not res!985361) (not e!818540))))

(assert (=> b!1454432 (= res!985361 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47500 a!2862) j!93) a!2862 mask!2687) lt!637555))))

(declare-fun b!1454433 () Bool)

(assert (=> b!1454433 (= e!818540 e!818542)))

(declare-fun res!985373 () Bool)

(assert (=> b!1454433 (=> (not res!985373) (not e!818542))))

(assert (=> b!1454433 (= res!985373 (= lt!637551 (Intermediate!11775 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454433 (= lt!637551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637554 mask!2687) lt!637554 lt!637549 mask!2687))))

(assert (=> b!1454433 (= lt!637554 (select (store (arr!47500 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454434 () Bool)

(declare-fun res!985365 () Bool)

(assert (=> b!1454434 (=> (not res!985365) (not e!818542))))

(assert (=> b!1454434 (= res!985365 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454435 () Bool)

(declare-fun res!985362 () Bool)

(assert (=> b!1454435 (=> (not res!985362) (not e!818543))))

(declare-datatypes ((List!34181 0))(
  ( (Nil!34178) (Cons!34177 (h!35527 (_ BitVec 64)) (t!48882 List!34181)) )
))
(declare-fun arrayNoDuplicates!0 (array!98433 (_ BitVec 32) List!34181) Bool)

(assert (=> b!1454435 (= res!985362 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34178))))

(declare-fun res!985363 () Bool)

(assert (=> start!125068 (=> (not res!985363) (not e!818543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125068 (= res!985363 (validMask!0 mask!2687))))

(assert (=> start!125068 e!818543))

(assert (=> start!125068 true))

(declare-fun array_inv!36445 (array!98433) Bool)

(assert (=> start!125068 (array_inv!36445 a!2862)))

(declare-fun b!1454436 () Bool)

(declare-fun res!985369 () Bool)

(assert (=> b!1454436 (=> (not res!985369) (not e!818542))))

(assert (=> b!1454436 (= res!985369 e!818535)))

(declare-fun c!134042 () Bool)

(assert (=> b!1454436 (= c!134042 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454437 () Bool)

(declare-fun res!985370 () Bool)

(assert (=> b!1454437 (=> res!985370 e!818534)))

(assert (=> b!1454437 (= res!985370 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637548 (select (arr!47500 a!2862) j!93) a!2862 mask!2687) lt!637555)))))

(assert (= (and start!125068 res!985363) b!1454425))

(assert (= (and b!1454425 res!985368) b!1454428))

(assert (= (and b!1454428 res!985374) b!1454423))

(assert (= (and b!1454423 res!985377) b!1454427))

(assert (= (and b!1454427 res!985376) b!1454435))

(assert (= (and b!1454435 res!985362) b!1454424))

(assert (= (and b!1454424 res!985372) b!1454421))

(assert (= (and b!1454421 res!985371) b!1454417))

(assert (= (and b!1454417 res!985367) b!1454432))

(assert (= (and b!1454432 res!985361) b!1454433))

(assert (= (and b!1454433 res!985373) b!1454436))

(assert (= (and b!1454436 c!134042) b!1454419))

(assert (= (and b!1454436 (not c!134042)) b!1454416))

(assert (= (and b!1454436 res!985369) b!1454434))

(assert (= (and b!1454434 res!985365) b!1454429))

(assert (= (and b!1454429 res!985360) b!1454426))

(assert (= (and b!1454426 res!985364) b!1454422))

(assert (= (and b!1454429 (not res!985375)) b!1454418))

(assert (= (and b!1454418 (not res!985366)) b!1454437))

(assert (= (and b!1454437 (not res!985370)) b!1454431))

(assert (= (and b!1454431 c!134041) b!1454420))

(assert (= (and b!1454431 (not c!134041)) b!1454430))

(declare-fun m!1342809 () Bool)

(assert (=> b!1454435 m!1342809))

(declare-fun m!1342811 () Bool)

(assert (=> b!1454418 m!1342811))

(declare-fun m!1342813 () Bool)

(assert (=> b!1454418 m!1342813))

(declare-fun m!1342815 () Bool)

(assert (=> b!1454418 m!1342815))

(declare-fun m!1342817 () Bool)

(assert (=> b!1454429 m!1342817))

(declare-fun m!1342819 () Bool)

(assert (=> b!1454429 m!1342819))

(declare-fun m!1342821 () Bool)

(assert (=> b!1454429 m!1342821))

(declare-fun m!1342823 () Bool)

(assert (=> b!1454429 m!1342823))

(declare-fun m!1342825 () Bool)

(assert (=> b!1454429 m!1342825))

(declare-fun m!1342827 () Bool)

(assert (=> b!1454429 m!1342827))

(assert (=> b!1454417 m!1342827))

(assert (=> b!1454417 m!1342827))

(declare-fun m!1342829 () Bool)

(assert (=> b!1454417 m!1342829))

(assert (=> b!1454417 m!1342829))

(assert (=> b!1454417 m!1342827))

(declare-fun m!1342831 () Bool)

(assert (=> b!1454417 m!1342831))

(declare-fun m!1342833 () Bool)

(assert (=> start!125068 m!1342833))

(declare-fun m!1342835 () Bool)

(assert (=> start!125068 m!1342835))

(assert (=> b!1454416 m!1342813))

(assert (=> b!1454416 m!1342815))

(assert (=> b!1454422 m!1342819))

(declare-fun m!1342837 () Bool)

(assert (=> b!1454422 m!1342837))

(assert (=> b!1454422 m!1342821))

(assert (=> b!1454422 m!1342823))

(assert (=> b!1454422 m!1342827))

(declare-fun m!1342839 () Bool)

(assert (=> b!1454433 m!1342839))

(assert (=> b!1454433 m!1342839))

(declare-fun m!1342841 () Bool)

(assert (=> b!1454433 m!1342841))

(assert (=> b!1454433 m!1342819))

(declare-fun m!1342843 () Bool)

(assert (=> b!1454433 m!1342843))

(assert (=> b!1454432 m!1342827))

(assert (=> b!1454432 m!1342827))

(declare-fun m!1342845 () Bool)

(assert (=> b!1454432 m!1342845))

(declare-fun m!1342847 () Bool)

(assert (=> b!1454427 m!1342847))

(assert (=> b!1454421 m!1342819))

(declare-fun m!1342849 () Bool)

(assert (=> b!1454421 m!1342849))

(declare-fun m!1342851 () Bool)

(assert (=> b!1454430 m!1342851))

(declare-fun m!1342853 () Bool)

(assert (=> b!1454428 m!1342853))

(assert (=> b!1454428 m!1342853))

(declare-fun m!1342855 () Bool)

(assert (=> b!1454428 m!1342855))

(assert (=> b!1454437 m!1342827))

(assert (=> b!1454437 m!1342827))

(declare-fun m!1342857 () Bool)

(assert (=> b!1454437 m!1342857))

(declare-fun m!1342859 () Bool)

(assert (=> b!1454420 m!1342859))

(declare-fun m!1342861 () Bool)

(assert (=> b!1454419 m!1342861))

(assert (=> b!1454426 m!1342827))

(assert (=> b!1454426 m!1342827))

(declare-fun m!1342863 () Bool)

(assert (=> b!1454426 m!1342863))

(assert (=> b!1454423 m!1342827))

(assert (=> b!1454423 m!1342827))

(declare-fun m!1342865 () Bool)

(assert (=> b!1454423 m!1342865))

(push 1)

